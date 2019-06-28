\name{outputVector}
\alias{outputVector}
\title{
The creation of the output vector required for packing into the enaR network object
}
\description{
Uses vector addition for the respective export vector and the respiration vector in the vector lists to produce a single vector list.
The output created will be a single list of vectors that holds the output value (exports + resp) for each node per interation.
}
\usage{
outputVector(limfile,expVec,rspVec)
}
\arguments{
  \item{limfile}{
This is the user generated LIM file created for analysis purposes.

}
\item{expVec}{
A list containing all export vectors generated
}
\item{rspVec}{
A list of all respiration vectors generated
}
}

\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler}

\examples{
	\donttest{outputVecList <- outputVector(limfile = N4,
	expVec = exportVectorList, rspVev = respVectorList)}
}
