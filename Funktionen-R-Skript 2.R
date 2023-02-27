#Funktionen-R-Skript 2.R
#stellt hilfreiche Funktionen für Funktionen-R-Skript 1 zur Verfuegung.

#(h1) modus
#Short:     Berechnet den Modus einer Variablen
#Input:     x - Variable (als Vektor)
#Output:    Der/die haeufigste/n Wert/e
#Funktion:  #TODO
modus <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u))
  u[tab == max(tab)]
}

#(h2) split
#Short:     Teilt einen Vektor in zwei Vektoren, anhand eines anderen Vektors mit
#           den Werten 0,1; findet in (d) Anwendung
#Input:     toSplit - aufzuteilender Vektor;
#           splitOn - Vektor mit Aufteilungsgrundlage
#Output:    Eine Liste mit den beiden Ergebnisvektoren
#Funktion:  Erzeugt zwei Vektoren und fügt diesen Elemente aus toSplit hinzu,
#           abhaengig davon, welcher Wert am gleichen Index in splitOn steht.
split <- function(toSplit, splitOn, length) {
  len <- c(1:length)
  part1 <- vector(mode = "numeric")
  part2 <- vector(mode = "numeric")
  for(j in len) {
    if(splitOn[j] == 0) {
      part1 <- append(part1, toSplit[j])
    } else {
      part2 <- append(part2, toSplit[j])
    }
  }
  return(splitVec <- list(part1, part2))
}
