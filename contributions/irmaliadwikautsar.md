# Individual Contribution Report

**Name:** Irmalia Dwi Kautsar

**Student ID:** 235150200111013

**Group:** 2

**Case:** Malware Analysis – Telegram-Based Sample Behavior

**Date:** 29 November 2025

---

## 1. My Role in the Team

**Primary Role:** Dynamic Analysis & Execution Monitoring

**Responsibilities:**
- Menjalankan malware dalam lingkungan terisolasi (VM Sandbox)
- Melakukan network monitoring menggunakan Wireshark
- Mengobservasi process behavior menggunakan Process Hacker
- Mendokumentasikan hasil analisis runtime
- Memberikan insight terkait kemungkinan behavior berbasis eksekusi langsung

---

## 2. Tasks Completed

### Week 1 – Environment Setup

**[✅] Task 1: Setup Virtual Machine & Isolasi Jaringan**
- Time spent: 1 hour
- Output: VM sandbox siap untuk eksekusi malware

**[✅] Task 2: Konfigurasi monitoring tools (Wireshark & Process Hacker)**
- Time spent: 1 hour
- Output: Tools siap untuk runtime execution monitoring

### Week 2 – Dynamic Analysis Execution

**[✅] Task 3: Eksekusi malware dan monitoring jaringan via Wireshark**
- Time spent: 2 hours
- Output: PCAP capture, screenshot, dan log network behavior

**[✅] Task 4: Process behavior monitoring menggunakan Process Hacker**
- Time spent: 1 hour
- Output: Evidence perubahan proses, threads, dan aktivitas internal

### Week 3 – Documentation & Validation

**[✅] Task 5: Penyusunan dokumentasi hasil observasi runtime**
- Time spent: 2 hours
- Output: Section dynamic analysis untuk laporan kelompok

**[✅] Task 6: Cross-validation dengan hasil static analysis tim lain**
- Time spent: 1 hour
- Output: Final behaviour conclusion (no active network communication)

**Total Time Invested:** 8 hours

---

## 3. Tools & Techniques Used

### Tools

| Tool | Kegunaan | Output |
|------|----------|--------|
| VMware / Sandbox VM | Eksekusi malware aman | Isolated runtime |
| Wireshark | Analisis network traffic | PCAP + screenshot |
| Process Hacker | Monitoring proses & threads | Process evidence |
| VSCode & GitHub | Dokumentasi & commit repo | Markdown + evidence |

### Analysis Techniques
- Dynamic malware execution
- Network traffic monitoring & behavioral interpretation
- Process-level forensic observation
- Collaborative verification

---

## 4. Key Findings

### Finding 1: No Active Network Communication
- **Evidence:** Tidak ada outbound maupun inbound connection selama runtime
- **Interpretation:** Malware kemungkinan local-based atau membutuhkan trigger tambahan

### Finding 2: Process Execution Behavior
- **Evidence:** Malware berjalan dengan PID baru tanpa membuat child process yang mencurigakan
- **Significance:** Menunjukkan behavior pasif tanpa escalation saat runtime

### Finding 3: Matching dengan Static Indicators
- **Evidence:** Hasil dynamic cocok dengan hasil IoC tim lain (tidak ada URL, API call, atau C2 observable)
- **Significance:** Menguatkan asumsi malware dormant atau membutuhkan trigger eksternal

---

## 5. Contribution Summary

| Section | Contribution | Percentage |
|---------|--------------|------------|
| Dynamic Analysis | Eksekusi malware & analisis runtime | 40% |
| Process Observation | Process Hacker evidence | 25% |
| Network Analysis | Wireshark monitoring, PCAP capture, dan dokumentasi hasil analisis jaringan | 100% |
| Evidence Collection | Screenshot runtime & behavior notes | 25% |
| Documentation Support | Penulisan bagian laporan | 10% |
| Presentation Slides | - | - |

---

## 6. Collaboration Activities

- Follow-up analisis melalui WhatsApp Group
- Sinkronisasi hasil dengan tim IoC dan static analysis
- Menyediakan evidence untuk final report

---

## 7. Challenges & Solutions

| Challenge | Solution |
|-----------|----------|
| Tidak muncul network traffic saat eksekusi | Verifikasi ulang konfigurasi jaringan & repeat execution |
| Identifikasi proses malware | Dibantu hashing, behavior notes dan observasi runtime |

---

## 8. Skills Developed

### Technical
- Malware dynamic analysis
- Network forensic monitoring
- Runtime tracing & behavioral classification

### Soft Skills
- Collaboration & synchronous work
- Technical documentation
- Evidence-based reporting

---

## 9. What I Learned

Saya mempelajari bagaimana menjalankan malware dengan aman dalam lingkungan terisolasi, melakukan monitoring aktivitas jaringan, serta menganalisis output observasi runtime sebagai bagian dari forensic chain of evidence.

---

## 10. Self-Evaluation

- **Contribution Level:** High
- **Effort Level:** 9/10
- **Work Quality:** 9/10

---

## Declaration

Saya menyatakan bahwa laporan ini sesuai kontribusi saya dalam project.

**Signature:** Muhammad Bagas Anugrah

**Date:** 29 November 2025