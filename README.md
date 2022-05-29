# PRAKTIKUM MODUL 2 PROBSTAT 2022
- Nama  : Dawamul Fikri Aqil
- NRP   : 5025201025
- Kelas : Probstat E
------------------------------

## Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas?

![image](https://user-images.githubusercontent.com/102939348/170867622-a6338def-d684-4df8-8de2-024273fe5120.png)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

### 1.A
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
```
# Memasukkan semua data
> resp <- c(1,2,3,4,5,6,7,8,9)
> x <- c(78,75,67,77,70,72,78,74,77)
> y <- c(100,95,70,90,90,90,89,90,100)
```

```
# Mengecek data
> dt <- data.frame(resp,x,y)
> dt
```

![image](https://user-images.githubusercontent.com/102939348/170875397-a074ce3a-e4ff-4386-b214-37755e9a7989.png)

```
# Mencari selisih
> diff <- dt[,3]-dt[,2]
> diff
[1] 22 20  3 13 20 18 11 16 23
```

![image](https://user-images.githubusercontent.com/102939348/170875488-7ff9f40b-04e7-46de-af77-3a14e18d312b.png)

```
# Menghitung Standar Deviasi
> std1 <- sd(diff)
> std1
[1] 6.359595
```

![image](https://user-images.githubusercontent.com/102939348/170876956-c1eaf184-fdbc-4274-98ca-3587c897659f.png)


### 1.B
Carilah nilai t (p-value)
```
> t.test(y, x, paired = TRUE)
```

![image](https://user-images.githubusercontent.com/102939348/170877999-e965422a-fc56-4b30-a4ee-eb98d988f20e.png)


```
> t <- ((xbar-ybar)-std1)/sqrt(Q*((1/p1)+(1/p2)))
> t
[1] -7.025925
```

![image](https://user-images.githubusercontent.com/102939348/170877076-1c8ed197-d3fe-4f08-bacf-a685e60da31a.png)


### 1.C
Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴”
```
# Melihat hasil komparasi
var.test(y, x)
```

![image](https://user-images.githubusercontent.com/102939348/170878599-af6d4841-95c8-4b58-9352-7ec147e91663.png)

```
# Melihat pengaruhnya
t.test(y, x, var.equal = TRUE)
```

![image](https://user-images.githubusercontent.com/102939348/170878656-ba61b4e9-ec40-47a5-9fca-e5e16ec498b0.png)

```
karena pvalue>0,05 atau pvalue>alpha maka KEPUTUSAN H0 GAGAL atau DITOLAK, tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas.
```

## Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul)

### Soal 2.A
Apakah Anda setuju dengan klaim tersebut?

### Soal 2.B
Jelaskan maksud dari output yang dihasilkan!

### Soal 2.C
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!


## Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

![image](https://user-images.githubusercontent.com/102939348/170868057-d0e1c324-f191-4266-9349-5a9df6eb776c.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

### Soal 3.A
H0 dan H1

### Soal 3.B
Hitung Sampel Statistik


### Soal 3.C
Lakukan Uji Statistik (df =2)


### Soal 3.D
Nilai Kritikal

### Soal 3.E
Keputusan

### Soal 3.F
Kesimpulan


## Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS. Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika:

diketahui dataset https://intip.in/datasetprobstat1

H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama

Maka Kerjakan atau Carilah:

### Soal 4.A
Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

### Soal 4.B
Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan?, Apa hipotesis dan kesimpulan yang dapat diambil ?

### Soal 4.C
Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.

### Soal 4.D
Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?

### Soal 4.E
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

### Soal 4.F
Visualisasikan data dengan ggplot2


## Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen "GTL.csv".

Dengan data tersebut:

### Soal 5.A
Buatlah plot sederhana untuk visualisasi data

### Soal 5.B
Lakukan uji ANOVA dua arah

### Soal 5.C
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)

### Soal 5.D
Lakukan uji Tukey

### Soal 5.E
Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey

Berikut adalah contoh daftar package dan fungsi yang dapat digunakan (dapat pula menggunakan contoh lainnya)

● Packages: readr, ggplot2, multcompView, dplyr

● Function: aov, TukeyHSD, qplot, group_by, summarise, multcompLetters4
