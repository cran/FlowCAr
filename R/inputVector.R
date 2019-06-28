inputVector <- function(limfile,limList)
{
  matList <- limList$FlowMatrices

  externalVar <- limfile$Externals
  inputNodes <- as.data.frame.vector( grep("Input$", externalVar[,1]))
  inputNodeNum <-  NULL
  for (var in inputNodes)
  {
    inputNodeNum <- as.vector(externalVar[var,1])
  }

  respElement <-  as.vector(limfile$Externals[,1])[1]
  inputNodeNum <- c(inputNodeNum,respElement)
  comp <- as.vector(limfile$Components[,1])
  lengthComp <- length(comp)
  InputsVec <-  list(as.vector(NULL))
  colSum <-  0
  lengthVec <- as.numeric(length(matList))
  lengthVec
  for (listMatIndex in 1:lengthVec)
  {
    colSumsVec <- NULL
    for (columnNo in 1:lengthComp)
    {
      for (nameLoop in inputNodeNum)
      {
        colSum <- colSum + matList[[listMatIndex]][nameLoop,columnNo]
      }
      colSumsVec <-  c(colSumsVec,colSum)
      colSum <-  0
    }
    InputsVec[[listMatIndex]] <-  colSumsVec
  }
  message("Input vector list created")

  return(InputsVec)
}
