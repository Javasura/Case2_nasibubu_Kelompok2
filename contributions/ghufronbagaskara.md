# Individual Contribution Report

**Name:** Ghufron Bagaskara  
**Student ID:** 235150200111012
**Group:** 2
**Case:** Malware Analysis – Telegram C2 Malware  
**Date:** 28 November 2025

---

## 1. My Role in the Team

**Primary Role:** Technical Malware Analyst  
**Responsibilities:**

- Setting up a secure Windows 10 virtual analysis environment
- Installing and configuring all static analysis tools
- Downloading, extracting, and preparing malware samples
- Producing technical evidence: strings, PeStudio, hashes, IoCs
- Supporting team members with debugging and tool usage
- Contributing core content to team report

---

## 2. Tasks Completed

### Week 1: Setup & Initial Analysis

- [x] **Task 1: Setup VM & folder structure**

  - Time spent: 2 hours
  - Output: VM ready with isolated network, folders:
    - `C:\Users\imperion\fordig\tools`
    - `C:\Users\imperion\fordig\samples`

- [x] **Task 2: Install Sysinternals, PeStudio, Python**
  - Time spent: 2 hours
  - Output: Working tools:
    - Sysinternals Suite
    - PeStudio
    - Python + pefile

---

### Week 2: Deep Analysis

- [x] **Task 3: Download and extract malware sample from MalwareBazaar**

  - Time spent: 1.5 hours
  - Output: Malware sample SHA256:
    `c91267225764229b8a282e938b02a1408997d0d1e5558ca841a009bade568027`

- [x] **Task 4: Perform Static Analysis (Strings + PeStudio)**
  - Time spent: 3 hours
  - Output:
    - Full strings.txt (found SQL, URLs, PDB path)
    - PeStudio findings (Indicators, imports, metadata)
    - Complete IoC list

---

### Week 3: Report & Presentation

- [x] **Task 5: Build IoC List (CSV)**

  - Time spent: 2 hours
  - Output:
    - IoC CSV
    - Categorized artifacts (URL, IP, SQL, filenames)

- [x] **Task 6: Assist team with final report structure and evidence**
  - Time spent: 1 hour
  - Output:
    - Screenshots
    - Technical explanation
    - Analysis notes

**Total Time Invested:** 11.5 hours

---

## 3. Tools & Techniques Used

### Tools

1. **Sysinternals Strings**

   - Purpose: Extract readable strings from the malware
   - Usage:
     ```
     strings64.exe -n 6 malware.exe > strings.txt
     ```
   - Output:
     - Telegram API URL
     - SQL queries
     - PDB debug path

2. **PeStudio**

   - Purpose: Static malware triage
   - Usage:
     - Indicators tab
     - Strings tab
     - Imports tab
   - Output:
     - Suspicious API usage
     - Metadata (original filename, compilation info)
     - Indicators flagged in red

3. **PowerShell**
   - Purpose: Tool installation, downloading, hashing
   - Commands:
     ```
     Get-FileHash -Algorithm SHA256
     Invoke-WebRequest …
     ```

### Analysis Techniques

- Static malware analysis
- IoC extraction
- Metadata & PDB tracking
- URL / Domain fingerprinting
- DLL import function analysis

---

## 4. My Key Findings

### **Finding 1: Telegram Command-and-Control (C2)**

- **Description:** Malware communicates with Telegram Bot API
- **Evidence:** Strings output →  
  `https://api.telegram.org/bot/sendDocument`
- **Significance:** Confirms exfiltration channel
- **My contribution:** Identified URL + domain + matched IP address

---

### **Finding 2: Suspicious SQL Operations**

- **Description:** Malware interacts with internal DB tables
- **Evidence:** Strings:
  - `select * from Mesajlar1`
  - `delete from Oda101`
- **Significance:** Could alter or steal stored messages
- **My contribution:** Detected SQL queries during strings analysis

---

### **Finding 3: PDB Path Exposure**

