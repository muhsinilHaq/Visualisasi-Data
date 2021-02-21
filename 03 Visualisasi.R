# Fungsi Plot "plot(x, y, type="p")"
x <- c(1:10); y <- x^2
par(mfrow=c(2,)) ## membagi jendela grafik menajdi 2 baris dan 4 kolom
type <- c("p","l","b","o","h","s","n")
for (i in type){
  plot(x,y, type= i,
       main= paste("type=", i))
}

set.seed(123)
x <- seq(from=0, to=10, by=0.1)
y <- x^2*exp(-x/2)*(1+rnorm(n=length(x), mean=0, sd=0.05))

par(mfrow=c(1,2),
    # mengatur margin grafik
    mar=c(4,4,1.5,1.5),
    # mengatur margin sumbu
    mex=0.8,
    # arah tick sumbu koordinat
    tcl=0.3)
plot(x, y, type="l")
plot(x, y, type="o")

# curve(expr, from = NULL, to = NULL, add = FALSE) #Fungsi Kurva yg lainnya
par(mfrow=c(1,2),
    # mengatur margin grafik
    mar=c(4,4,1.5,1.5),
    # mengatur margin sumbu
    mex=0.8,
    # arah tick sumbu koordinat
    tcl=0.3)

# Grafik kiri
curve(expr=x^2*exp(-x/2), 
      from=0, to=10)

# Grafik kanan
plot(x, y, pch=19, cex=0.7,
     xlab="Waktu (detik)",
     ylab="Sinyal Intensitas")
curve(expr=x^2*exp(-x/2), 
      from=0, to=10, add=TRUE)

VADeaths
par(mfrow=c(1,2))
barplot(VADeaths[, "Rural Male"], main="a")
barplot(VADeaths[, "Rural Male"], main="b", horiz=TRUE)
par(mfrow=c(1,1))


barplot(VADeaths[, "Rural Male"],
        # ubah warna ouline menjadi steelblue
        border="steelblue",
        # ubah wana box
        col= c("grey", "yellow", "steelblue", "green", "orange"),
        # ubah nama grup dari A sampai E
        names.arg = LETTERS[1:5],
        # ubah orientasi menajadi horizontal
        horiz=TRUE)
# staked
barplot(VADeaths,
        col = c("lightblue", "mistyrose", "lightcyan", 
                "lavender", "cornsilk"),
        legend = rownames(VADeaths))
# grouped
barplot(VADeaths,
        col = c("lightblue", "mistyrose", "lightcyan", 
                "lavender", "cornsilk"),
        legend = rownames(VADeaths), beside = TRUE)


# Histigram "hist(x, breaks="Sturges")"
hist(trees$Height)
# menghitung kernel density
dens <- density(trees$Height)

# plot densitas dengan outline merah
plot(dens,col="red")


# menghitung kernel density
dens <- density(trees$Height)

# histogram
hist(trees$Height, freq=FALSE, col="steelblue")

# tambahkan density plot
polygon(dens, border="red")


boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Length~iris$Species)


boxplot(iris$Sepal.Length~iris$Species,
        # ubah warna outline menjadi steelblue
        border = "steelblue",
        # ubah warna box berdasarkan grup
        col= c("#999999", "#E69F00", "#56B4E9"))

# ubah variable dose menjadi factor
ToothGrowth$dose <- as.factor(ToothGrowth$dose)

# print
head(ToothGrowth)

boxplot(len ~ supp*dose, data = ToothGrowth,
        col = c("white", "steelblue"))


# menambahkan judul
barplot(c(2,5), main="Main title",
        xlab="X axis title",
        ylab="Y axis title",
        sub="Sub-title")

# menambahkan judul
barplot(c(2,5), 
        # menambahkan judul
        main="Main title",
        xlab="X axis title",
        ylab="Y axis title",
        sub="Sub-title",
        # kustomisasi warna font
        col.main="red",
        col.lab="blue", 
        col.sub="black",
        # kustomisasi font style
        font.main=4, 
        font.lab=4, 
        font.sub=4,
        # kustomisasi ukuran font
        cex.main=2, 
        cex.lab=1.7, 
        cex.sub=1.2)

