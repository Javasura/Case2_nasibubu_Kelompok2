# Individual Contribution Report

**Name:** Nugraha Billy Viandy \
**Student ID:** 235150200111011 \
**Group:** 2 \
**Case:** Malware Analysis – Telegram C2 Malware \
**Date:** 28 November 2025

---

## 1. My Role in the Team

**Primary Role:** Dynamic Analysis Specialist

**Responsibilities:**

- Menjalankan sampel malware pada sandbox cloud untuk observasi perilaku runtime
- Memonitor perubahan file system, registry, proses, dan aktivitas jaringan
- Mendokumentasikan temuan perilaku malware sebagai dasar penyusunan IoC dan analisis teknis

---

## 2. Tasks Completed

### Week 1: Setup & Initial Analysis

- [x] Task 1: Persiapan lingkungan analisis (registrasi ANY.RUN, pengaturan komunikasi tim, pengumpulan file sample)
  - Time spent: 4 hours
  - Output: Akses sandbox aktif dan sampel siap dianalisis
- [x] Task 2: Studi perilaku awal malware melalui live sandbox playback
  - Time spent: 6 hours
  - Output: Catatan awal eksekusi, process tree, dan indikasi komunikasi jaringan

### Week 2: Deep Analysis

- [x] Task 3: Dynamic analysis lengkap pada Windows 10 sandbox (filesystem, registry, process behavior, network C2)

  - Time spent: 10 hours
  - Output: Log observasi eksekusi 300 detik, file PCAP, daftar perubahan sistem

- [x] Task 4: Ekstraksi indikator serangan (IoC) & interpretasi pola komunikasi ke Telegram C2
  - Time spent: 8 hours
  - Output: Daftar IP/Domain/URL, token Telegram API, dan pola eksfiltrasi data

### Week 3: Report & Presentation

- [x] Task 5: Penyusunan bagian laporan untuk dynamic analysis & network analysis

  - Time spent: 7 hours
  - Output: 2 bab laporan teknis + visualisasi process tree & network diagram

- [x] Task 6: Kontribusi untuk materi presentasi
  - Time spent: 3 hours
  - Output: 4 slide berisi ringkasan proses eksekusi, network C2, IoC, dan kesimpulan

**Total Time Invested:** 38 hours

---

## 3. Tools & Techniques Used

### Tools

1. **ANY.RUN**

   - Purpose: Menjalankan dan merekam perilaku malware secara real-time di sandbox cloud
   - Key features: Process tree, registry monitor, filesystem monitor, network packet capture
   - Output: Laporan sandbox PDF, PCAP jaringan, screenshot eksekusi

### Analysis Techniques

- **Behavioral analysis:** Observasi eksekusi malware untuk mengidentifikasi aksi aktual tanpa debugging kode

---

## 4. My Key Findings

### Finding 1: Eksfiltrasi data melalui Telegram API

- **Description:** Malware mengirimkan informasi sistem dan kredensial ke `api.telegram.org` menggunakan koneksi HTTPS
- **Evidence:** Log network & PCAP ANY.RUN
- **Significance:** Mengonfirmasi penggunaan Telegram sebagai Command-and-Control
- **My contribution:** Dokumentasi koneksi, API endpoint, dan status respons eksfiltrasi

### Finding 2: Credential harvesting sebelum eksfiltrasi

- **Description:** Malware mengakses sistem dan browser untuk mengumpulkan informasi pengguna
- **Evidence:** Observasi fingerprinting, registry read, dan aktivitas proses turunan
- **Significance:** Menunjukkan fungsi malware sebagai spyware tipe Agent Tesla
- **My contribution:** Menyusun daftar IoC relevan dan hubungannya dengan mekanisme pencurian data

---

## 5. Report Sections I Contributed To

| Section             | My Contribution                           | Percentage |
| ------------------- | ----------------------------------------- | ---------- |
| Executive Summary   | Menyediakan temuan teknis untuk ringkasan | 20%        |
| Technical Analysis  | Menulis bagian Dynamic Analysis           | 60%        |
| Evidence Collection | Dokumentasi screenshot & log sandbox      | 50%        |

---

