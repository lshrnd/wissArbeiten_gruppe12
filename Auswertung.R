#Auswertung.R

#In diesem Skript wird der Datensatz data_students.csv mit den Funktionen aus
#dem Funktionen-R-Skript 1.R deskribiert und visualisiert. Die Ergebnisse werden
#sinnvoll zusammengefasst und in einem .pdf Dokument dargestellt.

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
                   ymax = 35, xlabel = "Interesse an Mathe", ylabel = "abs. Haeufigkeit")
intMatheCat <- categorizeQuantileBased(intMathe)
descriptCategoric(intMatheCat, "Interesse an Mathe")
visualizeCategoric(intMatheCat, ymax = 70, title = "Klassifikation Interesse an Mathe",
                   ylabel = "abs. Haeufigkeit", xlabel = "Interesse an Mathe")
#Interesse an Informatik
descriptCategoric(intInfo, "Interesse an Info")
visualizeCategoric(intInfo, title = "Balkendiagramm Interesse an Info", 
                   ymax = 25, xlabel = "Interesse an Info", ylabel = "abs. Haeufigkeit")
intInfoCat <- categorizeQuantileBased(intInfo)
descriptCategoric(intInfoCat, "Interesse an Info")
visualizeCategoric(intInfoCat, ymax = 70, title = "Klassifikation Interesse an Info",
                   ylabel = "abs. Haeufigkeit", xlabel = "Interesse an Info")
#Mathe LK
descriptCategoric(matheLK, "Mathe LK")
visualizeCategoric(matheLK, title = "Balkendiagramm Mathe LK", 
                   ymax = 80, xlabel = "Mathe LK", ylabel = "abs. Haeufigkeit")

# (2) Untersuche auf moegliche Abhaengigkeiten zweier Variablen:

#Alter und Mathe LK
descriptBiMetricBinary(alter, matheLK, "Alter", "Mathe LK")

#Studienfach und Interesse an Mathe
descriptBiCategoric(fach, intMathe, "Studienfach", "Interesse an Mathe")
descriptBiCategoric(fach, intMatheCat, "Studienfach", "Interesse an Mathe (Klassifiziert)")
visualizeBiCategoric(fach, intMathe, title = "Studienfach und Interesse an Mathe",
                     xlabel = "Studienfach", ylabel = "Interesse an Mathe")
visualizeBiCategoric(fach, intMatheCat, title = "Studienfach und Interesse an Mathe",
                     xlabel = "Studienfach", ylabel = "Interesse an Mathe (Klassifiziert)")

#Studienfach und Interesse an Info
descriptBiCategoric(fach, intInfo, "Studienfach", "Interesse an Info")
descriptBiCategoric(fach, intInfoCat, "Studienfach", "Interesse an Info (Klassifiziert)")
visualizeBiCategoric(fach, intInfo, title = "Studienfach und Interesse an Info",
                     xlabel = "Studienfach", ylabel = "Interesse an Info")
visualizeBiCategoric(fach, intInfoCat, title = "Studienfach und Interesse an Info",
                     xlabel = "Studienfach", ylabel = "Interesse an Info (Klassifiziert)")

#Interesse an Mathe und Interesse an Info
descriptBiCategoric(intMathe, intInfo, "Interesse an Mathe", "Interesse an Info")
descriptBiCategoric(intMathe, intInfoCat, "Interesse an Mathe",
                    "Interesse an Info (Klassifiziert)")
descriptBiCategoric(intMatheCat, intInfo, "Interesse an Mathe (Klassifiziert)",
                    "Interesse an Info")
descriptBiCategoric(intMatheCat, intInfoCat, "Interesse an Mathe (Klassifiziert)",
                    "Interesse an Info (Klassifiziert)")
visualizeBiCategoric(intMathe, intInfo, title = "Interesse an Mathe und Interesse an Info",
                     xlabel = "Interesse an Mathe", ylabel = "Interesse an Info")
visualizeBiCategoric(intMathe, intInfoCat, title = "Interesse an Mathe und Interesse an Info",
                     xlabel = "Interesse an Mathe", ylabel = "Interesse an Info (Klassifiziert)")
visualizeBiCategoric(intMatheCat, intInfo, title = "Interesse an Mathe und Interesse an Info",
                     xlabel = "Interesse an Mathe (Klassifiziert)", ylabel = "Interesse an Info")
visualizeBiCategoric(intMatheCat, intInfoCat, title = "Interesse an Mathe und Interesse an Info",
                     xlabel = "Interesse an Mathe (Klassifiziert)", ylabel = "Interesse an Info (Klassifiziert)")

#Mathe LK und Interesse an Mathe
descriptBiCategoric(matheLK, intMathe, "Mathe LK", "Interesse an Mathe")
descriptBiCategoric(matheLK, intMatheCat, "Mathe LK", "Interesse an Mathe (Klassifiziert)")
visualizeBiCategoric(matheLK, intMathe, title = "Mathe LK und Interesse an Mathe",
                     xlabel = "Mathe LK", ylabel = "Interesse an Mathe")
visualizeBiCategoric(matheLK, intMatheCat, title = "Mathe LK und Interesse an Mathe",
                     xlabel = "Mathe LK", ylabel = "Interesse an Mathe (Klassifiziert)")

#Mathe LK und Interesse an Info
descriptBiCategoric(matheLK, intInfo, "Mathe LK", "Interesse an Info")
descriptBiCategoric(matheLK, intInfoCat, "Mathe LK", "Interesse an Info (Klassifiziert)")
visualizeBiCategoric(matheLK, intInfo, title = "Mathe LK und Interesse an Info",
                     xlabel = "Mathe LK", ylabel = "Interesse an Info")
visualizeBiCategoric(matheLK, intInfoCat, title = "Mathe LK und Interesse an Info",
                     xlabel = "Mathe LK", ylabel = "Interesse an Info (Klassifiziert)")

