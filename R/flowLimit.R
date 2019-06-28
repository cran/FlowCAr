flowLimit <- function(limfile,limList,flow,minVal=NULL,maxVal= NULL)
{
  matList <- limList$AllNetworks

  nodeNum1 <-  as.numeric(grep(paste("^",flow,"$", sep=""), colnames(matList)))

  restrictedListAllMat <- matrix(nrow = 0,ncol =  NCOL(matList))

  restrictedListFlowMat <- list(NULL)

  restrictedList <- list(NULL)

  if(is.null(maxVal))
  {
    counter = 1
    listLen <- NROW(matList)
    for (var in 1:listLen)
    {
      nodescellval <- as.double(matList[var,nodeNum1])

      if (nodescellval > as.double(minVal))
      {
        restrictedListAllMat <- rbind(restrictedListAllMat,matList[var,])
        restrictedListFlowMat[[counter]] <- limList$FlowMatrices[[var]]
        counter <-  counter + 1
      }
    }
    print("Restrictions applied")
  }



  else if(is.null(minVal))
  {
    counter = 1
    listLen <- NROW(matList)
    for (var in 1:listLen)
    {
      nodescellval <- as.double(matList[var,nodeNum1])

      if (nodescellval < as.double(maxVal))
      {
        restrictedListAllMat <- rbind(restrictedListAllMat,matList[var,])
        restrictedListFlowMat[[counter]] <- limList$FlowMatrices[[var]]
        counter <-  counter + 1
      }
    }
    print("Restrictions applied")
  }

  else if(!is.null(minVal)& !is.null(maxVal))
  {
    counter = 1
    listLen <- NROW(matList)
    for (var in 1:listLen)
    {
      nodescellval <- as.double(matList[var,nodeNum1])
      if ((nodescellval <= as.double(maxVal)) & (nodescellval >= as.double(minVal)))
      {
        restrictedListAllMat <- rbind(restrictedListAllMat,matList[var,])
        restrictedListFlowMat[[counter]] <- limList$FlowMatrices[[var]]
        counter <-  counter + 1
      }
    }
    print("Restrictions applied")

  }

  restrictedList[[2]] <- restrictedListFlowMat
  restrictedList[[1]] <- restrictedListAllMat
  names(restrictedList) <-  c("AllNetworks","FlowMatrices")
  return(restrictedList)

}
