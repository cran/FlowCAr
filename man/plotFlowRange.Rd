\name{plotFlowRange}
\alias{plotFlowRange}
\title{
Generate a plot which illustrates the proportion an individual flow has been sampled

}
\description{
The plotFlowRange function produces a plot illustrating how an individual flow of the users choosing has been sampled by the MCMC and xsample algorithms
}
\usage{
plotFlowRange(limList,flow,...)
}
\arguments{
  \item{limList}{
The list of networks solved using LIM (\code{\link{limListGen}})

}
\item{flow}{
The desired node name
}
\item{...}{
Values depicted in \code{\link[graphics]{plot}}
}
}

\value{
A graphical plot

}

\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler}

\examples{
plotFlowRange(limList = N4LIM,flow = "pp->invertebrate")
#OR
plotFlowRange(limList = N4list$N4LIM,flow = "pp->invertebrate")
}
