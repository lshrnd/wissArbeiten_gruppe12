#Funktionen R Skript 1

#Dieses Skript stellt Funktionen zur Verfuegung, die fuer die Auswertung
#(Deskription und Visualisierung) des in 2. erstellten Datensatzes optimiert sind

library(DescTools)

#(a) descriptMetric
#Short:     Berechnet verschiedene Lage- und Streuungsmasse einer metrischen 
#           Variablen und gibt diese aus.
#Input:     metricV - eine metrische Variable (als Vektor) 
#Output:    Mittelwert, Median, Standardabweichung, Minimum, Maximum, Modus
#Funktion:  Berechnet mit Standardfunktionen in R Mittelwert, Median, Standard-
#           abweichung, Minimum, Maximum und mit helper_functions Modus und gibt
#           Ergebnisse aus.
descriptMetric <- function(metricV, name) {
  cat(name, "\n")
  cat("Lage- und Streuungsmasse: \n")
  cat("Mittelwert:", mean(metricV),"\n")
  cat("Median: ", median(metricV),"\n")
  cat("Modus: ", modus(metricV), "\n")
  cat("Standardabweichung: ", sd(metricV),"\n")
  cat("Kleinster Wert: ", min(metricV), "\n")
  cat("Groesster Wert: ", max(metricV), "\n")
  cat("\n")
}

#(b) descriptCategoric
#Short:     Berechnet absolute u. relative Haeufigkeiten einer kategoriellen   
#           Variable und gibt diese aus.
#Input:     c1 - kategorielle Variable; name - Name der Variablen
#Output:    Absolute & Relative Haeufigkeitstabelle
#Funktion:  Nutzt Standardfunktionen um Haeufigkeitstabellen zu berechnen und
#           auszugeben
descriptCategoric <- function(c1, name) {
  cat("Haeufigkeitstabellen", name, "\n")
  print("Absolute Haeufigkeitstabelle")
  print(table(c1))
  print("Relative Haeufigkeitstabelle")
  print(table(c1)/length(c1))
}

#(c) descriptBiCategoric
#Short:     Funktion zur Deskription zweier kategorialer Variablen
#Input:     c1, c2 - katetegoriale Variablen (als Vektoren)
#Output:    Haeufigkeitstabellen (absolut/relativ); 
#           Cramers- und Pearson-Kontingenzindex
#Funktion:  Haeufigkeitstabllen mit Standardfunktionen; Kontingenzindizes mit
#           library DescTools
descriptBiCategoric <- function(c1, c2, name1, name2) {
  hTable <- table(c1, c2)
  cat("c1 = ", name1, "; c2 = ", name2, "\n")
  cat("Absolute Haeufigkeitstabelle: \n")
  print(hTable)
  cat("\n Relative Haeufigkeitstabelle: \n")
  print(prop.table(hTable))
  cat("Cramers Kontingenzindex: ", CramerV(c1, c2), "\n")
  cat("Pearson Kontingenzindex: ", ContCoef(c1, c2), "\n")
}

#(d) descriptBiMetricBinary
#Short:     Funktion zur Deskription einer metrischen und einer binaeren Variable
#Input:     m - metrische Variable (Vektor); b - dichotome Variable (Vektor)
#Output:    Absolute Haeufigkeitstabelle; Lage- und Streuungsmaße der metrischen
#           Variablen, nach Aufteilung anhand der binaeren Variablen
#Funktion:  Häufigkeitstabelle Standardfunktionen; Aufteilung (siehe
#            Funktionen-R-Skript-2.R; Deskription siehe descriptMetric
descriptBiMetricBinary <- function(m, b, nameM, nameB) {
  hTable <- table(m, b)
  cat("m = ", nameM, "; b = ", nameB, "\n")
  cat("Absolute Häufigkeitstabelle:")
  print(hTable)
  cat("\n")
  splitted <- split(m, b, length = length(m))
  b0 <- splitted[[1]]
  b1 <- splitted[[2]]
  descriptMetric(b0, name = c(nameM, "ohne", nameB, ":"))
  descriptMetric(b1, name = c(nameM, "mit", nameB, ":"))
}

#(e) categorizeQuantileBased
#Short:     Funktion die eine Variable, min. ordinal skaliert, kategorisiert
#Input:     x - Variable, min. ordinal skaliert (Vektor)
#Output:    res.fac - Faktor; Kategorisierte Daten von Interesse an Mathe/
#           Informatik mit Levels (niedrig, mittel und hoch) 
#Funktion:  faktorisiert ordinale Variablen mithilfe von Standardfunktionen in:
#           niedrig, mittel, hoch
categorizeQuantileBased <- function(x){
  lower.quan <- Quantile(x, prob = 0.25)
  upper.quan <- Quantile(x, prob = 0.75)
  lev.list <- c(1,2,3,4,5,6,7)
  for(i in 1:length(lev.list)){
    if(lev.list[i] < lower.quan){
      lev.list[i] <- "niedrig"
    }
    else if(lev.list[i] > upper.quan){
      lev.list[i] <- "hoch"
    }
    else{
      lev.list[i] <- "mittel"
    }
  }
  res.fac <- factor(x, levels = c(1,2,3,4,5,6,7), labels = lev.list)
  
  return(res.fac)
}

#(f) visualizeCategoic
#Short:     Erstellt Balkendiagramm faer eine kategorische Variable
#Input:     c1 - kategoriale Variable (Vektor); Rest selbsterklaerend
#Output:    Balkendiagramm (mit absoluten Haeufigkeiten)
#Funktion:  Erstellt Balkendiagramm mit Standardfunktion
visualizeCategoric <- function(c1, ymin = 0, ymax, title, ylabel, xlabel) {
  barplot(table(c1), ylim = c(ymin, ymax), main = title, xlab = xlabel,
          ylab = ylabel)
}

#(g) visualizeBiCategoic
#Short:     Funktion die fuer zwei kategoriale Variablen einen Mosaikplot erstellt
#Input:     c1, c2 - kategoriale Variablen (Vektoren); Rest selbsterklaerend
#Output:    Mosaikplot (c1 auf x-Achse, c2 auf y-Achse)
#Funktion:  Erstellt Mosaikplot mit Standardfunktion
visualizeBiCategoric <- function(c1, c2, title, xlabel, ylabel) {
  mosaicplot(c1~c2, main = title, xlab = xlabel, ylab = ylabel)
}

