# Modul1_Probstat_5025211188
Repository untuk pengerjaan Praktikum Modul 1 Probabilitas dan Statistika

## Identitas
| Nama                      | NRP        |
|---------------------------|------------|
| Akmal Ariq Romadhon       | 5025211188 |

## Soal Nomor 1.
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
-  **Soal 1a** : Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? ( Distribusi Geometrik )
  
**Soal 1a** 
> Diselesaikan menggunakan fungsi dgeom(). Setelah melakukan perhitungan, didapatkan peluang sebesar 0.1024. Dalam fungsi dibawah, variabel x menunjukkan orang yang tidak hadir dalam acara vaksinasi, dan variabel p merupakan parameter yang menunjukkan peluang kehadiran orang dalam acara vaksinasi. Berikut merupakan code yang digunakan untuk mengerjakan soal 1a.

```R
p = 0.2
x = 3
P <- dgeom(x, p)
P
```

Berikut merupakan hasil pengerjaan menggunakan RStudio.
![1a](https://user-images.githubusercontent.com/109916703/194874631-da8af077-bdbe-4a29-8238-e163647a0b33.png)

-- Link Gambar yang aku masih tidak tau cara memasukkannya --