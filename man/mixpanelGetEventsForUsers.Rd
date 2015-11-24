\name{mixpanelGetEventsForUsers}
\alias{mixpanelGetEventsForUsers}

\title{Get events from Mixpanel API.}

\description{Get a matrix filled with events taken from the Mixpanel API. }

\usage{mixpanelGetEventsForUsers(account, distinctIDs, from, to, verbose, ...)}

\arguments{
\item{account}{A mixpanel account, as defined in \code{mixpanelCreateAccount}.}
\item{distinctIDs}{Array of profile IDs.}
\item{from}{Date in format yyyy-mm-dd, where month number starts with 0.}
\item{to}{Date in format yyyy-mm-dd, where month number starts with 0.}
\item{verbose}{Parameter passed to \code{mixpanelGetData}. Boolean.}
\item{...}{List of additional arguments being included in the Mixpanel API request. E.g. limit=5, from_date="2015-01-01", to_date="2015-06-01", ...}
}

\value{A character matrix showing one event per line. The first column represents the name of the event, the other column the event properties.}

\author{Meinhard Ploner}

\seealso{
\code{\link{mixpanelGetProfiles}},
\code{\link{mixpanelGetEvents}}
}

\keyword{mixpanel}
\keyword{events}
