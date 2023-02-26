#Funktionen R Skript 1

#Dieses Skript stellt Funktionen zur Verfuegung, die fuer die Auswertung
#(Deskription und Visualisierung) des in 2. erstellten Datensatzes optimiert sind

#TODO:  (a)(b)(c)(g) - reviewen
#       (d) - fortfuehren (s.u.)
#       (e)(h) - TODO
#       (f) - erweitern (s.u.)

library(DescTools)

#TODO: Fertig - Please Review
#(a) decsriptMetric
#Short:     Berechnet verschiedene Lage- und Streuungsmasse einer metrischen 
#           Variablen und gibt diese aus.
#Input:     metricV - eine metrische Variable (als Vektor) 
#Output:    Mittelwert, Median, Standardabweichung, Minimum, Maximum, Modus
#Funktion:  Berechnet mit Standardfunktionen in R Mittelwert, Median, Standard-
#           abweichung, Minimum, Maximum und mit helper_functions Modus und gibt
#           Ergebnisse aus.
descriptMetric <- function(metricV, name) {
  cat(name, "Lage- und Streuungsmasse:", "\n")
  cat("Mittelwert:", mean(metricV),"\n")
  cat("Median: ", median(metricV),"\n")
  cat("Modus: ", modus(metricV), "\n")
  cat("Standardabweichung: ", sd(metricV),"\n")
  cat("Kleinster Wert: ", min(metricV), "\n")
  cat("Groesster Wert: ", max(metricV), "\n")
}

#TODO: Fertig - Please Review
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

#TODO: Fertig - Please Review
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
#Short:   Funktion zur Deskription einer metrischen und einer binaeren Variable
#Input:   m - metrische Variable (Vektor); b - dichotome Variable (Vektor)
#Output:  ?
descriptBiMetricBinary <- function(m, b, nameM, nameB) {
  cat("m = ", nameM, "; b = ", nameB, "\n")
  hTable <- table(m, b)
  hTable
  #TODO: split m based on b -> calculate (a) descriptMetric for both parts -> compare
  # tapply(m,b,table) macht das was du suchst, ich weiß jedoch nicht 
  # wie man die hTable von oben UND tapply ausgeben lassen kann
  
}

#(e) categorizeQuanileBased
#Short:   Funktion die eine Variable, mindestens ordinal skaliert, kategorisiert
#Input:   ?
#Output:  ?
categorizeQuanileBased <- function() {
  #TODO
}

#TODO: eventuell noch mit relativen Haeufigkeiten
#(f) visualizeCategoic
#Short:     Erstellt Balkendiagramm faer eine kategorische Variable
#Input:     c1 - kategoriale Variable; Rest selbsterklaerend
#Output:    Balkendiagramm (mit absoluten Haeufigkeiten)
#Funktion:  Erstellt Balkendiagramm mit Standardfunktion
visualizeCategoric <- function(c1, ymin, ymax, title, ylabel, xlabel) {
  barplot(table(c1), ylim = c(ymin, ymax), main = title, xlab = xlabel,
          ylab = ylabel)
}

#TODO: Fertig - Please Review
#(g) visualizeBiCategoic
#Short:     Funktion die fuer zwei kategoriale Variablen einen Mosaikplot erstellt
#Input:     c1, c2 - kategoriale Variablen; Rest selbsterklaerend
#Output:    Mosaikplot (c1 auf x-Achse, c2 auf y-Achse)
#Funktion:  Erstellt Mosaikplot mit Standardfunktion
visualizeBiCategoric <- function(c1, c2, title, xlabel, ylabel) {
  mosaicplot(c1~c2, main = title, xlab = xlabel, ylab = ylabel)
}


#TODO:  eventuell Funktion schreiben, die 1 - 7 in sinnvolle Kategorien zusammenfasst?
#(h)
#Short:     
#Input:     c1 - kategoriale Variable (als Vektor)
#Output:    
#Funktion:  
categorize <- function(c1) {
  
}