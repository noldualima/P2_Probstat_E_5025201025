# SOAL 1
# SOAL 1.A
bfr <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
afr <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

dt <- data.frame(
    gr = rep(c("before", "after"), each = 9),
    st = c(bfr, afr)
)

print(dt)

sd_bfr <- sd(bfr)
sd_bfr

sd_afr <- sd(afr)
sd_afr

# SOAL 1.B
t.test(bfr, afr, alternative = "greater", var.equal = FALSE)

# SOAL 1.C
var.test(bfr, afr)
t.test(bfr, afr, mu = 0, alternative = "two.sided", var.equal = TRUE)


# SOAL 2
install.packages("BSDA")
library(BSDA)

# SOAL 2.A
# Jawaban di README.md

# SOAL 2.B 
tsum.test(mean.x=23500, sd(3900), n.x=100)

# SOAL 2.C
# Jawaban di README.md

# SOAL 3
# SOAL 3.A
# Jawaban di README.md

# SOAL 3.B
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# SOAL 3.C
install.packages("mosaic")
library(mosaic)

plotDist(dist='t', df=2, col="blue")

# SOAL 3.D
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# SOAL 3.E
# Jawaban di README.md

# SOAL 3.F
# Jawaban di README.md

# SOAL 4
# SOAL 4.A
fl  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(fl)
head(fl)
attach(fl)

fl$V1 <- as.factor(fl$V1)
fl$V1 = factor(fl$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(fl$V1)

gr1 <- subset(fl, V1=="Kucing Oren")
gr2 <- subset(fl, V1=="Kucing Hitam")
gr3 <- subset(fl, V1=="Kucing Putih")

# SOAL 4.B
bartlett.test(Length~V1, data=dataoneway)

# SOAL 4.C
qqnorm(gr1$Length)
qqline(gr1$Length)

# Soal 4d
# Jawaban di README.md

# SOAL 4.E
mdl1 <- lm(Length~Group, data=fl)

anova(mdl1)

TukeyHSD(aov(mdl1))

# SOAL 4.F
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")


# SOAL 5
# SOAL 5.A
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

# SOAL 5.B
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# SOAL 5.C
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))

print(data_summary)

# SOAL 5.D
tukey <- TukeyHSD(anova)
print(tukey)

# SOAL 5.E
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")
