#Funktionen R Skript 1

#TODO: Generelle Infos überarbeiten
#Dies ist ein Rahmen für die zu schreibenden Funktionen (a) bis (f)


#TODO: Fertig - Please Review
#(a) decsriptMetric
#Short:     Berechnet verschiedene Lage- und Streuungsmaße einer metrischen 
#           Variablen und gibt diese aus.
#Input:     metricV - eine metrische Variable (als Vektor) 
#Output:    Mittelwert, Median, Standardabweichung, Minimum, Maximum, Modus
#Funktion:  Berechnet mit Standardfunktionen in R Mittelwert, Median, Standard-
#           abweichung, Minimum, Maximum und mit helper_functions Modus und gibt
#           Ergebnisse aus.
descriptMetric <- function(metricV, name) {
  cat(name, "Lage- und Streuungsmaße:", "\n")
  cat("Mittelwert:", mean(metricV),"\n")
  cat("Median: ", median(metricV),"\n")
  cat("Modus: ", modus(metricV), "\n")
  cat("Standardabweichung: ", sd(metricV),"\n")
  cat("Kleinster Wert: ", min(metricV), "\n")
  cat("Groesster Wert: ", max(metricV), "\n")
}

#TODO: Fertig - Please Review
#(b) descriptCategoric
#Short:     Berechnet absolute u. relative Häufigkeiten einer kategoriellen   
#           Variable und gibt diese aus.
#Input:     c1 - kategorielle Variable; name - Name der Variablen
#Output:    Absolute & Relative Häufigkeitstabelle
#Funktion:  Nutzt Standardfunktionen um Häufigkeitstabellen zu berechnen und
#           auszugeben
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

#TODO: eventuell noch mit relativen Häufigkeiten
#(f) visualizeCategoic
#Short:     Erstellt Balkendiagramm für eine kategorische Variable
#Input:     c1 - kategorische Variable; Rest selbsterklärend
#Output:    Balkendiagramm (mit absoluten Häufigkeiten)
#Funktion:  Erstellt Balkendiagramm mit Standardfunktion
visualizeCategoric <- function(c1, ymin, ymax, title, ylabel, xlabel) {
  barplot(table(c1), ylim = c(ymin, ymax), main = title, xlab = xlabel,
          ylab = ylabel)
}

#TODO: Fertig - Please Review
#(g) visualizeBiCategoic
#Short:     Funktion die für zwei kategoriale Variablen einen Mosaikplot erstellt
#Input:     c1, c2 - kategoriale Variablen; Rest selbsterklärend
#Output:    Mosaikplot (c1 auf x-Achse, c2 auf y-Achse)
#Funktion:  Erstellt Mosaikplot mit Standardfunktion
visualizeBiCategoric <- function(c1, c2, title, xlabel, ylabel) {
  mosaicplot(c1~c2, main = title, xlab = xlabel, ylab = ylabel)
}
