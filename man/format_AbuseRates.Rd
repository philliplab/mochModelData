\name{format_AbuseRates}
\alias{format_AbuseRates}
\title{Formats the AbuseRates into formats the ModGen can use.}
\usage{
format_AbuseRates(AbuseRates)
}
\arguments{
  \item{AbuseRates}{The dataset to be mapped and formatted.
  Must have columns gender, ses, mds, Age and value.}
}
\description{
Also maps the X0-X5 disease states onto the disease status
used by the ModGen model
}

