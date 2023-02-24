#Funktionen R Skript 1

#Dies ist ein Rahmen für die zu schreibenden Funktionen (a) bis (f)

#(a) decsriptMetric
#Short:   Funktion zur Deskription metrischer Variablen
#Input:   ?
#Output:  ?
descriptMetric <- function(metricV) {
  #TODO
  mean(metricV)
}

#(b) descriptCategoric
#Short:   Berechnet absolute u. relative Häufigkeiten einer kategoriellen   
#         Variable und gibt diese aus
#Input:   c1 - kategorielle Variable; name - Name der Variablen
#Output:  Absolute & Relative Häufigkeitstabelle
descriptCategoric <- function(c1, name) {
  cat("Häufigkeitstabellen", name, "\n")
  print("Absolute Häufigkeitstabelle")
  print(table(c1))
  print("Relative Häufigkeitstabelle")
  print(table(c1)/length(c1))
}

#(c) descriptBiCategoric
#Short:   Funktion zur Deskription zweier kategorischer Variablen
#Input:   ?
#Output:  ?
descriptBiCategoric <- function() {
  #TODO
}

#(d) descriptBiMetricBinary
#Short:   Funktion zur Deskription einer metrischen und einer binären Variable
#Input:   ?
#Output:  ?
descriptBiMetricBinary <- function() {
  #TODO  
}

#(e) categorize
#Short:   Funktion die eine Variable, mindestens ordinal skaliert, kategorisiert
#Input:   ?
#Output:  ?
categorize <- function() {
  #TODO
}

#(f) visualizeCategoic
#Short:   Erstellt Balkendiagramm für eine kategorische Variable
#Input:   c1 - kategorische Variable; Rest selbsterklärend
#Output:  Balkendiagramm 
visualizeCategoric <- function(c1, ymin, ymax, title, ylabel, xlabel) {
  barplot(table(c1), ylim = c(ymin, ymax), main = title, xlab = xlabel,ylab = ylabel)
}

#(g) visualizeBiCategoic
#Short:   Funktion die kategoriale Variablen visualisiert?
#Input:   ?
#Output:  ?
visualizeBiCategoric <- function(c1, c2, title, xlabel, ylabel) {
  mosaicplot(c1~c2, main = title, xlab = xlabel, ylab = ylabel)
}
