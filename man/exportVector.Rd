\name{exportVector}
\alias{exportVector}
\title{
The creation of the export vector required for packing into the enaR network object

}
\description{
The output created will be a single list of vectors that holds the cumulative value for the export elements per node.
}
\usage{
exportVector(limfile,limList)
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

\examples{
	exportVectorList <- exportVector(limfile = N4, limList = N4LIM)
}
