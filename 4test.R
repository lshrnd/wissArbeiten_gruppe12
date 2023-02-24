dataset = read.csv("data_students.csv")
dataset

x <- unlist(dataset[2])
y <- unlist(dataset[4])
df <- data.frame(x, y)
df
visualizeBiCategoric(c1 = x, c2 = y, title = "Studienfach / Interesse an Info",
                   xlabel = "Studienfach", ylabel = "Interesse an Info")
descriptCategoric(unlist(dataset[1]), "Alter")

funcB(x)
funcF(x)
visualizeCategoric(x, ymin = 0, ymax = 50, title = "Test", xlabel = "Studienfach", ylabel = "Anzahl Studenten")


descriptCategoric(c1 = x, name = "Studienfach")

table(dataset[2])


funcC(x,y)
