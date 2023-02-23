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

# Funktion (d) Kopie von (c)
funcD = function(x,y){
  table(x,y)
}


# Funktion (e) faktorisiert ordinale Variablen in : sehr niedrig, niedrig, mittel, hoch, sehr hoch
# Zu Verbessern: gibt manchmal NA raus, ich weiß nicht warum
funcE = function(x){
  xfac = factor(x, levels = quantile(x, probs=seq(from=0,to=1,by=0.15)),
                labels = c("sehr niedrig","niedrig","niedrig","mittel","hoch","hoch","sehr hoch"))
  return(xfac)
}

# Funktion (f) Balkendiagramm für kategoriale Variablen
funcF = function(x){
  barplot(table(x))
}