# menambahkan judul
barplot(c(2,5,8))

# menambahkan judul
title(main="Main title",
      xlab="X axis title",
      ylab="Y axis title",
      sub="Sub-title",
      # kustomisasi warna font
      col.main="red", 
      col.lab="blue", 
      col.sub="black",
      # kustomisasi font style
      font.main=4, 
      font.lab=4, 
      font.sub=4,
      # kustomisasi ukuran font
      cex.main=2, 
      cex.lab=1.7, 
      cex.sub=1.2)


# membuat vektor numerik
x <- c(1:10)
y <- x^2
z <- x*2

# membuat line plot
plot(x,y, type="o", col="red", lty=1)

# menambahkan line plot
lines(x,z, type="o", col="blue", lty=2)

# menambahkan legend
legend(1, 95, legend=c("Line 1", "Line 2"),
       col=c("red", "blue"), lty=1:2, cex=0.8)


# membuat line plot
plot(x,y, type="o", col="red", lty=1)

# menambahkan line plot
lines(x,z, type="o", col="blue", lty=2)

# menambahkan legend
legend(1, 95, legend=c("Line 1", "Line 2"),
       col=c("red", "blue"), lty=1:2, cex=0.8,
       title="Line types", text.font=4, bg='lightblue')

# membuat line plot
plot(x,y, type="o", col="red", lty=1)

# menambahkan line plot
lines(x,z, type="o", col="blue", lty=2)

# menambahkan legend
legend(1, 95, legend=c("Line 1", "Line 2"),
       col=c("red", "blue"), lty=1:2, cex=0.8,
       title="Line types", text.font=4, bg='white',
       box.lty=2, box.lwd=2, box.col="steelblue")


# plot
plot(x,y, type = "n")

# posisi kiri atas, inset =0.05
legend("topleft",
       legend = "(x,y)",
       title = "topleft, inset = .05",
       inset = 0.05)
# posisi atas
legend("top",
       legend = "(x,y)",
       title = "top")
# posisi kanan atas inset = .02
legend("topright",
       legend = "(x,y)",
       title = "topright, inset = .02",
       inset = 0.02)
# posisi kiri
legend("left",
       legend = "(x,y)",
       title = "left")
# posisi tengah
legend("center",
       legend = "(x,y)",
       title = "center")
# posisi kanan
legend("right",
       legend = "(x,y)",
       title = "right")
# posisi kiri bawah
legend("bottomleft",
       legend = "(x,y)",
       title = "bottomleft")
# posisi bawah
legend("bottom",
       legend = "(x,y)",
       title = "bottom")
# posisi kanan bawah
legend("bottomright",
       legend = "(x,y)",
       title = "bottomright")


# tandai observasi yang memiliki nilai
# mpg < 15 dan wt > 5
d <- mtcars[mtcars$wt >= 5 & mtcars$mpg <= 15, ]


# plot
plot(mtcars$wt, mtcars$mpg, main="Milage vs. Car Weight",
     xlab="Weight", ylab="Miles/(US) gallon")

# menambahkan text
text(d$wt, d$mpg,  row.names(d),
     cex=0.65, pos=3,col="red")


plot(1:10, 1:10, 
     main="text(...) examples\n~~~~~~~~~~~")
text(4, 9, expression(hat(beta) == (X^t * X)^{-1} * X^t * y))
text(7, 4, expression(bar(x) == sum(frac(x[i], n), i==1, n)))


plot(1:10, 1:10, 
     main="mtext(...) examples\n~~~~~~~~~~~")
mtext("Magic function", side=3)


# membuat plot
plot(mtcars$wt, mtcars$mpg, main="Milage vs. Car Weight",
     xlab="Weight", ylab="Miles/(US) gallon")

# menambahkan garis vertikal di titik rata-rata weight
abline(v=mean(mtcars$wt), col="red", lwd=3, lty=2)

# menambahkan garis horizontal di titik rata-rata  mpg
abline(h=mean(mtcars$mpg), col="blue", lwd=3, lty=3)

