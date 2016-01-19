\name{mixpanelUpdateProfile}
\alias{mixpanelUpdateProfile}

\title{Update Mixpanel Profile}

\description{Update Mixpanel profiles (also called 'users' or 'people') using the Mixpanel Engage API.}

\usage{mixpanelUpdateProfile(account, distinctID, data, 
	updateLastSeen=FALSE, updateLocation=FALSE, retryCount=100)}

\arguments{
  \item{account}{A mixpanel account, as defined in \code{mixpanelCreateAccount}.}
  \item{distinctID}{A distinct ID, identifying the profile. Could be extracted by calling \code{mixpanelGetProfiles}}
  \item{data}{JSON dictionary with property names and values. See Mixpanel documentation or example below.}
  \item{updateLastSeen}{If \code{true}, Mixpanel will update the \emph{Last Seen} property. Default is \code{false}}
  \item{updateLocation}{If \code{false}, Mixpanel will not update the IP address of the profile. Default is \code{false}}
  \item{retryCount}{Applied if the HTTP request fails.}
}

\value{None.}

\examples{
\dontrun{
## Fill in here the API token, key and secret as found on 
## www.mixpanel.com - Account -> Projects. 
account = mixpanelCreateAccount("ProjectName",
                                token="c12g3...",
                                secret="168e7e...", 
                                key="543c55...")
                                
mixpanelUpdateProfile(
  account, 
  "11b9c243-4ea3...",  
  data=list( 
    "$set"=list(day=jsonlite::unbox(12), 
                month=jsonlite::unbox(3), 
                "$name"=jsonlite::unbox("Dummy name")),
    "$setOnce"=list(installYear=2016),
    "$unset"=c("oldProp1", "oldProp2"),
    "$union"=list(month=10:12)
    ## "$delete": ""    ## !!! Delete user. !!!
  )
)
}}
  
\references{\url{https://mixpanel.com/help/reference/http#people-analytics-updates}}

\author{Meinhard Ploner}


\seealso{\code{\link{mixpanelGetProfiles}}}

\keyword{mixpanel}
\keyword{people}
\keyword{profile}
