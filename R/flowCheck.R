flowCheck <- function(limfile,limList)
{
  matList <- limList$FlowMatrices

  x <- limfile$Flowmatrix

  discardedList <- list(NULL)
  acceptedList <- matList
  discardvec <-  vector(mode = "numeric")
  counter <- 1
  for(looper in 1:length(matList))
  {
    breaker = FALSE
    for(xrow in 1:nrow(x))
    {
      for(xcol in 1:ncol(x))
      {
        vmain <- x[xrow,xcol]

        viter <- matList[[looper]][xrow,xcol]
        vresult <- vmain - viter

        if(vresult == 0)
        {
          next()
        }else
        {
          if(viter>0 && vmain >0)
          {

            next()
          }
        }
        message(paste("discarded",looper))
        discardedList[[counter]] <- matList[[looper]]
        counter <- counter +1
        discardvec <- c(discardvec,looper)
        breaker <-  TRUE
        break()
      }
      if(breaker == TRUE)
      {break()}
    }
  }

  for(qw in discardvec)
  {
    acceptedList[[qw]] <-  NULL
  }
  fullList <-  list(NULL)
  fullList[[1]] <- acceptedList
  fullList[[3]] <- limList$AllNetworks
  fullList[[2]] <- discardedList
  names(fullList) <-  c("FlowMatrices","DiscardedList","AllNetworks")
  message("Checks complete")
  return(fullList)
}
