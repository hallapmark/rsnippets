# Finds the fibonacci number at index. Indexing starts at 1.
# Mark Hallap 31/10/2020.
fibo <- function(index) {
  if (index < 1) {
    stop('Index for fibo cannot be less than 1.')
  } else if (index == 1) {
    return(0)
  }
  
  lastfib <- 0 
  nextfib <- 1 
  for (i in 2:index) {
    previous <- nextfib
    nextfib <- lastfib + nextfib
    lastfib <- previous
  }
  
  return(nextfib)
}


