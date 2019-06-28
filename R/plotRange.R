plotRange <- function(limfile, limList, limListLimit=NULL, legend = TRUE, avcol="green", allcol="red",  limitcol="blue", avpch=16, allpch=3, limitpch=3,...)
{
  AllNetworks <- limList$AllNetworks
  tAllNetworks <- t(AllNetworks)
  webranges<- Xranges(limfile)
  cc <- 1:nrow(webranges)
  Plotranges(limfile,...)

  for (i in 1:length(tAllNetworks[1,])){
    points(x=tAllNetworks[,i],y=cc,col=allcol,pch = allpch,cex = 0.5)
  }

  if(is.null(limListLimit)){

    if (legend == TRUE)
    {
      legend("topright",c("Parsimonious","MCMC Average","MCMC Iterations"),text.col = c("black",avcol,allcol),
             col = c("black",avcol,allcol),cex = 0.65,ncol = 4,pch = c(16,avpch,allpch))
    }

  }else{

    limitEntNet <- limListLimit$AllNetworks
    tlimitEntNet <- t(limitEntNet)

    for (i in 1:length(tlimitEntNet[1,])){
      points(x=tlimitEntNet[,i],y=cc,col=limitcol,pch = limitpch,cex = 0.5)
    }


    if (legend == TRUE)
    {
      legend("topright",c("Parsimonious","LIM Average","LIM Iterations","Limited Iterations"),text.col = c("black",avcol,allcol,limitcol),
             col = c("black",avcol,allcol,limitcol),cex = 0.65,ncol = 4,pch = c(16,avpch,allpch,limitpch))
    }
  }

  mr <- as.vector(colMeans(AllNetworks))
  points(x=mr,y=cc,col=avcol,pch=avpch)
  pars <- Ldei(limfile)
  points(x=pars$X,y=cc,col="black",pch=16)

}