## 6. Collaboration Activities

### Team Meetings Attended

- Meeting 1 (18 Nov): Pembagian peran & timeline — memberikan update kesiapan sandbox
- Meeting 2 (22 Nov): Sinkronisasi temuan teknis — mempresentasikan hasil dynamic analysis
- Meeting 3 (25 Nov): Finalisasi laporan — menyelaraskan analisis dengan struktur penulisan

### Communication

- **Primary channel:** WhatsApp
- **Response rate:** ±1 jam
- **Proactive communication:** Mengirim update temuan sandbox dan meminta validasi rekan tim terkait IoC

### Helping Team Members

- Membantu anggota lain memahami output process tree ANY.RUN
- Menjelaskan alur eksfiltrasi Telegram untuk bagian rekomendasi dan mitigation

---

## 7. Challenges & Solutions

### Challenge 1: Sandbox tidak mengekstrak ZIP secara otomatis

- **Impact:** Eksekusi malware tidak terjadi pada percobaan pertama
- **Solution:** Menggunakan opsi "Archive Password" dan menjalankan ulang sandbox
- **Outcome:** Payload berhasil dieksekusi dan direkam

### Challenge 2: Menyelaraskan temuan dynamic analysis ke format laporan

- **Impact:** Banyak hasil teknis yang tidak langsung cocok ke struktur template
- **Solution:** Merangkum temuan ke IoC, process tree, dan timeline secara ringkas
- **Outcome:** Bagian laporan lebih mudah dipahami dan konsisten

---

## 8. Skills Developed

### Technical Skills

- Dynamic malware analysis — meningkat dari dasar ke tingkat menengah
- Sandbox tools — memahami fitur ANY.RUN untuk monitoring granular

### Soft Skills

- Komunikasi teknis — menjelaskan hasil teknis ke rekan dengan latar berbeda
- Time management — mengerjakan analisis sesuai timeline ketat
- Adaptability — menyesuaikan teknik analisis ketika hasil awal tidak muncul

---

## 9. What I Learned

### Technical Knowledge

1. Cara malware melakukan fingerprinting sistem sebelum eksfiltrasi
2. Teknik penyamaran malware melalui proses turunan dan aplikasi terpercaya

### Forensic Methodology

1. Pentingnya korelasi antar log (proses, registry, jaringan) pada dynamic analysis
2. Validasi temuan sandbox menggunakan analisis jaringan tambahan

### Team Collaboration

1. Pembagian peran mempercepat investigasi
2. Dokumentasi rutin sangat membantu sinkronisasi antar anggota

---

## 10. Self-Evaluation

### Strengths in This Project

- Konsisten menyampaikan progres dan hasil analisis
- Detail dalam pencatatan bukti dan temuan
- Aktif membantu tim memahami aspek teknis

### Areas for Improvement

- Perlu meningkatkan otomasi analisis agar lebih efisien
- Perlu memperdalam analisis persistence pada registry
- Perlu melatih gaya visualisasi hasil agar lebih menarik

### Overall Self-Assessment

**Contribution Level:** High
**Effort Level:** 9/10
**Quality of Work:** 9/10

**Brief Justification:** Saya menyelesaikan seluruh bagian dynamic analysis tepat waktu, memberikan kontribusi besar pada timeline, dan technical analysis report, serta berperan aktif dalam membantu tim saat finalisasi laporan.

---

## 11. Peer Evaluation

(Opsional)

---

## 12. Evidence of Work

- File: Malware analysis Malware Sample.zip Malicious activity _ ANY.RUN - Malware Sandbox Online

---

## 13. Presentation Contribution

### Slides I Contributed To

- Slide 5: Process behavior

### My Presentation Section

- **Section:** Dynamic Analysis
- **Duration:** 4–6 minutes
- **Key points:** Awal eksekusi, perilaku sistem, komunikasi Telegram C2, kesimpulan

---

## 14. Additional Comments

Project ini membantu saya memahami peran malware analysis dalam digital forensics secara nyata, terutama bagaimana hasil dynamic analysis dapat mendorong pembuatan rekomendasi keamanan dan deteksi ancaman berbasis IoC dan pola jaringan.