# menambahkan garis regresi
abline(lm(mpg~wt, data=mtcars), lwd=4, lty=4)


generateRPointShapes<-function(){
  # menentukan parameter plot
  oldPar<-par()
  par(font=2, mar=c(0.5,0,0,0))
  # produksi titik axis
  y=rev(c(rep(1,6),rep(2,5), rep(3,5), rep(4,5), rep(5,5)))
  x=c(rep(1:5,5),6)
  # plot seluruh titik dan label
  plot(x, y, pch = 0:25, cex=1.5, ylim=c(1,5.5), xlim=c(1,6.5), 
       axes=FALSE, xlab="", ylab="", bg="blue")
  text(x, y, labels=0:25, pos=3)
  par(mar=oldPar$mar,font=oldPar$font )
}

# Print
generateRPointShapes()



generateRLineTypes<-function(){
  oldPar<-par()
  par(font=2, mar=c(0,0,0,0))
  plot(1, pch="", ylim=c(0,6), xlim=c(0,0.7), axes = FALSE ,xlab="", ylab="")
  for(i in 0:6) lines(c(0.3,0.7), c(i,i), lty=i, lwd=3)
  text(rep(0.1,6), 0:6, 
       labels=c("0.'blank'", "1.'solid'", "2.'dashed'", "3.'dotted'", 
                "4.'dotdash'", "5.'longdash'", "6.'twodash'"))
  par(mar=oldPar$mar,font=oldPar$font )
}
generateRLineTypes()


# membuat vektor numerik
x <- c(1:4)
y <- x^2

# plot
plot(x, y, pch=18, col="red", type="b",
     frame=FALSE, xaxt="n") # Remove x axis

# menambahkan axis
# bawah
axis(1, 1:4, LETTERS[1:4], col.axis="blue")
# atas
axis(3, col = "darkgreen", lty = 2, lwd = 0.5)
# kanan
axis(4, col = "violet", col.axis = "dark violet", lwd = 2)


# membagi jendela grafik menjadi 1 baris dan 3 kolom
par(mfrow=c(1,3))

# membuat vektor numerik
x<-c(1:10); y<-x*x

# simple plot
plot(x, y)

# plot dengan pengaturan rentang skala
plot(x, y, xlim=c(1,15), ylim=c(1,150))

# plot dengan transformasi skala log
plot(x, y, log="y")



# membuat vektor numerik
x<-c(1:10); y<-x*x

# plot
plot(x,y,
     # warna
     col.axis="red",
     # font style
     font.axis=2,
     # ukuran
     cex=1.5,
     # orientasi
     las=3,
     # sembunyikan sumbu x
     xaxt="n")




showCols <- function(cl=colors(), bg = "grey",
                     cex = 0.75, rot = 30) {
  m <- ceiling(sqrt(n <-length(cl)))
  length(cl) <- m*m; cm <- matrix(cl, m)
  require("grid")
  grid.newpage(); vp <- viewport(w = .92, h = .92)
  grid.rect(gp=gpar(fill=bg))
  grid.text(cm, x = col(cm)/m, y = rev(row(cm))/m, rot = rot,
            vp=vp, gp=gpar(cex = cex, col = cm))
}

# print 60 nama warna pertama
showCols(bg="gray20", cl=colors()[1:60], rot=30, cex=0.9)



n <- 1:20
x <- sin(n)
y <- cos(n)*exp(-n/3)
z <- outer(x,y)
par(mar=c(3,3,1.5,1.5), mex=0.8, mgp=c(2,0.5,0), tcl=0.3)
par(mfrow=c(1,2))

# plot pertama
image(z, col=gray(1:10/10))

# plot kedua
contour(z)


par(mar=c(3,3,1.5,1.5), mex=0.8, mgp=c(2,0.5,0), tcl=0.3)
par(mfrow=c(1,2))

# plot pertama
persp(n,n,z, theta=45, phi=20)

# plot kedua
persp(n,n,z, theta=45, phi=20, shade=0.5)