internalFlowGen <- function(limfile,limList)
{

  matList <- limList$FlowMatrices


  comp <- as.vector(limfile$Components[,1])
  compLength <- as.numeric(limfile$NComponents)

  internalFlowlistMat <-  list(NULL)

  for(var in 1:length(matList))
  {
    internalFlowlistMat[[var]] <- as.matrix(matList[[var]][1:compLength,1:compLength])
  }
  message("Internal Flows list created")

  return(internalFlowlistMat)
}
