# Funktion (a) deskriptive Werte für metrische Daten
funcA = function(x){
  cat("Mittelwert:", mean(x),"\n")
  cat("Median: ", median(x),"\n")
  cat("Standardabweichung: ", sd(x),"\n")
  cat("Kleinster Wert: ", min(x), "\n")
  cat("Groesster Wert: ", max(x), "\n")
  # ggf noch Modus einfuegen
}

# Funktion (b) Hauefigkeitstabelle für kategoriale Daten
funcB = function(x){
  table(x)
}

# Funktion (c) Haeufigkeitstabelle nach zwei kategorialen Daten
funcC = function(x,y){
  table(x,y)
}

