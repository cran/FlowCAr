plotFlowRange <- function(limList,flow,...)
{
  AllNetworks <- limList$AllNetworks

  plot(x=1:length(AllNetworks[,flow]),y=AllNetworks[,flow],
       type = "l",xlab = "Iteration",ylab = flow,...)

}
