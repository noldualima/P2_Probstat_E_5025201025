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
karena pvalue>0,05 atau pvalue>alpha maka KEPUTUSAN H0 GAGAL atau DITOLAK,
tidak ada pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas.
```


## Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul)

### Soal 2.A
Apakah Anda setuju dengan klaim tersebut?
```
Setuju, karena z-test menolak H0
```

### Soal 2.B
Jelaskan maksud dari output yang dihasilkan!
```
> zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
+ 	alternative = "greater", mu = 20000,
+ 	conf.level = 0.95)
```

![image](https://user-images.githubusercontent.com/102939348/170879555-d8d22d25-514b-421c-bbed-14d877565090.png)

```
Penjelasan:
Diketahui n = 100, Rata-Rata (X̄) = 23500, dan standar deviasi(σ) = 3900,
sehingga null hipotesisnya adalah H0 : μ = 20000 
dan alternatif hipotesisnya adalah H1 : μ > 20000.
Maka dari itu, true mean is greater than 20000 atau H1 diterima sehingga klaim benar.

```

### Soal 2.C
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
```
P-value dari uji tes z adalah < 2.2e-16 atau mendekati 0,
dari hasil p-value tersebut hipotesis awal dapat ditolak dan H1 diterima.
```


## Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

![image](https://user-images.githubusercontent.com/102939348/170868057-d0e1c324-f191-4266-9349-5a9df6eb776c.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

### Soal 3.A
H0 dan H1
- Hitung H0:

![image](https://user-images.githubusercontent.com/102939348/170880174-36770017-7118-4cfe-b5ee-f0de1d98f105.png)

- Hitung H1:

![image](https://user-images.githubusercontent.com/102939348/170880191-74d675ef-98f7-4bf1-b924-4538a5233f89.png)

```
# H0 = (miu1 = miu2)
# H1 = (miu1 != miu2)
```

### Soal 3.B
Hitung Sampel Statistik
```
> tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
+           mean.y=2.79, s.y = 1.32, n.y = 27, 
+           alternative = "two.sided", mu = 0, var.equal = TRUE,
+           conf.level = 0.95)
```

![image](https://user-images.githubusercontent.com/102939348/170880565-bbc5a931-f265-4012-9974-2182f6796255.png)


### Soal 3.C
Lakukan Uji Statistik (df =2)
```
# Menggunakan package library Mosaic
> install.packages("mosaic")
> library(mosaic)
```

```
# Menggunakan fungsi plotDist()
> plotDist(dist='t', df=2, col="blue")
```

![image](https://user-images.githubusercontent.com/102939348/170881130-4e79ede4-8ac4-4547-83be-58c62ab61e29.png)


### Soal 3.D
Nilai Kritikal
```
> qchisq(p = 0.05, df = 2, lower.tail=FALSE)
[1] 5.991465
```

![image](https://user-images.githubusercontent.com/102939348/170881544-9f58d3b5-74d1-4e5b-9338-0b5d8227c9d7.png)

### Soal 3.E
Keputusan
```
Keputusan dapat diperoleh dari nilai t,
karena nilai t test < t kritikal
maka tidak ada bukti yg cukup untuk menolak H0
```

### Soal 3.F
Kesimpulan
```
Perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik.
Namun, akan ada (meski tidak signifikan) jika dipengaruhi oleh nilai kritikal.
```

## Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS. Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika:

diketahui dataset https://intip.in/datasetprobstat1

H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama

Maka Kerjakan atau Carilah:

### Soal 4.A
Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
```
# Mengambil data
> fl <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
> dim(fl)
[1] 106   2
> head(fl)
     V1     V2
1 Group Length
2     1     19
3     1   18.6
4     1   18.3
5     1     18
6     1   18.2
> attach(fl)
```

![image](https://user-images.githubusercontent.com/102939348/170882284-5504d4b2-1fbb-4970-a744-9201da99f8a7.png)

```
# Membuat file menjadi grup
> fl$V1 <- as.factor(fl$V1)
> fl$V1 = factor(fl$V1,labels = c("Oren","Hitam","Putih"))
```

```
# Mengecek nilai
> class(fl$V1)
[1] "factor"

