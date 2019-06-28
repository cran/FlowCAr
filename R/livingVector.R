livingVector <- function(limfile)
{
  veclen <-  limfile$NComponents
  livingVec <- vector(mode = "logical", length = veclen)
  NLNodeNodes <- as.vector( grep("NLNODE", limfile$Components[,1]))
  for (Count in 1:veclen)
  {
    livingVec[Count] <-  TRUE
  }

  for (trueCount in (NLNodeNodes))
  {
    livingVec[trueCount] <-  FALSE
  }
  message("Living vector list created")

  return(livingVec)
}
