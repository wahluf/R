#FIS Raceto D = Donatur, K = Kurir
D <- 29;
K <- 20;

#Donatur =================================================
#Donatur Sedikit
if(D >= 30) {
  LT = 0;
} else if(D <= 5) {
  LT = 1;
} else {
  LT <- (30 - D) / (30 - 5);
}
print(LT);

#Donatur Banyak
if(D <= 5) {
  LN = 0;
} else if(D >= 30) {
  LN = 1;
} else {
  LN <- (D - 5) / (30 - 5);
}
print(LN);


#Kurir ===============================================
#Kurir Sedikit
if(K >= 20) {
  LKT = 0;
} else if(K <= 5) {
  LKT = 1;
} else {
  LKT <- (20 - K) / (20 - 5);
}
print(LKT);

#Kurir Banyak
if(K < 5) {
  LKN = 0;
} else if(K >= 20) {
  LKN = 1;
} else {
  LKN <- (K - 5) / (20 - 5);
}
print(LKN);

#Cari Nilai 
R1 <- min(LN, LKN);
Z1 <- R1*100


R2 <- min(LN, LKT);
Z2 <- R2*100

R3 <- min(LT, LKN);
Z3 <- 100 - (R3*100);
#Z3 <- R3*100

R4 <- min(LT, LKT);
Z4 <- 100 - (R4*100);

print("================================");
print(R1);
print(R2);
print(R3);
print(R4);


print("================================");
print(Z1)
print(Z2)
print(Z3)
print(Z4);

print("================================");
Def1 <- R1 * Z1;
Def2 <- R2 * Z2;
Def3 <- R3 * Z3;
Def4 <- R4 * Z4;
Div <- R1 + R2 + R3 + R4;
print("================================");
print(Def1);
print(Def2);
print(Def3);
print(Def4);
print(Div);

#Defuzzy
#Fuzzy <- (Def1 + Def2 + Def4) / (Div);
Fuzzy <- (Def1 + Def2 + Def3 + Def4) / (Div);
print(paste("Jadi Rekomendasi Pembukkaan Posko Adalah", Fuzzy, "%"))
