exportVector <- function(limfile,limList)
{
  matList <- limList$FlowMatrices

  externalVar <- limfile$Externals
  exportNodes <- as.data.frame.vector( grep("Export$", externalVar[,1]))
  exportNodeNum <-  NULL
   for (var in exportNodes)
  {
    exportNodeNum <- as.vector(externalVar[var,1])
  }

  comp <- as.vector(limfile$Components[,1])
  lengthComp <- length(comp)
  ExportsVec <-  list(as.vector(NULL))
  rowSum <-  0
  lengthVec <- as.numeric(length(matList))
  lengthVec
  for (listMatIndex in 1:lengthVec)
  {
    rowSumsVec <- NULL
    for (rowNo in 1:lengthComp)
    {
      for (nameLoop in exportNodeNum)
      {
        rowSum <- rowSum + matList[[listMatIndex]][rowNo,nameLoop]
      }
      rowSumsVec <-  c(rowSumsVec,rowSum)
      rowSum <-  0
    }
    ExportsVec[[listMatIndex]] <-  rowSumsVec
  }
  message("Export vector list created")

  return(ExportsVec)
}
