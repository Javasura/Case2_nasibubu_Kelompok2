Individual Contribution Report

Name: Muhammad Bagas Anugrah
Student ID: 235150201111008
Group: NASIBUBU
Case: FORENSIC INVESTIGATION REPORT CASE BASE 2 – MALWARE ANALYSIS
Date: 29 November 2025

1. My Role in the Team

Primary Role: Dynamic Analysis & Execution Monitoring

Responsibilities:

Menjalankan malware dalam lingkungan terisolasi (VM Sandbox)

Melakukan network monitoring menggunakan Wireshark

Mengobservasi process behavior menggunakan Process Hacker

Menghasilkan bukti screenshot terkait runtime behavior

Memberikan insight mengenai kemungkinan malware behavior berdasarkan hasil eksekusi

2. Tasks Completed
Week 1 – Environment Preparation

[✅] Task 1: Konfigurasi VM sebagai sandbox malware

Time spent: 1 hour

Output: Windows VM siap dengan tools forensic dan jaringan host-only

[✅] Task 2: Menyiapkan folder kerja & setup tools

Time spent: 30 minutes

Output: Folder MalwareLab/, Wireshark, Process Hacker terinstall dan siap digunakan

Week 2 – Malware Execution & Dynamic Analysis

[✅] Task 3: Menjalankan malware sample

Time spent: 1.5 hours

Output: Observasi awal terhadap eksekusi file di VM

[✅] Task 4: Network monitoring dengan Wireshark

Time spent: 2 hours

Output: Capture file (.pcapng), hasil analisis traffic, dan screenshot

[✅] Task 5: Process behavior tracking via Process Hacker

Time spent: 2 hours

Output: Screenshot process tree, loaded modules, handle behavior

Week 3 – Report Refinement

[✅] Task 6: Menulis hasil dynamic analysis

Time spent: 1.5 hours

Output: Section Network Analysis dan Runtime Behavior Summary untuk laporan final

Total Time Invested: 8 hours

3. Tools & Techniques Used
Tools
Tool	Purpose	Output
Wireshark	Network monitoring & traffic inspection	.pcapng file, no outbound activity
Process Hacker	Runtime process inspection	Screenshot process tree
VMware/VirtualBox	Secure malware sandbox	Isolated execution
PowerShell	File handling & execution environment	Execution logs & commands used
Analysis Techniques

Dynamic Analysis

Execution monitoring

Network packet inspection (PCAP review)

Process behavior analysis

4. My Key Findings
Finding 1 — No Network Activity Detected

Description: Malware tidak melakukan komunikasi jaringan setelah dieksekusi.

Evidence: Wireshark menunjukkan tidak ada koneksi keluar atau request ke domain/IP tertentu.

Significance: Indikasi bahwa malware:

Local-only malware

Dormant malware (butuh trigger atau argumen tertentu)

Non-network payload

My Contribution: Monitoring runtime dan pembayaran bukti screenshot hasil Wireshark.

Finding 2 — No Suspicious Process Chain

Description: Pada Process Hacker tidak terdapat indikasi child process, thread injection, atau behavior eksploitasi.

Evidence: Screenshot menunjukkan hanya executable utama berjalan tanpa spawn process tambahan.

Significance: Menguatkan hipotesis bahwa malware ini non-active, incomplete payload, atau requires external trigger.

My Contribution: Eksekusi dan dokumentasi hasil Process Hacker.

Finding 3 — Hidden Behavior Likely Requires Trigger

Description: Berdasarkan runtime behavior, malware tidak menunjukkan tindakan aktif meskipun berjalan sebagai executable.

Evidence: Tidak ada registry change, process persistence, network callback, atau file drop.

Significance: Malware kemungkinan termasuk kategori:

Dormant sample

Test/debug build

Component-based malware (bagian dari chain infection)

My Contribution: Analisis dan interpretasi dari dynamic execution result.

5. Report Sections I Contributed To

| Section | Contribution | Percentage |
|---------|-------------|-------------|
| Executive Summary | Ringkasan hasil IoC | 20% |
| Technical Analysis | IoC breakdown dan rules | 30% |
| Evidence Collection | IoC list, rule files | 40% |
| Network Analysis | **Wireshark monitoring, PCAP capture, dan dokumentasi hasil analisis jaringan** | **100%** |
| Timeline | Alur kerja dokumentasi | 20% |
| IoC List | Full creation and formatting | 20 |
| Recommendations | Deteksi dan monitoring | 20% |
| Presentation Slides | - | - |

6. Collaboration Activities
Team Meetings

Meeting 1: Setup sandbox and workflow alignment

Meeting 2: Sharing runtime execution findings

Meeting 3: Integrating final report

Communication

Channel: WhatsApp group

Response time: Fast (≤30 minutes)

Collaboration support:

Sharing live testing results

Confirming network analysis findings

7. Challenges & Solutions
Challenge 1 — Malware did not show visible behavior

Solution: Eksekusi berulang dengan monitoring tools

Outcome: Tetap tidak ada aktivitas, menjadi bagian dari hasil valid analisis

Challenge 2 — Process identification via Process Hacker

Solution: Cross-reference execution time and running process

Outcome: Screenshot valid malware runtime berhasil diperoleh

8. Skills Developed
Technical Skills

Dynamic malware analysis

Network packet inspection

Runtime behavior analysis

Soft Skills

Reporting and evidence documentation

Research interpretation

Technical coordination

9. What I Learned

Tidak semua malware langsung menunjukkan behaviour setelah dijalankan

Perlu kombinasi static + dynamic analysis sebelum menyimpulkan

Evidence-based analysis penting agar laporan tidak bias atau asumtif

10. Self-Evaluation

Contribution Level: High
Effort Level: 8/10
Work Quality: 8.5/10

Justification:
Saya berkontribusi langsung pada bagian paling riskan (dynamic execution) dengan output berbukti screenshot dan analisis.

11. Evidence of Work

Wireshark PCAP file

Screenshot Process Hacker

Folder runtime result

12. Additional Comments

Project ini membantu saya memahami workflow real malware dynamic analysis dan bagaimana menjaga kontrol terhadap lingkungan eksekusi dengan aman.

Declaration

Saya menyatakan bahwa isi laporan ini sesuai dengan kontribusi saya.

Signature: Muhammad Bagas Anugrah
Date: 29-11-2025