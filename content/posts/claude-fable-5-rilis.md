---
title: "Claude Fable 5 Resmi Dirilis: Seberapa Besar Lompatan dari Opus 4.8?"
date: 2026-06-10T11:00:00+08:00
draft: false
tags: ["tech", "ai", "climate"]
categories: ["Tech"]
coverImage: "/images/posts/claude-fable-5.jpg"
summary: "Anthropic merilis Fable 5, model kelas Mythos pertama yang bisa dipakai publik, dengan harga di bawah setengah Mythos Preview. Performanya dilaporkan mengungguli semua model Claude sebelumnya, tapi ada jaring pengaman yang ketat untuk cybersecurity dan biologi."
---

Tanggal 9 Juni 2026, Anthropic merilis **Claude Fable 5**, sekaligus dengan **Claude Mythos 5** untuk kelompok kecil defender siber. Fable 5 adalah model **kelas Mythos pertama yang dibuka untuk publik**, dengan jaring pengaman yang menanganinya secara konservatif di topik-topik berisiko.

Menurut Anthropic, kapabilitas Fable 5 melampaui semua model yang pernah mereka rilis secara umum. Fable 5 diklaim **state-of-the-art di hampir semua benchmark** yang diuji, dengan keunggulan yang makin besar di tugas yang makin panjang dan makin kompleks. Tapi ini bukan rilis besar-besaran tanpa pagar. Lebih dari 5% sesi rata-rata akan melihat query-nya dialihkan ke Claude Opus 4.8.

{{< figure src="/images/posts/claude-fable-5.jpg" caption="Representasi visual dari kekuatan AI modern. Foto: [Steve Johnson](https://unsplash.com/@steve_j) di Unsplash." >}}

## Fitur Utama Fable 5

### 1. Software engineering yang panjang dan otonom
Fable 5 dirancang untuk **tugas berdurasi panjang** yang biasanya butuh seorang engineer selama berminggu-minggu. Stripe melaporkan bahwa Fable 5 mampu melakukan migrasi **codebase Ruby 50 juta baris** dalam sehari, pekerjaan yang biasanya butuh satu tim selama lebih dari dua bulan. Di benchmark **Cognition FrontierCode** (standar kode produksi berkualitas tinggi), Fable 5 mendapat skor tertinggi di antara frontier models, bahkan pada tingkat effort medium.

### 2. Knowledge work dan reasoning
Di **Hebbia Finance Benchmark** untuk reasoning tingkat senior, Fable 5 meraih skor tertinggi dengan peningkatan substansial di reasoning berbasis dokumen, interpretasi chart dan tabel, serta problem solving. IMC menambahkan bahwa Fable 5 hampir menyapu bersih evaluasi trading-analysis mereka, termasuk factual lookup, conceptual reasoning, root-cause analysis, dan expected-value analysis.

### 3. Vision sebagai state-of-the-art
Fable 5 dilaporkan sebagai model SOTA baru untuk tugas-tugas berbasis **visi**. Ia bisa mengekstrak angka presisi dari figure ilmiah detail dan membangun ulang source code sebuah web app hanya dari screenshot. Hal kecil yang menyenangkan: Fable 5 berhasil **menyelesaikan game Pokémon FireRed hanya dengan harness berbasis visi** saja, sesuatu yang model Claude sebelumnya tidak bisa.

### 4. Memory dan long-context
Fable 5 tetap fokus lintas **jutaan token** dalam tugas jangka panjang dan bisa menyempurnakan outputnya sendiri lewat catatan. Saat diuji bermain **Slay the Spire**, akses ke memory berbasis file meningkatkan performanya tiga kali lipat dibanding Opus 4.8, dan ia mencapai final act tiga kali lebih sering.

## Perbandingan dengan Model Sebelumnya

| Model | Tanggal Rilis | Input ($/MToken) | Output ($/MToken) | Status |
|---|---|---|---|---|
| Claude Haiku 4.5 | - | 1 | 5 | Publik |
| Claude Sonnet 4.6 | - | 3 | 15 | Publik |
| Claude Opus 4.8 | 28 Mei 2026 | 5 | 25 | Publik |
| Claude Fable 5 | 9 Juni 2026 | 10 | 50 | Publik (dengan safeguards) |
| Claude Mythos 5 | 9 Juni 2026 | 10 | 50 | Glasswing saja |
| Claude Mythos Preview | April 2026 | >20 | >100 | Glasswing saja |

