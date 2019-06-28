\name{PackNet}
\alias{PackNet}
\title{
Packing possible LIM networks into a list.
}
\description{
Through the use of certain functions in this package, a list of enaR network objects are created.
The output created is a list of network objects ready to be used in enaR.
In order to 'pack' an enaR network object, you require a flow matrix of type 'matrix'.
You will require input,respiration,export, and output vectors of type 'vector'
Storage consists of the 'components' value from the LIM file called using "'limfile'$Components" where limfile is the name of the lim file read in.
Living requires a vector consisting of true and false values to indicate whether the corresponding node is alive or dead.
The LIMtoENA functions provide this requirements.
}
\usage{
PackNet(internalflows, importsvec, respvec, exportsvec, outputsvec, biomassC, livingvec)
}
\arguments{
  \item{internalflows}{
A list containing matrices of the internal flows of a network.
}
  \item{importsvec}{
A list containing vectors of import values for a network.
}
  \item{respvec}{
A list containing vectors of respiration values for a network.

}
  \item{exportsvec}{
A list containing vectors of export values for a network.

}
  \item{outputsvec}{
A list containing vectors of output values for a network.

}
  \item{biomassC}{
A vector of biomass values for a network.

}
  \item{livingvec}{
A vector of true and false values for living and non-living nodes in a network.

}
}

\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler
}

\examples{
\donttest{PackedNetworkObjectList <- PackNet(internalflows, 
importsvec, respvec, exportsvec, outputsvec, biomassC, livingvec)}
}
