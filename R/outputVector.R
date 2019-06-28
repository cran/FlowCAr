outputVector <- function(limfile,expVec,rspVec)
{
  outputVecL <-  list(NULL)
  listLen <- length(expVec)
  for (var in 1:listLen)
  {
    outputVecL[[var]] <- expVec[[var]] + rspVec[[var]]
  }
  message("Output vector list created")

  return(outputVecL)
}
