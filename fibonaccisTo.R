# A function to calculate a vector of fibonacci numbers up to a given index
# Indexing starts at 1
fibonaccisTo <- function(index) {
  # Error handling
  if (index < 1) {
    stop('Indexing for fibonaccisTo starts at 1.')
  } else if (index == 1) {
    return(0)
  }  
  
  fibos <- c(0, 1)
  for (i in 2:index) {
    fiboAti <- fibos[length(fibos) - 1] + fibos[length(fibos)]
    fibos <- c(fibos, fiboAti)
  }
  fibos
}