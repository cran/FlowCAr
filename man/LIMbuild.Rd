\name{LIMbuild}
\alias{LIMbuild}
\title{
Setting up and checking the LIM file formatting
}
\description{
Setting up of the LIM package and the enaR package is done in this function thus there is no need to do it prior e.g. using the functions \code{\link[LIM]{Read}} or \code{\link[LIM]{Setup}} from the LIM package.
When preparing to use the LIM file, this method will prompt the user to verify that the information output correctly represents what was intened.
Respiration node/element is required to be first in the externals list.
To correctly identify living or non-living nodes, all non-living nodes are required to have ‘NLNode’ at the end of the node name i.e. detritus would be detNLNode or detritusNLNode.
}
\usage{
LIMbuild(Rfile)
}
\arguments{
  \item{Rfile}{
This is the user generated R text file defining the network.
}
}
\details{
Used primarily for the FlowCAr package, this is a method simply for preparation and verification purposes that need not be run if entirely sure the requirements are met. If processing is conducted and results aren't what is expected, run this method to verify the lim file is set up correctly to fulfill the requiremnts.

Displayed in the console will be indications as to what data will be used for which calculation, however, it is up to the user to notice if anything is incorrect.
}
\value{
See "value" in \code{\link[LIM]{Setup}}
Console output depicting information about what processing will be done.

}
\references{
--need to reference lim package here
}
\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler
}
\note{
This function does no calculations and is not a necessity in order to proceed with the preparing of ENA network objects in this package.
}

\examples{
##------------------------------------------------------------##
## A simple four node network                                 ##
##------------------------------------------------------------##

  data(N4)
  N4
  
  #Output generated using the following code
  
  \donttest{N4 <- LIMbuild (Rfile = "4node.R")}


}
