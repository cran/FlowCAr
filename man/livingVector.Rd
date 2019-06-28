\name{livingVector}
\alias{livingVector}
\title{
Generation of a single logical (TRUE/FALSE) vector based on the naming structure of the LIM file

}
\description{
Nodes with “NLnode” (not case sensitive) are viewed as non-living nodes and are thus “FALSE” values in the vector. All living nodes have a “TRUE” value.
}
\usage{
livingVector(limfile)
}
\arguments{
  \item{limfile}{
This is the user generated LIM file created for analysis purposes.

}
}

\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler
}

\examples{
livingVecList <- livingVector(limfile = N4)
}