- **Description:** Malware contains debug file path
- **Evidence:**  
  `C:\Users\Administrator\Desktop\Client\Temp\...\HnaZtD.pdb`
- **Significance:** Reveals developer environment
- **My contribution:** Extracted PDB from PeStudio

---

## 5. Report Sections I Contributed To

| Section             | My Contribution                | Percentage |
| ------------------- | ------------------------------ | ---------- |
| Executive Summary   | IoC overview                   | 20%        |
| Technical Analysis  | Full static analysis           | 50%        |
| Evidence Collection | Strings, screenshots, metadata | 60%        |
| Timeline            | VM setup → analysis flow       | 30%        |
| IoC List            | **Created entire IoC dataset** | **100%**   |
| Recommendations     | Based on C2 behavior           | 20%        |
| Presentation Slides | Static analysis section        | 30%        |

---

## 6. Collaboration Activities

### Team Meetings Attended

- **Meeting 1:** Planning environment setup
- **Meeting 2:** Malware acquisition & analysis flow
- **Meeting 3:** Finalize IoC list and report

### Communication

- **Primary channel:** WhatsApp
- **Response rate:** Fast (within minutes)
- **Proactive communication:**
  - Provided progress updates
  - Shared working commands
  - Helped resolve tool installation errors

### Helping Team Members

- Assisted Danish in creating
  - IoC CSV
  - YARA rules
  - Snort rules
- Reviewed screenshots and report content

---

## 7. Challenges & Solutions

### Challenge 1: DNS Not Resolved When Downloading Tools

- **Problem:** `The remote name could not be resolved`
- **Impact:** Tools could not be downloaded
- **Solution:** Switched network mode temporarily
- **Outcome:** Successfully downloaded Sysinternals & PeStudio

### Challenge 2: Malware ZIP Could Not Be Extracted

- **Problem:** Windows Defender kept blocking extraction
- **Impact:** Analysis was delayed
- **Solution:** Fully disabled Windows Defender inside VM
- **Outcome:** Malware extracted successfully

### Challenge 3: Strings Output Too Long to Inspect

- **Problem:** Hard to manually search IoCs
- **Solution:** Used PeStudio for cross-verification
- **Outcome:** Identified IoCs efficiently

---

## 8. Skills Developed

### Technical Skills

- Static malware analysis (improved significantly)
- Sysinternals Suite usage
- PowerShell automation
- IoC extraction methodology

### Soft Skills

- Problem-solving
- Technical communication
- Report writing

---

## 9. What I Learned

### Technical Knowledge

1. Extracting IoCs from binaries
2. Reading suspicious metadata
3. Using static analysis tools effectively

### Forensic Methodology

1. Importance of isolated VM
2. Correct analysis sequence
3. Evidence documentation practices

### Team Collaboration

1. Importance of clear communication
2. Dividing tasks increases efficiency

---

## 10. Self-Evaluation

### Strengths

- Strong technical execution
- Identified majority of IoCs
- Efficient debugging of environment issues

### Areas for Improvement

- Automating more steps
- Faster environment setup
- Improving time estimation

### Overall Self-Assessment

**Contribution Level:** High  
**Effort Level:** 9/10  
**Quality of Work:** 9/10  
**Reason:** I completed most technical sections and provided the largest chunk of analysis used by the team.

---

## 11. Peer Evaluation

(Optional)

---

## 12. Evidence of Work

- Screenshot: PeStudio indicators
- Screenshot: Strings.txt IoCs
- File: IoC CSV
- Script: Hash + Strings commands

---

## 13. Presentation Contribution

- Slides: Static analysis, IoC list
- Duration: 3–4 minutes
- Key points: C2 flow, SQL findings

---

## 14. Additional Comments

This project increased my confidence in malware analysis, troubleshooting, and collaborating within a team.

---

## Declaration

I declare that the information provided in this contribution report is accurate and reflects my individual work and contribution.

**Signature:** Ghufron Bagaskara
**Date:** 29-11-2025
