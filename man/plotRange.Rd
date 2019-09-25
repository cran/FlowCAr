\name{plotRange}
\alias{plotRange}

\title{
Graphical representation of flow ranges and possible network flow values
}
\description{
The plotRange function allows the user to generate a plot illustrating the range of each flow, the parsimonious solution for each flow, the average of the flow value calculated using the (\code{\link{limListGen}}) function, each iteration calculated using the (\code{\link{limListGen}}) function and the restricted flow values using the function (\code{\link{flowLimit}})
}
\usage{
plotRange(limfile, limList, limListLimit = NULL, legend, avcol="green",
          allcol="red", limitcol="blue", avpch=16, allpch=3, limitpch=3, ...)
}

\arguments{
  \item{limfile}{
This is the user generated LIM file created for analysis purposes.
}
  \item{limList}{
The list of networks solved using LIM (\code{\link{limListGen}})
}
  \item{limListLimit}{
The new list of restricted networks limited through (\code{\link{flowLimit}})
}
\item{avcol}{
Chosen colour for the point representing the average of the LIM iterations, default is "green".
}
\item{allcol}{
Chosen colour for the points representing each of the LIM iterations, default is "red".
}
\item{limitcol}{
Chosen colour for the points representing each of the restricted LIM iterations, default is "blue".
}
\item{avpch}{
Chosen point type for the point representing the average of the LIM iterations, default is 16.
}
\item{allpch}{
Chosen point type for the points representing the LIM iterations, default is 3.
}
\item{limitpch}{
Chosen point type for the points representing the restricted LIM iterations, default is 3.
}
\item{legend}{
Boolean. If TRUE will add a legend to the top right of the figure.
}
\item{...}{
A list of arguments outlined in \code{\link[LIM]{Plotranges}}
}
}

\examples{
plotRange(limfile = N4,limList = N4LIM,legend = TRUE,xlab ="Flow Range Value")
#OR after enaListGen function has been used
plotRange(limfile = N4list$N4,limList = N4list$N4LIM,legend = TRUE,xlab ="Flow Range Value")
#After Restrictions has been applied (using flowLimit function)
\donttest{N4LIMv <- data(N4LIMv)
plotRange(limfile = N4,limList = N4LIM,
limListLimit = N4LIMv,legend = TRUE,xlab ="Flow Range Value")

#OR enaListGen has been used
plotRange(limfile = N4list$N4,limList = N4list$N4LIM,
limListLimit = N4LIMv,legend = TRUE,xlab ="Flow Range Value")
}
}
\value{
A graphical plot

}

\author{
Christopher Waspe

Ruchit Mahabir

Ursula Scharler
}

\seealso{
\code{\link{Plotranges}}
}
