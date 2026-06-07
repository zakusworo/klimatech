---
title: "AI dan Emisi Karbon: Berapa Banyak Listrik yang Dipakai GPT?"
date: 2026-06-07T08:00:00+08:00
draft: false
tags: ["tech", "energy", "climate"]
categories: ["Tech"]
coverImage: "/images/posts/ai-datacenter.jpg"
summary: "Angka kasar yang jarang dibahas vendor AI. Plus, apa yang bisa dilakukan praktisi kecil untuk mengurangi overhead."
---

Setiap kali kamu mengirim prompt ke ChatGPT, Claude, atau Gemini, ada **listrik yang dipakai**, dan listrik itu, di sebagian besar dunia, masih berasal dari **pembangkit yang menghasilkan CO₂**.

Mari kita lihat angkanya.

{{< figure src="/images/posts/servers.jpg" caption="Data center modern, pusat komputasi yang menjalankan inference LLM setiap detik. Foto: [Taylor Vick](https://unsplash.com/@tvick) di Unsplash." >}}

## Berapa listrik yang dipakai satu prompt?

Jawabannya bervariasi, tergantung model dan panjang respons. Tapi studi dari UC Berkeley (dengan asumsi model skala GPT-3) memberikan estimasi:

| Aksi | Estimasi energi | Setara CO₂ |
|---|---|---|
| 1 prompt ke LLM kecil | ~1-2 Wh | ~1 gram CO₂ |
| 1 prompt ke LLM besar (GPT-4, Claude Opus) | ~5-20 Wh | ~5-20 gram CO₂ |
| Training GPT-3 (sekali, seumur hidup) | ~1.300 MWh | ~550 ton CO₂ |
| Training GPT-4 (estimasi) | ~50.000+ MWh | ~20.000+ ton CO₂ |

Untuk konteks:

- 1 prompt ke LLM besar ≈ **menyalakan lampu LED 10W selama 1-2 jam**.
- 1 prompt ke LLM besar ≈ **mengisi baterai HP sekali**.
- 20 gram CO₂ per prompt × 10 juta prompt per hari = **200 ton CO₂ per hari** (hanya dari satu layanan AI).

## Mengapa training jauh lebih boros dari inference?

**Training** adalah saat model "belajar" dari dataset. Ini butuh waktu berhari-hari hingga berminggu-minggu di ribuan GPU (biasanya Nvidia H100 atau A100), semuanya berjalan 24/7. Setelah training selesai, model "membeku" dan siap dipakai.

**Inference** adalah saat model menjawab prompt kamu. Ini terjadi setiap kali ada request, dan setiap request butuh komputasi.

Training terjadi **sekali** (atau beberapa kali per tahun). Inference terjadi **jutaan kali per hari**. Jadi dalam total emisi, inference biasanya mendominasi, bukan training seperti yang sering diberitakan media.

## Yang lebih penting dari satu prompt

Yang harus kita khawatirkan bukan **satu prompt** kamu. Yang harus kita khawatirkan adalah **total konsumsi AI global yang tumbuh eksponensial**.

Menurut International Energy Agency (IEA), konsumsi listrik data center (termasuk AI) di dunia pada 2024 mencapai **~460 TWh**, sekitar **2% dari total listrik global**. Diproyeksi naik ke **~945 TWh pada 2030**, setara dengan seluruh konsumsi listrik Jepang saat ini.

Pertumbuhan ini didorong oleh:

- 🔥 Adopsi AI generatif (ChatGPT, Midjourney, Copilot, dll)
- 📹 Video streaming & encoding
- ☁️ Migrasi layanan ke cloud
- 🪙 Cryptocurrency mining (meskipun ini tren menurun)

## Apa yang bisa kita lakukan?

Sebagai praktisi teknis, ada beberapa hal yang bisa kita kerjakan:

### 1. Pilih model yang sesuai

Tidak semua prompt butuh GPT-4. Kalau kamu bisa pakai model kecil (Haiku, Mini, Flash, atau self-hosted LLaMA), **emisi turun 10-50x** untuk hasil yang cukup. Banyak task sederhana (klasifikasi, summarization pendek, code completion) jalan bagus di model kecil.

### 2. Cache dan reuse hasil

Seringkali prompt yang sama diminta berulang-ulang. Pakai caching (Redis, in-memory) untuk hasil yang sama. Ini bukan cuma soal performa, juga soal emisi.

### 3. Prompt lebih pendek

Token yang masuk dan keluar dihitung. Prompt 200 token yang menghasilkan 50 token output = 250 token diproses. Prompt 50 token yang menghasilkan 50 token = 100 token diproses. **Lebih dari 2x lebih hemat.**

### 4. Batch requests

Kalau bisa, batch beberapa request kecil jadi satu request besar, lalu pisah hasilnya. Ini lebih efisien dibanding multiple round-trip API calls.

### 5. Pilih provider yang pakai renewable

Beberapa provider data center (seperti **Google Cloud** dengan carbon-intelligent computing, atau **Cloudflare Workers AI**) sudah mulai pakai listrik 100% renewable dan bahkan match request ke region dengan surplus energi hijau.

{{< figure src="/images/posts/wind-turbine.jpg" caption="Energi angin adalah salah satu sumber listrik rendah karbon yang semakin banyak dipakai data center. Foto: [Karsten Würth](https://unsplash.com/@karsten_wuerth) di Unsplash." >}}

### 6. Edukasi pengguna

Bangun UX yang **transparan** soal biaya komputasi. Tampilkan: *"Pertanyaan ini mungkin memakan energi setara menyalakan lampu selama X menit"*, edukasi kecil yang bantu pengguna paham.

## Bukan soal "jangan pakai AI"

Saya tidak menulis ini untuk membuat kita berhenti pakai AI. AI punya potensi besar untuk **mempercepat solusi climate**, mulai dari optimasi grid listrik, material science untuk baterai lebih baik, sampai monitoring deforestasi.

Tapi yang penting: **pakai secukupnya, bukan sebanyak-banyaknya.** Setiap prompt adalah sumber daya yang dipakai, listrik, air (untuk cooling data center), dan mineral (untuk GPU).

Yang bertanggung jawab bukan hanya vendor AI. **Kita, sebagai pengguna dan pembangun, juga bagian dari ini.**

---

*Foto sampul oleh [Alexandre Debiève](https://unsplash.com/@alexkixa) di Unsplash.*

**Baca juga:**

- [Mengapa Baterai Lithium Masih Jadi Paradoks Iklim](/posts/baterai-lithium-paradoks-iklim/)
- [Halo, Dunia! Kenapa mulai nulis soal climate × tech](/posts/halo-dunia/)
