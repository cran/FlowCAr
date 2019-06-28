respVector <- function(limfile,limList)
{
  matList <- limList$FlowMatrices

  respElement <-  as.vector(limfile$Externals[,1])[1]
  respVecL <-  list(NULL)
  rowNo <- NULL
  comp <- as.vector(limfile$Components[,1])
  lengthComp <- length(comp)
  listLen <- length(matList)
  for (var in 1:listLen)
  {
    respVecL[[var]] <- as.vector(matList[[var]][1:lengthComp,respElement])
  }
  message("Respiration vector list created")

  return(respVecL)
}