# Membagi menjadi 3 grup
> gr1 <- subset(fl, V1=="Oren")
> gr2 <- subset(fl, V1=="Hitam")
> gr3 <- subset(fl, V1=="Putih")
```

### Soal 4.B
Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan?, Apa hipotesis dan kesimpulan yang dapat diambil ?
```
> bartlett.test(Length~Group, data=dataoneway)
```

```
Nilai p-value = 0.8054
Kesimpulan yang didapatkan yaitu
Bartlett's K-squared memiliki nilai sebesar 0.43292
dan df bernilai 2
```

### Soal 4.C
Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
```
> qqnorm(gr1$Length)
> qqline(gr1$Length)
```

![image](https://user-images.githubusercontent.com/102939348/170882833-be58d9b5-abca-4b20-95a7-ad1941b0a507.png)


### Soal 4.D
Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?
```
Pada taraf uji 5% didapatkan nilai p-value sebesar 0.0013.
Maka, terdapat perbedaan panjang kucing yang signifikan berdasarkan grupnya.
```

### Soal 4.E
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.
```
> mdl1 <- lm(Length~Group, data=fl)
> anova(mdl1)
> TukeyHSD(aov(mdl1))
```

```
Perbedaan panjang kucing yang signifikan adalah
grup 2 terhadap grup 1 dan grup 3,
jika menggunakan 𝛼 = 5%.
```

### Soal 4.F
Visualisasikan data dengan ggplot2
```
> library(ggplot2)
> ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")
```


## Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen "GTL.csv".

Dengan data tersebut:

### Soal 5.A
Buatlah plot sederhana untuk visualisasi data
```
# Install Packages dan Function
> install.packages("multcompView")
> library(readr)
> library(ggplot2)
> library(multcompView)
> library(dplyr)
```

```
# Membaca file
> GTL <- read_csv("GTL.csv")
> head(GTL)
```

![image](https://user-images.githubusercontent.com/102939348/170883346-8ceda149-16f3-4d1c-8903-66e522a1bfc9.png)

```
# Melakukan observasi data
> str(GTL)
```

![image](https://user-images.githubusercontent.com/102939348/170883408-e787f8bd-ce0b-46a0-907e-3f33bf8ff537.png)


```
# Memvisualisai
> qplot(x = Temp, y = Light, geom = "point", data = GTL) +
+      facet_grid(.~Glass, labeller = label_both)
```

![image](https://user-images.githubusercontent.com/102939348/170883420-97921bff-606e-4e8d-b62f-ad5012afb7e1.png)

### Soal 5.B
Lakukan uji ANOVA dua arah
```
> GTL$Glass <- as.factor(GTL$Glass)
> GTL$Temp_Factor <- as.factor(GTL$Temp)
> str(GTL)
```

![image](https://user-images.githubusercontent.com/102939348/170883438-dccc997d-1ea8-4f5a-ad05-db763a831a8b.png)

```
# Melakukan AOV
> anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
> summary(anova)
```

![image](https://user-images.githubusercontent.com/102939348/170883468-f1f9e215-4ff8-42dc-99e1-bad9de8f3870.png)

### Soal 5.C
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
```
> data_summary <- group_by(GTL, Glass, Temp) %>%
+      summarise(mean=mean(Light), sd=sd(Light)) %>%
+      arrange(desc(mean))
> print(data_summary)
```

![image](https://user-images.githubusercontent.com/102939348/170883493-bb4f0acd-28c0-4588-99f0-a96419f8dfe7.png)

### Soal 5.D
Lakukan uji Tukey
```
> tukey <- TukeyHSD(anova)
> print(tukey)
```

![image](https://user-images.githubusercontent.com/102939348/170883507-d13a0d3d-b709-4a15-aa95-38f2c551183a.png)

### Soal 5.E
Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
```
> tukey.cld <- multcompLetters4(anova, tukey)
> print(tukey.cld)
```

![image](https://user-images.githubusercontent.com/102939348/170883542-e0cdabb5-3ee1-4ca7-87da-e8bfdc5f46ca.png)

```
> cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
> data_summary$Tukey <- cld$Letters
> print(data_summary)
```

![image](https://user-images.githubusercontent.com/102939348/170883590-734c248a-8c36-4a8b-b651-7479649c4665.png)

Berikut adalah contoh daftar package dan fungsi yang dapat digunakan (dapat pula menggunakan contoh lainnya)

● Packages: readr, ggplot2, multcompView, dplyr

● Function: aov, TukeyHSD, qplot, group_by, summarise, multcompLetters4
