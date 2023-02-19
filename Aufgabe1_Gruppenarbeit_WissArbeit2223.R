set.seed(135)

#Alter simulieren.
age <- round(rnorm(100, mean = 25, sd = 2))

#Studienfach simulieren mit verschiedene Wahrscheinlichkeit.
subject <- sample(x = c("Statistik", "Data Science", "Mathe", "Informatik"),
                  size= 100, replace = TRUE, prob = c(.35, .35, .2, .1) )

#Funktion für Interesse an Mathematik. Studenten, die Mathe und Statistik 
# studieren hat eine hoehere Interesse an Mathe.
math.interest.func <- function(datas){
  res <- rep(0, length(datas))
  for(i in 1:length(datas)){
    if(datas[i] == "Mathe" | datas[i] == "Statistik"){
      res[i] <- sample(c(1,2,3,4,5,6,7), size = 1)
    }
    else{
      res[i] <- sample(1:5, size = 1)
    }
  }
  return(res)
}

#Funktion für Interesse an Informatik. Studenten, die Data Science und 
# Informatik studieren hat eine hoehere Interesse an Informatik.
inf.interest.func <- function(datas){
  res <- rep(0, length(datas))
  for(i in 1:length(datas)){
    if(datas[i] == "Data Science" | datas[i] == "Informatik"){
      res[i] <- sample(c(5,6,7), size = 1)
    }
    else{
      res[i] <- sample(1:5, size = 1)
    }
  }
  return(res)
}

#Funktion für Mathe-LK. Studenten, die an Mathe mehr interessieren hat eine
# hoehere Wahrscheinlichkeit dass sie frueher Mathe-LK hatten.

math_lk.func <- function(datas){
  res <- rep(0, length(datas))
  for(i in 1:length(datas)){
    if(datas[i] == 6 | datas[i] == 7){
      res[i] <- sample(c(0,1), size = 1, prob = c(.2, .8))
    }
    else{
      res[i] <- sample(c(0,1), size = 1, prob = c(.4, .6))
    }
  }
  return(res)
}

#Daten fuer die Interesse an Mathematik mit Abhaengigkeit von Studienfach.
math.interest <- math.interest.func(subject)

#Daten fuer die Interesse an Informatik mit Abhaengigkeit von Studienfach.
info.interest <- inf.interest.func(subject)

#Daten fuer die Studenten, die Mathe-LK hatten mit Abhaengigkeit von Interesse an
# Mathematik. (1 = ja, 0 = nein)

math.lk <- math_lk.func(math.interest)


#Data Frame ueber alle Daten

data.students <- data.frame("Alter" = age, "Studienfach" = subject, 
                            "Interesse an Mathe" = math.interest,
                            "Interesse an Informatik" = info.interest,
                            "Mathe-LK" = math.lk)

data.students
