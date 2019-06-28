\name{flowLimit}
\alias{flowLimit}
\title{
Change the sampled ranged of a specific flow
}
\description{
If a flow seems to be falling outside the scope of your required work, a restriction can be placed on it to allow only required values to be considered in processing.
When calling the function, the user is required to enter the list of LIM networks created in the '(\code{\link{limListGen}})' function. Following that, the flow name must be specified.
Thereafter, a minimum value and a maximum value can be specified to create a new list of matrices that adhere to the restrictions. (step 3)
Alternatively, just a minimum value can be entered to create a list of matrices where all values above the minimum value for the specified flow are stored into a new list. (step 1)
This works the same for entering just a maximum value, where all values for the specified flow below the maximum value entered are stored into a new list. (step 2)
When entering just one value, the other value can be left blank or declared 'NULL'
The output created will be a new list of LIM networks according to the contstraints required.
}
\usage{
flowLimit(limfile,limList,flow,minVal,maxVal)
}
\arguments{
  \item{limfile}{
This is the user generated LIM file created for analysis purposes.
}
  \item{limList}{
The list of networks solved using LIM (\code{\link{limListGen}})

}
  \item{flow}{
This is the flow which is being restricted/limited
}
  \item{minVal}{
This is the minimum value to discard all values below
}
  \item{maxVal}{
This is the maximum value to discard all values above
}
}
\details{
If certain flows need to be restricated due to some values not being correct, they can be discared here by selecting a range of values to keep for processing.
}
\value{
[[1]]A matrix of all flow values, which can be used for visualisation

[[2]] A list of LIM networks
}

\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler
}

\examples{
##------------------------------------------------------------##
## A simple four node network                                 ##
##------------------------------------------------------------##

viableNodesRangeTest <- flowLimit(limfile = N4,limList = N4LIM,
flow = "pp->invertebrate",minVal = 50, maxVal = 300)
viableNodesMinTest <- flowLimit(limfile = N4,limList = N4LIM,
flow = "pp->invertebrate",minVal = 50)
viableNodesMaxTest <- flowLimit(limfile = N4,limList = N4LIM,
flow = "pp->invertebrate",maxVal = 300)

}

