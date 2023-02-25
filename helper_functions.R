#helper_functions.R
#stellt hilfreiche Funktionen für Funktionen-R-Skript 1 zur Verfügung.

#(h1) modus
#Short:     Berechnet den Modus einer Variablen
#Input:     x - Variable (als Vektor)
#Output:    Der/die häufigste/n Wert/e
#Funktion:  #TODO
modus <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u))
  u[tab == max(tab)]
}
