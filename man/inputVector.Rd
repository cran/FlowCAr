\name{inputVector}
\alias{inputVector}
\title{
The creation of the input vector required for packing into the enaR network object

}
\description{
The generation of an input vector required for use in packing a lim file into an enaR network object.
The output created will be a single list of vectors that holds the cumulative value for the input elements per node.
}
\usage{
inputVector(limfile, limList)
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
inputVectorList <-  inputVector(limfile = N4, limList = N4LIM)

}
