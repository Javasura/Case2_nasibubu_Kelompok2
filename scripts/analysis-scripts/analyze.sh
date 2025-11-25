#!/bin/bash

# ============================================================
#   STATIC ANALYSIS SCRIPT FOR WINDOWS EXE (KALI)
# ============================================================

# Check input file
if [ -z "$1" ]; then
    echo "Usage: ./analyze.sh <filename.exe>"
    exit 1
fi

FILE=$1
BASENAME=$(basename "$FILE")
OUTDIR="analysis_${BASENAME}"

mkdir -p "$OUTDIR"

echo "[+] Starting static analysis for: $FILE"
echo "[+] Output directory: $OUTDIR"
echo ""

# 1. File type
echo "[1] Checking file type..."
file "$FILE" > "$OUTDIR/filetype.txt"

# 2. Hashing
echo "[2] Generating hashes..."
md5sum "$FILE" > "$OUTDIR/md5.txt"
sha256sum "$FILE" > "$OUTDIR/sha256.txt"

# 3. Strings extraction
echo "[3] Extracting strings..."
strings "$FILE" > "$OUTDIR/strings.txt"

# 4. Metadata analysis
echo "[4] Extracting metadata with exiftool..."
exiftool "$FILE" > "$OUTDIR/metadata.txt"

# 5. Objdump (Windows PE include header, imports, section info)
echo "[5] Running objdump..."
objdump -x "$FILE" > "$OUTDIR/objdump_headers.txt"
objdump -d "$FILE" > "$OUTDIR/objdump_disasm.txt"

# 6. Radare2 rabin2 analysis
echo "[6] Running radare2 rabin2..."
rabin2 -I "$FILE" > "$OUTDIR/rabin2_info.txt"
rabin2 -zz "$FILE" > "$OUTDIR/rabin2_strings.txt"

# 7. Packer detection (UPX, Themida, Aspack, MPRESS, etc.)
echo "[8] Detecting packer signatures..."

echo "--- FILE SIGNATURE CHECK ---" > "$OUTDIR/packer_detection.txt"

# UPX
if grep -qi "UPX" "$OUTDIR/strings.txt"; then
    echo "[+] UPX detected" >> "$OUTDIR/packer_detection.txt"
fi

# MPRESS
if grep -qi "MPRESS" "$OUTDIR/strings.txt"; then
    echo "[+] MPRESS detected" >> "$OUTDIR/packer_detection.txt"
fi

# Themida
if grep -qi "Themida" "$OUTDIR/strings.txt"; then
    echo "[+] Themida detected" >> "$OUTDIR/packer_detection.txt"
fi

# ASPACK
if grep -qi "ASPack" "$OUTDIR/strings.txt"; then
    echo "[+] ASPack detected" >> "$OUTDIR/packer_detection.txt"
fi

# Default: If nothing detected
if ! grep -qiE "UPX|MPRESS|Themida|ASPack" "$OUTDIR/strings.txt"; then
    echo "[-] No common packer detected" >> "$OUTDIR/packer_detection.txt"
fi

echo ""
echo "[✓] Static analysis complete!"
echo "Results saved to: $OUTDIR"

