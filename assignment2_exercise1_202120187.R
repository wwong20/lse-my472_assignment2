# For this exercise, I will be using the built-in R dataset "VADeaths".
data("VADeaths")

# Renaming the column names to remove the spaces.
colnames(VADeaths) <- c("RuralMale", "RuralFemale", "UrbanMale", "UrbanFemale")

# This function "summations" gives the total number of people above 50 who died
# in 1940, categorized by their residential area (Rural/Urban) and gender 
# (Male/Female).
summations <- function(data) {
  return(colSums(data) * 1000)
}

# Output of the function
summations(VADeaths)
