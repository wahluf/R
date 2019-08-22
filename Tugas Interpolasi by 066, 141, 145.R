# Masukkan Nilai X ke 1 - X ke n
X <- c(1, 4, 6)
#masukkan nilai yang ditanya
ditanya <- 3.5

# Logika fungsi L
L <- function(x) {
  # n = menghitung ukuran X
  n <- length(X)
  # definisikan Hasil = 0
  l <- NULL
  for (i in 1:n) {
    # setelah looping pertama, definisikan hasil = 0 kembali
    l <- NULL
    for (j in 1:n) {
      if (i != j) {
        if (is.null(l) ) {
          l <- (x-X[j])/(X[i]-X[j])
        } else {
          l <- l * ((x-X[j])/(X[i]-X[j]))
        }
      }
    }
    # Cetak Hasil saat selesai proses
    print(l)
  }
}
L(ditanya)



# penghitungan hanya L saja, P belum
# Anggota Kelompok : 
# | Adivia Gilang Prakarsa (17523066)
# | Agus Fikri Suyuthi (17523145)
# | Wahluf Abidian (17523141)