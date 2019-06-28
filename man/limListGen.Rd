\name{limListGen}
\alias{limListGen}
\title{
LIM Networks Generation
}
\description{
This function creates multiple possible network models from the limfile created from \code{\link{LIMbuild}}.
Roughly 1000 networks/second.
When calling the function, the user is required to enter the lim file, the number of iterations required and the jump vaue.
Using the xsample function, it is applied to the LIM file to create interations(step 1).
Using the flowmatrix function, it is applied to each iteration created in step 1 to produce a flowmatrix for the respective iteration(step 2).
The output of step 1 will be a matrix of all iterations as and the output of step 2 will be a single list of respective flowmatrices.
}
\usage{
limListGen(limfile,...)
}

\arguments{
  \item{limfile}{
This is the user generated food web LIM file created for analysis purposes.
}
\item{...}{
Parameters avaliable through the use of the \code{\link[limSolve]{xsample}} function.
}
}
\details{
By using a food web LIM file that follows the required format,processing can be done to create multiple flowmatrices based on the input. Each flowmatrix is a plausible network model and depicts the flows between internal nodes as well as external nodes and the respiration element. These default amount of iteration created, as defined by \code{\link[limSolve]{xsample}}, is 3000. All matrices are stored into a single list.

}
\value{
Returned is a list of iterations each containing a matrix which is a single network model.
Also returned is a dataframe of how the data is read and interpreted.
}

\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler
}
\note{

Generation times can differ depending on parameters applied and processing power.

NULL jmp values usually require more time.
}

\examples{
##----------------------------------------------------------------------##
## A simple four node network with 150 iterations and default jump size ##
##----------------------------------------------------------------------##

N4LIM <- limListGen(limfile = N4, iter = 150)

##---------------------------------------------------------------------##
## A simple four node network with 10000 iterations and jump size of 1 ##
##---------------------------------------------------------------------##

N4LIM <- limListGen(limfile = N4, iter = 10000, jmp = 1)


}
