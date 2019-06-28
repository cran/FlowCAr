plotNodeFlows <- function(limfile,limList, flowfrom, bins=10)
{
  matList <- limList$FlowMatrices

  df<-  data.frame()

  tempInternalFlows <- internalFlowGen(limfile ,limList)
  nodeTracer <- vector(mode = "numeric")

  for(a in 1:(limfile$NComponents))
  {
    if(limfile$Flowmatrix[flowfrom,a]> 0)
    {
      nodeTracer <- c(nodeTracer,a)
    }
  }


  for ( i in 1:length(tempInternalFlows))
  {
    df <-  rbind(df,tempInternalFlows[[i]][flowfrom,])
  }

  colnames(df) <- limfile$Components$name### need this!!!!
  
  opar <- par()

  par(mfrow=c(3,length(nodeTracer)))

  for(plotcount in nodeTracer)
  {
    d <- density(df[,plotcount]) # returns the density data
    plot(d,main = paste("Density graph of", flowfrom," -> ",colnames(df)[plotcount]),xlab = "Flow Value") # plots the results

  }
  for(plotcount1 in nodeTracer)
  {
    h <- hist(df[,plotcount1], breaks=10,main = paste("Histogram of",flowfrom," -> ",colnames(df)[plotcount1]),
              xlab = "Flow Value", ylab = "frequency" )
    mx <-  mean(df[,plotcount1])
    medx <-  median(df[,plotcount1])

    abline(v = mx, col = "blue", lwd = 2)
    abline(v = medx, col = "red", lwd = 2)

    xfit<-seq(min(df[,plotcount1]),max(df[,plotcount1]),length=40)
    yfit<-dnorm(xfit,mean=mean(df[,plotcount1]),sd=sd(df[,plotcount1]))
    yfit <- yfit*diff(h$mids[1:2])*length(df[,plotcount1])
    lines(xfit, yfit, col="black", lwd=2)

    legend("topleft",
           c(paste("mean:",round(mx, digits = 2)),paste("median: ",round(medx, digits = 2))),
           fill =c("blue","red"),
           bty = "n",
           horiz=FALSE)

  }
  for(plotcount2 in nodeTracer)
  {
    boxplot(df[,plotcount2], horizontal = TRUE,main = paste("Boxplot of",flowfrom," -> ",colnames(df)[plotcount2]),
            xlab = "Flow Value", ylab = flowfrom)
  }
  
  on.exit(opar)

}
