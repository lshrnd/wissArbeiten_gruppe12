#Daten laden
dataset = read.csv("data_students.csv")
dataset

#Daten in einzelne Vektoren "entpacken"
alter    <- unlist(dataset[1])
fach     <- unlist(dataset[2])
intMathe <- unlist(dataset[3])
intInfo  <- unlist(dataset[4])
matheLK  <- unlist(dataset[5])

#
#Test der Funktionen an einigen Beispielen
#

#Test der Funktionen in functions_1.R
#(a)
descriptMetric(alter, name = "Alter")
#(b)
descriptCategoric(fach, name = "Studienfach")
descriptCategoric(unlist(dataset[1]), "Alter")
#(c)
descriptBiCategoric(fach, intMathe, name1 = "Studienfach", name2 = "Interesse an Mathe")
#(d)
descriptBiMetricBinary(alter, matheLK, nameM = "Alter", nameB = "Mathe LK")

#(f)
visualizeCategoric(x, ymin = 0, ymax = 50, title = "Test",
                   xlabel = "Studienfach", ylabel = "Anzahl Studenten")
#(g)
visualizeBiCategoric(c1 = fach, c2 = intInfo, title = "Studienfach / Interesse an Info",
                     xlabel = "Studienfach", ylabel = "Interesse an Info")

#Test der Funktionen in Funktionen-R-Skript1.R
funcB(fach)
funcF(fach)
funcE(unlist(dataset[4]))
funcC(fach, intMathe)

# Test der helper_funcions.R
modus(dataset[2])
modus(fach)

#Sonstige Tests

#(c)
table(fach, intMathe)

chisq.test(fach, intMathe)

#alternative relative Häufigkeitstabelle?
testTable <- table(fach)
prop.table(testTable)
           