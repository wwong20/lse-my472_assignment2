# For this exercise, I will be using the built-in R dataset "VADeaths".
data("VADeaths")

# Renaming the column names to remove the spaces.
colnames(VADeaths) <- c("RuralMale", "RuralFemale", "UrbanMale", "UrbanFemale")

# This function "summations" gives the total number of people above 50 who died
# in 1940, categorized by their residential area (Rural/Urban) and gender 
# (Male/Female).

# Added functionality to the function, where Males are coded as 1, and Females
# are coded as 2. If the argument exists, it will instead return the total
# number of that gender who died that year, regardless of residential area.

summations <- function(data, MF = FALSE) {
  if (identical(MF, FALSE)) {
    return(colSums(data) * 1000)
  } else if (MF == 1) {
    return(sum(colSums(dataset[, c(1,3)])) * 1000)
  } else if (MF == 2) {
    return(sum(colSums(dataset[, c(2,4)])) * 1000)
  }
}

# Output of the function
summations(VADeaths)
summations(VADeaths,1)
summations(VADeaths,2)