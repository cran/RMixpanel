\name{mixpanelGetRetention}
\alias{mixpanelGetRetention}

\title{
Retention report.
}
\description{
Get matrix of retention data 
}
\usage{
mixpanelGetRetention(account, event, from, to, unit, retentionType, 
  intervalCount, percentages, ...)
}

\arguments{
\item{account}{A mixpanel account, as defined in \code{mixpanelCreateAccount}.}
\item{event}{Event name. If empty, all events are returned.}
\item{from}{Start date in either format <"yyyy-mm-dd"> or <yyyymmdd>. Inclusive. }
\item{to}{End date in either format <"yyyy-mm-dd"> or <yyyymmdd>. Inclusive.}
\item{unit}{Defaults to 'day'.}
\item{retentionType}{'birth' (=First time) or 'compounded' (=Recurring). Defaults to 'birth'.}
\item{intervalCount}{Number of intervals per cohort to return.}
\item{percentages}{Output as counts or percentages?}
\item{...}{ Additional arguments to Mixpanel API. E.g. born_event='Event name'  (needed for retention type 'birth'), or born_where='properties["Prop name"]=="value"' }
}
\value{
Matrix consisting of one row for each cohort. The first column shows cohort sizes, the following columns the counts for subsequent periods. If \code{percentages} is TRUE, the counts are percentages (except column no. 1).
}
\references{
\url{https://mixpanel.com/docs/api-documentation/data-export-api#retention-default}
}
\author{
Meinhard Ploner}

\seealso{
\code{\link{mixpanelGetAddiction}}
}

\examples{
\dontrun{
## Fill in here the API token, key and secret as found on 
## www.mixpanel.com - Account -> Projects. 
account = mixpanelCreateAccount("ProjectName",
                                token="c12g3...",
                                secret="168e7e...", 
                                key="543c55...")
mixpanelGetRetention(account, born_event="AppInstall", event="WatchedItem", 
                     from=20150701, to=20151101, unit="week", percentages=TRUE)
}}

\keyword{mixpanel}
\keyword{addiction}
\keyword{retention}
