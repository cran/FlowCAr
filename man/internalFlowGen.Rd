\name{internalFlowGen}
\alias{internalFlowGen}
\title{
Internal flowmatrix generation
}
\description{
Generates a flow matrix using just the internal nodes of a network for the enaR network object.
The output created will be a single list of matrices that holds the internal flows for each interation.
}
\usage{
internalFlowGen(limfile, limList)
}
\arguments{
  \item{limfile}{
This is the user generated LIM file created for analysis purposes.
}
  \item{limList}{
The list of networks solved using LIM (\code{\link{limListGen}})

}
}
\details{
Generating the internal flowmatrix of each iteration of all flowmatrices.
}

\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler
}

\examples{
	InternalFlowMatrices <- internalFlowGen(limfile = N4, limList = N4LIM)
}
