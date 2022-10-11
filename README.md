# Modul1_Probstat_5025211188
Repository untuk pengerjaan Praktikum Modul 1 Probabilitas dan Statistika

## Identitas
| Nama                      | NRP        |
|---------------------------|------------|
| Akmal Ariq Romadhon       | 5025211188 |

## Soal Nomor 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
> 
-  **Soal 1A : Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi? (Distribusi Geometrik)**

**Penyelesaian Soal 1A :**\
Soal 1A dapat diselesaikan menggunakan fungsi `dgeom()`. Setelah melakukan perhitungan, didapatkan peluang sebesar **0.1024**. Dalam fungsi di bawah, `variabel x` menunjukkan orang yang tidak hadir dalam acara vaksinasi, dan `variabel p` merupakan parameter yang menunjukkan peluang kehadiran orang dalam acara vaksinasi. Berikut merupakan code yang digunakan untuk mengerjakan soal 1A.

```R
p = 0.2
x = 3

P <- dgeom(x, p)
P
```

Berikut merupakan hasil pengerjaan soal 1A menggunakan RStudio.
![1a](https://user-images.githubusercontent.com/109916703/194931858-4f05541e-f0c2-40bc-bc80-40974c693ba1.png)

- **Soal 1B : Mean Distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 (Distribusi Geometrik acak () == 3)**

**Penyelesaian Soal 1B :**\
Soal 1B dapat diselesaikan menggunakan rumus mean serta parameter angka acak dari distribusi geometrik (Sesuai soal). Dalam menyelesaikan soal ini, digunakan fungsi `rgeom()`. Setelah dijalankan, hasil yang muncul nilainya selalu berubah. Dalam percobaan yang saya lakukan, salah satu angka yang muncul adalah **0.0748**.

```R
p = 0.2
x = 3
n = 10000

mean(rgeom(n, prob = p) == x)
```

Berikut merupakan hasil pengerjaan soal 1B menggunakan RStudio.

![1b](https://user-images.githubusercontent.com/109916703/194931948-b31c746d-c19e-460f-ac3d-4916f6bf7991.png)

- **Soal 1C : Bandingkan Hasil poin A dan B, apa kesimpulan yang bisa didapatkan?**
  
**Penyelesaian Soal 1C :**\
Setelah dilakukan percobaan, didapatkan hasil yang berbeda antara soal 1A dan 1B. Pada soal 1A, hasil yang muncul adalah `0.1024`, sedangkan pada soal 1B hasil yang muncul adalah `0.0748`.    

Perbedaan lain yang dapat dilihat adalah pada soal 1A, nilai yang muncul akan selalu tetap dan pada soal 1B, nilai yang muncul akan selalu berubah. Hal itu disebabkan karena pada soal 1A, nilai distribusi geometrik yang digunakan adalah tetap. Sebaliknya, pada soal 1B didapatkan hasil yang selalu berubah karena nilai tersebut dihasilkan dari rata-rata dari semua peluang yang dapat terjadi. Fungsi `rgeom()` yang digunakan pada soal 1B juga akan menghasilkan nilai peluang distribusi yang random\

- **Soal 1D : Histogram Distribusi Geometrik, peluang X = 3 gagal Sebelum Sukses Pertama**
  
**Penyelesaian Soal 1D :**\
Soal 1D dapat diselesaikan menggunakan fungsi `hist()` yang ada pada RStudio. Parameter yang digunakan ialah angka acak dari Fungsi Distribusi Geometrik. Berikut merupakan code yang digunakan dalam menyelesaikan soal 1D.

```R
p = 0.2
x = 3
n = 10000

hist(rgeom(n, prob = p), main = 'Histogram Distribusi Geometrik')
```
Berikut merupakan Grafik Histogram Distribusi Geometrik yang dibuat menggunakan RStudio.
![1d](https://user-images.githubusercontent.com/109916703/194894072-49415203-368b-41c4-8df2-caa0921b683c.png)

- **Soal 1E : Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.**
  
**Penyelesaian Soal 1E :**\
Soal 1E dapat diselesaikan menggunakan rumus mean dan varians. Setelah dilakukan perhitungan, didapatkan hasil nilai mean adalah **5** dan nilai varians adalah **20**. Berikut adalah code yang digunakan dalam menyelesaikan soal 1E.

```R
p = 0.2
x = 3
n = 10000

mean = 1 / p
variance = ( 1 - p ) / ( p ^ 2 )

mean
variance
```
Berikut merupakan  hasil pengerjaan soal 1E menggunakan aplikasi RStudio.
![1e](https://user-images.githubusercontent.com/109916703/194932119-ac064aba-2e0e-470c-ba7f-4d0d07655c84.png)

## Soal Nomor 2
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

- **Soal 2A : Peluang terdapat 4 pasien yang sembuh.**
  
**Penyelesaian Soal 2A :**\
Soal 2A dapat diselesaikan menggunakan cara Distribusi Binomial. Dalam RStudio, dapat dimanfaatkan fungsi `dbinom()` untuk menghitung hasil dari Distribusi Binomial tersebut. Dalam fungsi di bawah, `variabel n` menunjukkan data jumlah pasien, yaitu 20. Sedangkan `variabel p` menunjukkan peluang penderita covid19 bisa sembuh, yaitu 0.2. `variabel x` menunjukkan peluang yang dicari, yaitu 4. Setelah dilakukan perhitungan, didapatkan nilai **0.2181994**. Berikut adalah code yang digunakan dalam penyelesaian soal 2A.

```R
n = 20
p = 0.2
x = 4

dbinom(x, n, p)
```

Berikut merupakan hasil pengerjaan soal 2A menggunakan RStudio.
![2a](https://user-images.githubusercontent.com/109916703/194932783-b4af988a-7378-49ea-b5c0-e339b3c7ac5d.png)

- **Soal 2B : Gambarkan grafik histogram berdasarkan kasus tersebut!**
  
**Penyelesaian soal 2B :**\
Sama seperti soal 1D, untuk membuat grafik histogram dapat digunakan fungsi `hist()`. Parameter yang digunakan merupakan angka random dari fungsi Distribusi Binomial itu sendiri. Berikut adalah code untuk menyelesaikan soal 2B.

```R
n = 20
p = 0.2
x = 4

hist(rbinom(x, n, prob = p), xlab = "x", ylab = "Frekuensi", main = "Grafik Histogram")
```
Berikut merupakan Grafik Histogram yang dibuat menggunakan RStudio.
![2b](https://user-images.githubusercontent.com/109916703/194922390-ace56bf0-47cb-4784-b7f3-cf983885f2ea.png)

- **Soal 2C : Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.**
  
**Penyelesaian soal 2C :**\
Dalam menyelesaikan soal 2C, dibutuhkan 2 rumus. Setelah melakukan perhitungan, didapatkan nilai rataan adalah **4** dan nilai varian adalah **3.2**. Berikut adalah code yang digunakan dalam menyelesaikan soal 2C.
```R
n = 20
p = 0.2
x = 4

mean = sum (n * p)
variance = n * p * (1 - p)

mean
variance
```
Berikut merupakan hasil pengerjaan soal 2C menggunakan RStudio.
![2C](https://user-images.githubusercontent.com/109916703/194932871-bfc79f59-4f1c-4aa3-aa06-f832ef0583f6.png)

## Soal Nomor 3
> Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari (gunakan Distribusi Poisson).
- **Soal 3A : Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?**
  
**Penyelesaian soal 3A :**\
Dalam menyelesaikan soal 3A, dapat digunakan fungsi `dpois()`. Parameter yang digunakan dalam fungsi tersebut ialah `variabel n` yang menunjukkan jumlah data bayi, dan `lambda` yang menunjukkan rata-rata historis kelahiran bayi. Setelah melakukan perhitungan, didapatkan nilai **0.1281201** sebagai hasilnya. Berikut adalah code yang digunakan untuk menyelesaikan soal 3A.
```R
n = 6
lambda = 4.5

prob = dpois(n, lambda)
prob
```

Berikut merupakan hasil pengerjaan soal 3A menggunakan RStudio.
![3a](https://user-images.githubusercontent.com/109916703/194929722-1c4d2f30-6aae-4d91-bf7f-adb1bdb0d448.png)

- **Soal 3B : Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)**
  
**Penyelesaian soal 3B :**\
Dalam menyelesaikan soal 3B, digunakan fungsi `hist` untuk membuat grafiknya. Parameter yang digunakan merupakan angka random dari Distribusi Poisson itu sendiri. Berikut adalah code yang digunakan untuk menyelesaikan soal 3B.

```R
n = 6
day = 365
lambda = 4.5

hist(rpois(day, lambda), main = "Grafik Histogram Poisson")
```
Berikut merupakan hasil pengerjaan soal 3B menggunakan RStudio.
![3b](https://user-images.githubusercontent.com/109916703/194929803-60f9e2ac-9c8b-4c05-b89d-6be2c7e9735f.png)

- **Soal 3C : Bandingkan hasil poin a dan b, Apa kesimpulan yang bisa didapatkan?**
  
**Penyelesaian soal 3C :**\
Kesimpulan yang dapat dilihat dari perbandingan soal 3A dan 3B ialah keduanya menghasilkan nilai yang cenderung sama. Dalam 1 tahun, akan memberikan nilai hasil yang hampir sama dengan estimasi kelahiran bayi di hari setelahnya.

- **Soal 3D : Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.**
  
**Penyelesaian soal 3D :**\
Karena soal nomor 3 menggunakan Distribusi Poisson, maka nilai rataan akan sama dengan nilai varian. Oleh karena itu, dapat disimpulkan bahwa nilai rataan dan varian adalah **4.5**. Berikut adalah code yang digunakan dalam menyelesaikan soal 3D.
```R
n = 6
day = 365
lambda = 4.5

lambda = mean = variance
mean
variance
```
Berikut merupakan hasil pengerjaan soal 3D menggunakan RStudio.
![3c](https://user-images.githubusercontent.com/109916703/194929877-86f056f4-4f3d-4300-b345-8ca7b1112b1c.png)

## Soal Nomor 4
> Diketahui nilai x = 2 dan v = 10. Tentukan :
- **Soal 4A : Fungsi Probabilitas dari Distribusi Chi-Square.**

**Penyelesaian soal 4A :**\
Untuk menyelesaikan soal 4A, digunakan fungsi `dchisq()`. Parameter yang digunakan dalam fungsi tersebut ialah `variabel x` dan `variabel v`. Setelah melakukan perhitungan, didapatkan hasil **0.007664155**. Berikut adalah code yang digunakan untuk menyelesaikan soal 4A.

```R
x = 2
v = 10
n = 100

p = dchisq(x, 10)
p
```
Berikut merupakan hasil pengerjaan soal 4A menggunakan RStudio.
![4a](https://user-images.githubusercontent.com/109916703/194936293-11803597-6e9d-4b6c-9cc7-7c8b8b55ab87.png)
- **Soal 4B : Histogram dari Distribusi Chi-Square dengan 100 data random.**

**Penyelesaian soal 4B :**\
Dalam pembuatan Grafik Histogram Distribusi Chi-Square, digunakan fungsi `hist()`. Parameter yang digunakan adalah angka random dari fungsi distribusi Chi-Square itu sendiri. Berikut merupakan code yang digunakan untuk menyelesaikan soal 4B.
```R
x = 2
v = 10
n = 100

hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Grafik Histogram Chi-Square")
```
Berikut merupakan Grafik Histogram Distribusi Chi-Square yang dibuat menggunakan RStudio.
![4b](https://user-images.githubusercontent.com/109916703/194936370-188ac9bf-2b90-4db0-9499-c9105fcbb267.png)
- **Soal 4C : Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.**

**Penyelesaian soal 4C :**\
Dalam distribusi Chi-Square, nilai rataan sama dengan nilai v. Sedangkan nilai varian sama dengan 2 kali nilai v. Sehingga dapat disimpulkan bahwa nilai rataan adalah **10** dan nilai varian ialah **20**. Berikut merupakan code yang digunakan untuk menyelesaikan soal 4C.
```R
x = 2
v = 10
n = 100

mean = v
variance = 2 * v

mean
variance
```
Berikut merupakan hasil pengerjaan soal 4C menggunakan RStudio.
![4c](https://user-images.githubusercontent.com/109916703/194936492-a68035e3-2d36-4e0b-be84-d17124a64e05.png)

## Soal Nomor 5
> Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
- **Soal 5A : Fungsi Probabilitas dari Distribusi Exponensial.**

**Penyelesaian soal 5A :**\
Dalam menyelesaikan soal 5A, dapat digunakan fungsi `dexp`. Parameter yang digunakan dalam fungsi tersebut adalah `rate atau lambda` dan `jumlah data` yang ada. Setelah dilakukan perhitungan, didapatkan nilai **0.1493612** sebagai hasilnya. Berikut adalah code yang digunakan dalam menyelesaikan soal 5A.
```R
lambda = 3


p = dexp(1, rate = 3, log = FALSE)
p
```
Berikut merupakan hasil pengerjaan soal 5A menggunakan RStudio.
![5a](https://user-images.githubusercontent.com/109916703/194983694-43e43fa4-1491-4ca5-adea-93dd2602ac2a.png)

- **Soal 5B : Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random.**

**Penyelesaian soal 5B :**\
Dalam menyelesaikan soal 5B, digunakan kembali fungsi `hist` untuk pembuatan grafik histogram. Kemudian parameter yang digunakan ialah variasi pada jumlah data, yaitu 10,100,1000, dan 10000. Parameter lain yang digunakan ialah angka random yang dihasilkan dari fungsi Distribusi Eksponensial itu sendiri. Berikut adalah code yang digunakan dalam menyelesaikan soal 5B.
```R
lambda = 3
n = 100

hist(rexp(10, rate = 3), main = "Grafik Histogram Untuk 10 Bilangan Randomm")
hist(rexp(100, rate = 3), main = "Grafik Histogram Untuk 100 Bilangan Randomm")
hist(rexp(1000, rate = 3), main = "Grafik Histogram Untuk 1000 Bilangan Randomm")
hist(rexp(10000, rate = 3), main = "Grafik Histogram Untuk 10000 Bilangan Randomm")
```
Berikut merupakan Grafik Distribusi Eksponensial yang dibuat menggunakan RStudio.
![5b1](https://user-images.githubusercontent.com/109916703/194983750-6e5b237a-bcf3-445b-84f3-3ba815c12ff3.png)
![5b2](https://user-images.githubusercontent.com/109916703/194983779-e23af4e9-1227-4bcf-806b-0bf742791111.png)
![5b3](https://user-images.githubusercontent.com/109916703/194983901-18cfeab8-d8e3-410b-896b-61afb118c666.png)
![5b4](https://user-images.githubusercontent.com/109916703/194983999-300fece3-395a-44d6-a2f7-6e90fec61d7c.png)

- **Soal 5C : Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3**

**Penyelesaian soal 5C :**\
Dalam menyelesaikan soal 5C, digunakan bantuan `set.seed(1)` sesuai yang diberikan pada soal. Setelah dilakukan perhitungan, didapatkan nilai mean adalah **0.3435588** dan nilai varian adalah **0.06560765**. Berikut merupakan code yang digunakan dalam menyelesaikan soal 5C.
```R
lambda = 3
n = 100

set.seed(1)
mean = mean(rexp(n, rate = 3))
variance = (sd(rexp(n, rate = lambda))) ^ 2

mean
variance
```
Berikut merupakan hasil pengerjaan soal 5C menggunakan RStudio.
![5c](https://user-images.githubusercontent.com/109916703/194984047-34851541-686b-4501-be7a-114b455419ff.png)

