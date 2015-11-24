\name{profilesJson2RMatrix}
\alias{profilesJson2RMatrix}

\title{Convert profiles data in json format to R matrix.}

\description{Convenience function to convert json result of engage API to R matrix holding people data.}

\usage{profilesJson2RMatrix(jsonData, select = TRUE)}

\arguments{
  \item{jsonData}{Result of request to Mixpanel's Engage API.}
  \item{select}{If \code{"select"} is an array of column names, only the specified properties are selected. If \code{TRUE}, all columns are selected.}
}

\details{Ths helper function takes a json result as of the Mixpanel Engage API and creates a R matrix holding the data. Array user properties are collapsed using a dash ('-') as separator.}

\value{A character matrix showing one profile per line. The first column represents the distinct ID of the profile, the other column the profile properties.}

\author{Meinhard Ploner}

\seealso{\code{\link{mixpanelGetProfiles}}}

\keyword{mixpanel}
\keyword{parse}