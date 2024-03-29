% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auth.R
\name{dai_auth}
\alias{dai_auth}
\title{Check authentication}
\usage{
dai_auth(
  path = Sys.getenv("GCS_AUTH_FILE"),
  scopes = "https://www.googleapis.com/auth/cloud-platform"
)
}
\arguments{
\item{path}{path to a JSON file with a service account key}

\item{scopes}{GCS auth scopes for the token}
}
\value{
no return value, called for side effects
}
\description{
Checks whether the user can obtain an access token for
Google Cloud Services (GCS) using a service account key stored on file.
}
\details{
daiR takes a very parsimonious approach to authentication,
with the native auth functions only supporting service account files.
Those who prefer other authentication methods can pass those directly
to the \code{token} parameter in the various functions that call the
Document AI API.
}
\examples{
\dontrun{
dai_auth()
}
}
