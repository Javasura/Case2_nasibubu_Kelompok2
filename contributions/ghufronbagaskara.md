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
- Contributing core technical content to the team report  

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
  - Output: Tools fully installed:
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
    - Complete strings.txt (SQL, URLs, domains, PDB path)
    - PeStudio indicators & imports
    - Full IoC list extracted manually

---

### Week 3: Report & Technical Support

- [x] **Task 5: Build IoC List (CSV)**  
  - Time spent: 2 hours  
  - Output:
    - IoC CSV
    - Categorized artifacts (URL, IP, SQL, strings, filenames)

- [x] **Task 6: Assist team with technical evidence & report details**  
  - Time spent: 1 hour  
  - Output:
    - Screenshots
    - Technical explanation for findings
    - Troubleshooting assistance

**Total Time Invested:** 11.5 hours  

---

## 3. Tools & Techniques Used

### Tools

1. **Sysinternals Strings**  
   - Purpose: Extract readable strings from malware  
   - Usage:  
     ```
     strings64.exe -n 6 malware.exe > strings.txt
     ```  
   - Output:  
     - Telegram API URL  
     - SQL queries  
     - Debug path (PDB)

2. **PeStudio**  
   - Purpose: Static malware triage  
   - Usage: Indicators, imports, strings  
   - Output: Suspicious API usage, metadata, red-flag indicators

3. **PowerShell**
   - Purpose: Install tools, download samples, generate hashes  
   - Commands:  
     ```
     Get-FileHash -Algorithm SHA256
     Invoke-WebRequest ...
     ```

### Analysis Techniques

- Static malware analysis  
- IoC extraction methodology  
- Metadata & PDB path investigation  
- Domain & URL fingerprinting  
- DLL import behavior inspection  

---

## 4. My Key Findings

### **Finding 1: Telegram Command-and-Control (C2)**
- **Description:** Malware communicates using Telegram Bot API  
- **Evidence:**  
  `https://api.telegram.org/bot/sendDocument`  
- **Significance:** Confirms external exfiltration channel  
- **My Contribution:** Identified URL + supporting domains + related IP  

---

### **Finding 2: Suspicious SQL Operations**
- **Description:** Malware executes SQL to read/delete data  
- **Evidence:**  
  - `select * from Mesajlar1`  
  - `delete from Oda101`  
- **Significance:** Indicates manipulation of message records  
- **My Contribution:** Discovered SQL artifacts via strings analysis  

---

### **Finding 3: Exposed Debug Information (PDB)**
- **Description:** Malware leaks debug build path  
- **Evidence:**  
  `...\HnaZtD.pdb`  
- **Significance:** Provides insight into developer environment  
- **My Contribution:** Extracted PDB path from PeStudio  

---

## 5. Report Sections I Contributed To

| Section              | My Contribution                 | Percentage |
|---------------------|----------------------------------|------------|
| Executive Summary   | Technical IoC overview           | 20%        |
| Technical Analysis  | Full static analysis             | 50%        |
| Evidence Collection | Strings output, PE metadata      | 60%        |
| Timeline            | Technical flow (VM → analysis)   | 30%        |
| IoC List            | **Created entire IoC dataset**   | **100%**   |
| Recommendations     | Suggested mitigations            | 20%        |


---

## 6. Collaboration Activities

### Team Meetings Attended
- Planning VM & tools setup  
- Malware acquisition & analysis alignment  
- Final IoC & report verification  

### Communication
- **Primary channel:** WhatsApp  
- **Response rate:** Fast (minutes)  
- **Support provided:**  
  - Troubleshooting commands  
  - Tool download assistance  
  - Validation of findings  

### Helping Team Members
- Assisted Danish with:
  - IoC breakdown  
  - Technical clarification for rules  
  - Reviewing screenshots  

---

## 7. Challenges & Solutions

### Challenge 1: DNS Issues During Download
- **Problem:** `The remote name could not be resolved`
- **Solution:** Reconfigured VM network  
- **Outcome:** Tools downloaded successfully

### Challenge 2: Malware ZIP Blocked by Windows Defender
- **Problem:** Extraction denied  
- **Solution:** Fully disabled Windows Defender  
- **Outcome:** Malware successfully extracted

### Challenge 3: Massive Strings Output
- **Problem:** Difficult to manually search IoCs  
- **Solution:** Used PeStudio to cross‑filter  
- **Outcome:** IoCs identified efficiently  

---

## 8. Skills Developed

### Technical Skills
- Static malware analysis  
- Sysinternals & PeStudio usage  
- PowerShell automation  
- Hashing & IoC extraction  

### Soft Skills
- Problem-solving  
- Technical explanation  
- Structured documentation  

---

## 9. What I Learned

### Technical Knowledge
1. Extracting IoCs from binaries  
2. Understanding suspicious metadata  
3. Using static analysis tools  

### Forensic Methodology
1. Importance of isolated VM  
2. Proper analysis flow  
3. Documentation of evidence  

### Team Collaboration
1. Efficient communication  
2. Role-based task execution  

---

## 10. Self-Evaluation

### Strengths
- Strong technical debugging ability  
- Found majority of IoCs  
- Completed critical technical tasks  

### Areas for Improvement
- Speed of initial environment setup  
- Automating data extraction  
- Better time management  

### Overall Self-Assessment
**Contribution Level:** High  
**Effort Level:** 9/10  
**Quality of Work:** 9/10  

---

## 11. Peer Evaluation
(Optional)

---

## 12. Evidence of Work
- PeStudio indicator screenshots  
- strings.txt results  
- IoC CSV file  
- Hash & strings command outputs  

---

## 14. Additional Comments

This project significantly improved my confidence and capability in static malware analysis and technical teamwork.

---

## Declaration

I declare that the information provided in this contribution report is accurate and reflects my individual work and contribution.

**Signature:** Ghufron Bagaskara  
**Date:** 29-11-2025
