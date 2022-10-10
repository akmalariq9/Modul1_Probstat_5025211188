# Modul1_Probstat_5025211188
Repository untuk pengerjaan Praktikum Modul 1 Probabilitas dan Statistika

## Identitas
| Nama                      | NRP        |
|---------------------------|------------|
| Akmal Ariq Romadhon       | 5025211188 |

## Soal Nomor 1.
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
> 
-  **Soal 1A :** Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi? ( Distribusi Geometrik )
  
**Penyelesaian Soal 1A :**  Diselesaikan menggunakan fungsi `dgeom()`. Setelah melakukan perhitungan, didapatkan peluang sebesar **0.1024**. Dalam fungsi dibawah, `variabel x` menunjukkan orang yang tidak hadir dalam acara vaksinasi, dan `variabel p` merupakan parameter yang menunjukkan peluang kehadiran orang dalam acara vaksinasi. Berikut merupakan code yang digunakan untuk mengerjakan soal 1A.

```R
p = 0.2
x = 3
P <- dgeom(x, p)
P
```

Berikut merupakan hasil pengerjaan soal 1A menggunakan RStudio.
![1a](https://user-images.githubusercontent.com/109916703/194874631-da8af077-bdbe-4a29-8238-e163647a0b33.png)

 - **Soal 1B :** Mean Distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( Distribusi Geometrik acak () == 3 )

**Penyelesaian Soal 1B :**  Diselesaikan menggunakan rumus mean serta parameter angka acak dari distribusi geometrik ( Sesuai soal ). Dalam menyelesaikan soal ini, digunakan fungsi `rgeom()`. Setelah dijalankan, hasil yang muncul nilainya selalu berubah. Dalam percobaan yang saya lakukan, salah satu angka yang muncul adalah **0.1045**.

```R
mean(rgeom(n = 10000, prob = p) == 3)
```

Berikut merupakan hasil pengerjaan soal 1B menggunakan RStudio.

![1b](https://user-images.githubusercontent.com/109916703/194887839-42178eaf-42c1-4917-95a2-be7a02d49f06.png)

   - **Soal 1C :** Bandingkan Hasil poin A dan B, apa kesimpulan yang bisa didapatkan?

**Penyelesaian Soal 1C :** Setelah dilakukan percobaan, didapatkan hasil yang berbeda antara soal 1A dan 1B. Pada soal 1A, hasil yang muncul adalah **0.1024**, sedangkan pada soal 1B hasil yang muncul adalah **0.1045**.    

Perbedaan lain yang dapat dilihat adalah pada soal 1A, nilai yang muncul akan selalu tetap dan pada soal 1B, nilai yang muncul akan selalu berubah. Hal itu disebabkan karena pada soal 1A, nilai distribusi geometrik yang digunakan adalah tetap. Sebaliknya, pada soal 1B didapatkan hasil yang selalu berubah karena nilai tersebut dihasilkan dari rata - rata dari semua peluang yang dapat terjadi. Fungsi `rgeom()` yang digunakan pada soal 1B juga akan menghasilkan nilai peluang distribusi yang random 
-- Link Gambar yang aku masih tidak tau cara memasukkannya --