\name{createDateSequence}
\alias{createDateSequence}

\title{Generate Sequences of daily dates. }

\description{Generate Regular Sequences of daily Dates for usage in other methods.}

\usage{
createDateSequence(from, to=from)
}

\arguments{
  \item{from}{Start date in either format <"yyyy-mm-dd"> or <yyyymmdd>. Inclusive.}
  \item{to}{End date in either format <"yyyy-mm-dd"> or <yyyymmdd>. Inclusive.}
}

\value{Array of daily dates in format yyyy-mm-dd as needed for use in Mixpanel's API.'}

\references{\url{https://mixpanel.com/docs/api-documentation/data-export-api}}

\author{Meinhard Ploner}

\keyword{mixpanel}

