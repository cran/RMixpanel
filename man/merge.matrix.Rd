\name{merge.matrix}
\alias{merge.matrix}

\title{
Merge two matrices.
}
\description{
Merge two matrices by common column names. Resulting matrix includes all data. Empty cells are filled with NA's. 
}
\usage{
\method{merge}{matrix}(x, y, ...)
}

\arguments{
  \item{x}{First matrix to be merged.}
  \item{y}{Second matrix to be merged.}
  \item{...}{Not used.}
  }
\value{
A matrix resulting from a join of the 2 matrices. 
}
\author{
Meinhard Ploner
}

\keyword{merge}

