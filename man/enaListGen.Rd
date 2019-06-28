\name{enaListGen}
\alias{enaListGen}
\title{
A one step method which creates a list of the limfile, list of LIM networks and list of packed enaR entwork objects.
}
\description{
The main function enaListGen produces a list which contains the limfile (created through \code{\link{LIMbuild}}), the list of LIM networks (created through \code{\link{limListGen}}) and the list of enaR network objects. The enaR network objects are created from a specified LIM input file, ready for use in enaR.
}
\usage{
enaListGen(Rfile, limfile, limList, limName, limListName, enaListName, 
           storeAll, flowCheck, ...)
}
\arguments{
  \item{Rfile}{
This is the user generated R text file defining the network.

}
\item{limfile}{
The created limfile (\code{\link{LIMbuild}})

}
  \item{limList}{
The list of networks solved using LIM (\code{\link{limListGen}})

}
\item{limName}{
If no limfile exists, the name of the limfile for the function to output

}
\item{limListName}{
If no limList exists, the name of the limList for the function to output

}
\item{enaListName}{
The name of the enaR network object list for the function to output

}
  \item{storeAll}{
Boolean. Indicates whether to store each enaR component as a separate list.

}
  \item{flowCheck}{
Boolean. Indicates whether to run flowCheck function.
}

  \item{...}{
Parameters avaliable through the use of the \code{\link[limSolve]{xsample}} function.
}

}

\value{
A list containing three objects

[[1]] The limfile

[[2]] The list of LIM networks

[[3]] The list of enaR network objects
}

\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler}

\examples{
#All steps in one
data(N4list)
\donttest{N4list <- enaListGen("4node.R", limName = "lim4",
                   limListName = "ll4", enaListName = "ena4",storeAll = FALSE,
                   flowCheck = FALSE, iter = 10000, jmp = NULL)
                   
#creates the following object

###If the limfile and limList has been created
N4LIM <- data(N4LIM)
N4list <- enaListGen(limfile = N4,limList = N4LIM, enaListName = "ena4")
###If only the limfile has been created
N4list <- enaListGen(limfile = N4,limListName = "lim4node",enaListName = "ena4",
                       iter = 10000, jmp = NULL)
}
}

