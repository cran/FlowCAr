\name{respVector}
\alias{respVector}
\title{
The creation of the respiration vector required for packing into the enaR network object

}
\description{
Creates a list of vectors for the presented respiration element.
The output created will be a single list of vectors that holds the respiration value for each node per interation.
}
\usage{
respVector(limfile,limList)
}
\arguments{
  \item{limfile}{
This is the user generated LIM file created for analysis purposes.

}
  \item{limList}{
The list of networks solved using LIM (\code{\link{limListGen}})

}
}

\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler
}
\note{
If structured correctly, the respiration element is the first item in the Externals list.}

\examples{
respVectorList <-  respVector(limfile = N4 , limList = N4LIM)
}
