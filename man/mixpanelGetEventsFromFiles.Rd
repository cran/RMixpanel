\name{mixpanelGetEventsFromFiles}
\alias{mixpanelGetEventsFromFiles}

\title{
Get events from Mixpanel API.
}
\description{
Get a matrix filled with events taken from the Mixpanel API. 
}
\usage{
mixpanelGetEventsFromFiles(account, dateFrom, dateTo, eventNames=c(), 
  select=TRUE, blocksize=500000, verbose=TRUE)
}

\arguments{
  \item{account}{
A mixpanel account, as defined in \code{mixpanelCreateAccount}.
}
  \item{dateFrom}{
Start date in yyyy-mm-dd format, inclusive. 
}
  \item{dateTo}{
End date in yyyy-mm-dd format, inclusive.
}
  \item{eventNames}{
If an array of event names, only these are returned by the method. 
}
  \item{select}{
If \code{"select"} is an array of column names, only the specified properties are selected. If \code{TRUE}, all columns are selected. 
}
  \item{blocksize}{
Block size for reading files from disk.
}
\item{verbose}{
If \code{TRUE} more output is generated. 
}
}

\value{
A character matrix showing one event per line. The first column represents the name of the event, the other column the event properties.  
}

\author{
Meinhard Ploner}

\seealso{
\code{\link{mixpanelGetEvents}}
}


\keyword{mixpanel}
\keyword{events}
