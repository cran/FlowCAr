\name{plotNodeFlows}
\alias{plotNodeFlows}
\title{
Generates a plot illustrating the frequency of values for a required flow
}
\description{
The plotNodeFlows function produces a density plot, histogram and boxplot for each flow leaving the specified node
}
\usage{
plotNodeFlows(limfile, limList, flowfrom, bins)
}
\arguments{
  \item{limfile}{
This is the user generated LIM file created for analysis purposes.
}
  \item{limList}{
The list of networks solved using LIM (\code{\link{limListGen}})

}
\item{flowfrom}{
The node in which out-flows are required to be plotted.
}
\item{bins}{
The amount of bins that splits the axis
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
plotNodeFlows(limfile = N4, limList = N4LIM, flowfrom = "INVERTEBRATE")
#OR
plotNodeFlows(limfile = N4list$N4, limList = N4list$N4LIM, flowfrom = "INVERTEBRATE")
}
