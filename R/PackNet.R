PackNet <- function(internalflows,importsvec,respvec,exportsvec,outputsvec,biomassC,livingvec)
{
  stepi <- 0
  pb = txtProgressBar(min = 0, max = length(internalflows), initial = 0)
  packedlist <- list(NULL)
  for (alpha in 1:length(internalflows))
  {


    stepi = stepi + 1
    setTxtProgressBar(pb,stepi)
    packedlist[[alpha]] <- pack(flow=internalflows[[alpha]],
                                input = importsvec[[alpha]],
                                respiration = respvec[[alpha]],
                                export = exportsvec[[alpha]],
                                output = outputsvec[[alpha]],
                                storage = biomassC,
                                living = livingvec)
  }

  message("Network objects packed")
  return(packedlist)
}