*Harga Fable 5 dan Mythos 5 dikonfirmasi oleh Anthropic. "Kurang dari setengah harga Mythos Preview" adalah klaim resmi dari pengumuman 9 Juni 2026.*

Performa Fable 5 secara umum dilaporkan mengungguli Opus 4.8 di hampir semua benchmark internal dan eksternal yang dirujuk Anthropic. Bandingkan dengan Sonnet 4.5 (rilis lebih lama), Fable 5 adalah **lompatan dua tingkat ke atas**, dengan biaya yang lebih tinggi tapi masih setengah dari Mythos Preview.

## Implikasi untuk Industri

### 1. AI agent yang benar-benar otonom
Fable 5 + Claude Code menunjukkan bahwa frontier AI sekarang bisa menangani **tugas multi-hari secara mandiri** dengan konsistensi yang masuk akal. Ini mengubah harapan untuk software engineering, customer support, dan data analysis: dari "AI sebagai co-pilot" menjadi "AI sebagai anggota tim yang bisa di-delegate-kan pekerjaan".

### 2. Cybersecurity sebagai medan baru
Anthropic mengakui secara eksplisit: Fable 5 punya **kapabilitas cybersecurity yang signifikan**. Itulah kenapa Mythos 5 tetap dibatasi untuk partner Glasswing. Untuk pertama kalinya, rilis frontier AI disertai *acknowledgement* resmi bahwa modelnya bisa disalahgunakan untuk cyberattack, lengkap dengan program bug bounty dan red-teaming eksternal. Ini adalah **precedent** untuk industri: rilis AI frontier akan makin sering datang dengan classifier yang menolak query berisiko.

### 3. Climate angle: lebih banyak compute, lebih banyak emisi
Setiap leap di kapabilitas AI berarti lebih banyak **listrik yang dipakai** untuk training dan inference. Fable 5 diklaim lebih token-efficient dari model sebelumnya, tapi kalau adopinya meledak, total konsumsi listrik untuk AI di seluruh dunia akan terus naik. Di artikel sebelumnya saya sudah membahas bahwa data center menyumbang sekitar **2% listrik global** dan diproyeksikan naik ke **~945 TWh pada 2030**.

Di sisi lain, model seperti Fable 5 juga dipakai untuk **akselerasi riset climate**: optimasi grid listrik, material science untuk baterai yang lebih baik, dan monitoring deforestasi adalah area di mana AI benar-benar memberikan nilai. Anthropic juga menyebut hasil dari **Mythos 5 dalam drug design** (akselerasi 10x untuk beberapa target protein) sebagai bukti potensi positif. Tapi trade-off ini nyata dan tidak otomatis teratasi. Kita harus **mendorong transparansi konsumsi energi per inference** dari setiap model frontier.

{{< figure src="/images/posts/servers.jpg" caption="Setiap lompatan kapabilitas AI berarti lebih banyak server dan lebih banyak listrik. Foto: [Taylor Vick](https://unsplash.com/@tvick) di Unsplash." >}}

## Penutup: Opini Zaku

Fable 5 adalah rilis yang solid. Bukan karena Fable 5 "paling pintar" (semua vendor frontier mengklaim itu), tapi karena Anthropic untuk pertama kalinya **secara eksplisit mengelola dual-use risk** dari model mereka sendiri. Safeguards yang secara otomatis mengalihkan query berisiko ke Opus 4.8, program bug bounty, dan retensi data 30 hari untuk analisis serangan adalah langkah yang saya harap diikuti OpenAI dan Google.

Yang saya tunggu bukan rilis yang lebih besar. Saya tunggu **transparansi energi per inference** dan **build-in mitigasi emisi** untuk setiap model frontier baru. Sampai itu datang, setiap pengumuman model baru juga berarti pengumuman tambahan untuk tagihan listrik global.

Tapi ya, terlepas dari itu semua, Fable 5 adalah lompatan yang mengesankan. Lihat saja: dari Sonnet 4.5 ke Opus 4.8 butuh berapa lama, dan sekarang Opus 4.8 sudah punya "kakak" yang bisa diakses publik. Pace-nya tidak melambat.

---

*Foto sampul oleh [Steve Johnson](https://unsplash.com/@steve_j) di Unsplash.*

**Baca juga:**

- [AI dan Emisi Karbon: Berapa Banyak Listrik yang Dipakai GPT?](/posts/ai-emisi-karbon-listrik-gpt/)
- [Mengapa Baterai Lithium Masih Jadi Paradoks Iklim](/posts/baterai-lithium-paradoks-iklim/)
