\name{eventsJson2RMatrix}
\alias{eventsJson2RMatrix}

\title{Convert Mixpanel events to R matrix}

\description{Convenience method to convert from pseudo json of Mixpanel's export API to R matrix holding events.}

\usage{
eventsJson2RMatrix(jsonData, select = TRUE)
}

\arguments{
  \item{jsonData}{Result of request to Mixpanel's Export API.}
  \item{select}{If \code{select} is an array of column names, only the specified properties are selected. If \code{select} is \code{TRUE}, all columns are selected.}
}


\details{Ths helper function takes a json result as of the Mixpanel Export API and creates a R matrix holding the data. Array event properties are collapsed using a dash ('-') as separator.}

\value{A character matrix showing one event per line. The first column represents the name of the event, the other column the event properties.  }

\author{Meinhard Ploner}

\seealso{
\code{\link{mixpanelGetEvents}}
}

\keyword{mixpanel}
\keyword{parse}
