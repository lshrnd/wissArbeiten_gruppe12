#Auswertung.R
#TODO Datensatz mithilfe von Funktionen-R-Skript 1.R auswerten.
#     Ergebnisse in Dokument sammeln, in GitHub stellen.

#Datensatz laden
dataset = read.csv("data_students.csv")

#Daten in einzelne Vektoren "entpacken"
alter    <- unlist(dataset[1])
fach     <- unlist(dataset[2])
intMathe <- unlist(dataset[3])
intInfo  <- unlist(dataset[4])
matheLK  <- unlist(dataset[5])

#
#Auswertung
#

# (1) Betrachte Variablen einzeln:

#Alter
descriptMetric(alter, name = "Alter")
#Studienfach
descriptCategoric(fach, "Studienfach")
visualizeCategoric(fach, title = "Balkendiagramm Studienfach", ymax = 40,
                   xlabel = "Studienfach", ylabel = "abs. Hauefigkeit")
#Interesse an Mathe
descriptCategoric(intMathe, "Interesse an Mathe")
visualizeCategoric(intMathe, title = "Balkendiagramm Interesse an Mathe", 
                   ymax = 35, xlabel = "Interesse an Mathe", ylabel = "abs. Häufigkeit")
intMatheCat <- categorizeQuanileBased(intMathe)
visualizeCategoric(intMatheCat, ymax = 70, title = "Klassifikation Interesse an Mathe",
                   ylabel = "abs. Häufigkeit", xlabel = "Interesse an Mathe")

#Interesse an Informatik
descriptCategoric(intInfo, "Interesse an Info")
visualizeCategoric(intInfo, title = "Balkendiagramm Interesse an Info", 
                   ymax = 25, xlabel = "Interesse an Info", ylabel = "abs. Häufigkeit")
intInfoCat <- categorizeQuanileBased(intInfo)
visualizeCategoric(intInfoCat, ymax = 70, title = "Klassifikation Interesse an Info",
                   ylabel = "abs. Häufigkeit", xlabel = "Interesse an Info")

#Mathe LK
descriptCategoric(matheLK, "Mathe LK")
visualizeCategoric(matheLK, title = "Balkendiagramm Mathe LK", 
                   ymax = 80, xlabel = "Mathe LK", ylabel = "abs. Häufigkeit")

# (2) Untersuche auf moegliche Abhaengigkeiten zweier Variablen:

#Alter und Mathe LK
descriptBiMetricBinary(alter, matheLK, "Alter", "Mathe LK")

#TODO: Weitere Abhängigkeiten untersuchen mit (c) und (g)