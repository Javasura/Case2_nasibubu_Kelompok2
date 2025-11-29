Individual Contribution Report

Name: Muhammad Bagas Anugrah

Student ID: 235150201111008

Group: 2

Case: FORNSIC INVESTIGATION REPORT CASE BASE 2 – MALWARE ANALYSIS

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

[✅] Setup lingkungan analisis (VM, network isolation, snapshot)

[✅] Menjalankan sample malware untuk runtime observation

[✅] Monitoring network behavior menggunakan Wireshark

[✅] Monitoring process, threads, dan registry changes menggunakan Process Hacker

[✅] Dokumentasi hasil analisis ke laporan kelompok

3. Tools & Techniques Used
Tool	Purpose	Output
VM Sandbox	Eksekusi malware aman	Runtime observation
Wireshark	Monitoring komunikasi jaringan	Capture traffic (.pcapng)
Process Hacker	Identifikasi suspicious process & threads	Behavior evidence
Screenshots	Dokumentasi hasil analisis	Evidence for report
4. Key Findings

Tidak ditemukan network connection outbound atau inbound selama analisis runtime.

Malware tidak menunjukkan indikasi komunikasi C2, exfiltration, ataupun request ke URL/domain tertentu.

Berdasarkan behavior di VM, malware lebih berorientasi pada aktivitas lokal dibandingkan komunikasi jaringan.

Hasil ini konsisten dengan analisis tim IoC dan static analysis yang menunjukkan tidak adanya networking library call aktif.

5. Contribution Summary
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

6. Collaboration

Berkomunikasi rutin melalui WhatsApp Group

Sinkronisasi hasil dengan tim IoC, static analysis, dan dokumentasi

Mendukung integrasi hasil network analysis ke final report

7. Challenges & Solutions
Challenge	Solution
Tidak ada traffic yang muncul di Wireshark	Melakukan verifikasi ulang VM network mode dan eksekusi ulang sample
Identifikasi process malware	Cross-check melalui hashing dan behavior logs
8. Skills Developed

Dynamic malware execution

Network behavior monitoring

Process and behavior tracking

Dokumentasi forensik

9. Self-Evaluation

Effort Level: 9/10
Work Quality: 9/10
Contribution Level: High

Saya berkontribusi pada bagian analisis runtime dan network monitoring yang mendukung kesimpulan akhir tim.

Declaration

I confirm that this report reflects my personal contribution to the project.

Signature: Muhammad Bagas Anugrah
Date: 29 November 2025