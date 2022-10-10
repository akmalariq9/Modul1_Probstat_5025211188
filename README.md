# Modul1_Probstat_5025211188
Repository untuk pengerjaan Praktikum Modul 1 Probabilitas dan Statistika

## Identitas
| Nama                      | NRP        |
|---------------------------|------------|
| Akmal Ariq Romadhon       | 5025211188 |

## Soal Nomor 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
> 
-  **Soal 1A : Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi? ( Distribusi Geometrik )**
  
**Penyelesaian Soal 1A :**\
Soal 1A dapat diselesaikan menggunakan fungsi `dgeom()`. Setelah melakukan perhitungan, didapatkan peluang sebesar **0.1024**. Dalam fungsi di bawah, `variabel x` menunjukkan orang yang tidak hadir dalam acara vaksinasi, dan `variabel p` merupakan parameter yang menunjukkan peluang kehadiran orang dalam acara vaksinasi. Berikut merupakan code yang digunakan untuk mengerjakan soal 1A.

```R
p = 0.2
x = 3
P <- dgeom(x, p)
P
```

Berikut merupakan hasil pengerjaan soal 1A menggunakan RStudio.
![1a](https://user-images.githubusercontent.com/109916703/194874631-da8af077-bdbe-4a29-8238-e163647a0b33.png)

 - **Soal 1B : Mean Distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( Distribusi Geometrik acak () == 3 )**

**Penyelesaian Soal 1B :**\
Soal 1B dapat diselesaikan menggunakan rumus mean serta parameter angka acak dari distribusi geometrik ( Sesuai soal ). Dalam menyelesaikan soal ini, digunakan fungsi `rgeom()`. Setelah dijalankan, hasil yang muncul nilainya selalu berubah. Dalam percobaan yang saya lakukan, salah satu angka yang muncul adalah **0.1045**.

```R
mean(rgeom(n = 10000, prob = p) == 3)
```

Berikut merupakan hasil pengerjaan soal 1B menggunakan RStudio.

![1b](https://user-images.githubusercontent.com/109916703/194887839-42178eaf-42c1-4917-95a2-be7a02d49f06.png)

   - **Soal 1C : Bandingkan Hasil poin A dan B, apa kesimpulan yang bisa didapatkan?**

**Penyelesaian Soal 1C :**\
Setelah dilakukan percobaan, didapatkan hasil yang berbeda antara soal 1A dan 1B. Pada soal 1A, hasil yang muncul adalah `0.1024`, sedangkan pada soal 1B hasil yang muncul adalah `0.1045`.    

Perbedaan lain yang dapat dilihat adalah pada soal 1A, nilai yang muncul akan selalu tetap dan pada soal 1B, nilai yang muncul akan selalu berubah. Hal itu disebabkan karena pada soal 1A, nilai distribusi geometrik yang digunakan adalah tetap. Sebaliknya, pada soal 1B didapatkan hasil yang selalu berubah karena nilai tersebut dihasilkan dari rata-rata dari semua peluang yang dapat terjadi. Fungsi `rgeom()` yang digunakan pada soal 1B juga akan menghasilkan nilai peluang distribusi yang random\

   - **Soal 1D : Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama**

**Penyelesaian Soal 1D :**\
Soal 1D dapat diselesaikan menggunakan fungsi `hist()` yang ada pada RStudio. Parameter yang digunakan ialah angka acak dari Fungsi Distribusi Geometrik. Berikut merupakan code yang digunakan dalam menyelesaikan soal 1D.

```R
n = 10000
hist(rgeom(n, prob = p), main = 'Histogram Distribusi Geometrik')
```
Berikut merupakan Grafik Histogram Distribusi Geometrik yang dibuat menggunakan RStudio.
![1d](https://user-images.githubusercontent.com/109916703/194894072-49415203-368b-41c4-8df2-caa0921b683c.png)

- **Soal 1E : Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.**

**Penyelesaian Soal 1E :**\
Soal 1E dapat diselesaikan menggunakan rumus mean dan varians. Setelah dilakukan perhitungan, didapatkan hasil nilai mean adalah **5** dan nilai varians adalah **20**. Berikut adalah code yang digunakan dalam menyelesaikan soal 1E.

```R
mean = 1 / p
```

```R
variance = ( 1 - p ) / ( p^2 )
```
Berikut merupakan  hasil pengerjaan soal 1E menggunakan aplikasi RStudio.
![1e](https://user-images.githubusercontent.com/109916703/194898733-381c377d-c593-40fe-9a52-9fcce12324bc.png)

## Soal Nomor 2
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

- **Soal 2A : Peluang terdapat 4 pasien yang sembuh.**
  
**Penyelesaian Soal 2A :**\
Soal 2A dapat diselesaikan menggunakan cara Distribusi Binomial. Dalam RStudio, dapat dimanfaatkan fungsi `dbinom()` untuk menghitung hasil dari Distribusi Binomial tersebut. Dalam fungsi di bawah, `variabel n` menunjukkan data jumlah pasien, yaitu 20. Sedangkan `variabel p` menunjukkan peluang penderita covid19 bisa sembuh, yaitu 0.2. `variabel x` menunjukkan peluang yang dicari, yaitu 4. Setelah dilakukan perhitungan, didapatkan nilai **0.2181994**. Berikut adalah code yang digunakan dalam penyelesaian soal 2A

```R
n = 20
p = 0.2
x = 4
dbinom(x, n, p)
```

Berikut merupakan hasil pengerjaan soal nomor 2A menggunakan RStudio.
![2a](https://user-images.githubusercontent.com/109916703/194903490-770fcf2d-a9b2-41ab-9547-adbad1f23ccb.png)

- **Soal 2B : Gambarkan grafik histogram berdasarkan kasus tersebut**

**Penyelesaian soal 2B :**\
Sama seperti soal 1D, untuk membuat grafik histogram dapat digunakan fungsi `hist()`. Parameter yang digunakan merupakan angka random dari fungsi Distribusi Binomial itu sendiri. Berikut adalah code untuk menyelesaikan soal 2B

```R
hist(rbinom(x, n, prob = p), xlab = "X", ylab = "Frekuensi", main = "Histogram of Binomial")
```
Berikut merupakan Grafik Histogram yang dibuat menggunakan RStudio.
![2b](https://user-images.githubusercontent.com/109916703/194921081-85813e00-ffab-44c9-8640-fcf961cc00be.png)