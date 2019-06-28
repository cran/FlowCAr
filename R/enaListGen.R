enaListGen <-  function(Rfile=NULL, limfile=NULL, limList=NULL, limName="limfile", limListName="limList", enaListName="enaList", storeAll = FALSE, flowCheck = FALSE , ...)
{

  allLists <- list(NULL)

  if(is.null(limfile))
  {
  limfile <- LIMbuild(Rfile)

  if(is.null(limList))
  {
    limList <- limListGen(limfile = limfile, ...)


  }

  if(flowCheck == TRUE)
  {

    limList <- flowCheck(limfile = limfile, limList = limList)

  }



  tempInternalFlows <- internalFlowGen(limfile=limfile,limList=limList)
  tempImportsVec <- inputVector(limfile=limfile,limList=limList)
  tempExportsVec <-  exportVector(limfile=limfile,limList=limList)
  tempRespsVec <- respVector(limfile=limfile,limList=limList)
  tempOutputsVec <- outputVector(limfile=limfile,tempExportsVec, tempRespsVec)
  tempBiomassVec <- biomassVector(limfile=limfile)
  tempLivingVec <- livingVector(limfile=limfile)
  tempPackedNetworkObjects <- PackNet(tempInternalFlows,tempImportsVec,tempRespsVec,tempExportsVec,tempOutputsVec,tempBiomassVec,tempLivingVec)
  }
  else{

    if(!is.null(limfile))
    {
      limName <- deparse(substitute(limfile))
    }

    if(is.null(limList))
    {
      limList <- limListGen(limfile = limfile, ...)

    }else{

      limListName <- deparse(substitute(limList))
    }


    if(flowCheck == TRUE)
    {

      limList <- flowCheck(limfile = limfile, limList = limList)

    }



    tempInternalFlows <- internalFlowGen(limfile=limfile,limList=limList)
    tempImportsVec <- inputVector(limfile=limfile,limList=limList)
    tempExportsVec <-  exportVector(limfile=limfile,limList=limList)
    tempRespsVec <- respVector(limfile=limfile,limList=limList)
    tempOutputsVec <- outputVector(limfile=limfile,tempExportsVec, tempRespsVec)
    tempBiomassVec <- biomassVector(limfile=limfile)
    tempLivingVec <- livingVector(limfile=limfile)
    tempPackedNetworkObjects <- PackNet(tempInternalFlows,tempImportsVec,tempRespsVec,tempExportsVec,tempOutputsVec,tempBiomassVec,tempLivingVec)
  }


  fullList <- list(NULL)

  if(storeAll == TRUE)
    {

    fullList[[1]] <- limList
    fullList[[2]] <- tempInternalFlows
    fullList[[3]] <- tempImportsVec
    fullList[[4]] <- tempExportsVec
    fullList[[5]] <- tempRespsVec
    fullList[[6]] <- tempOutputsVec
    fullList[[7]] <- tempBiomassVec
    fullList[[8]] <- tempLivingVec
    fullList[[9]] <- tempPackedNetworkObjects
    names(fullList) <-  c("Networks","InternalFlows","Imports","Exports","Respiration","Outputs","Biomass", "Living","enaRObjectList")

    allLists[[1]] <- limfile
    allLists[[2]] <- limList
    allLists[[3]] <- fullList
    names(allLists) <- c(limName,limListName,enaListName)
    return(allLists)
    }
  else{

    allLists[[1]] <- limfile
    allLists[[2]] <- limList
    allLists[[3]] <- tempPackedNetworkObjects
    names(allLists) <- c(limName,limListName,enaListName)
      }

   return(allLists)

}
