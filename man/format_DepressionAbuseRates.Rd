\name{format_DepressionAbuseRates}
\alias{format_DepressionAbuseRates}
\title{Formats the DepressionAbuseRates into formats the ModGen can use.}
\usage{
format_DepressionAbuseRates(DepressionAbuseRates)
}
\arguments{
  \item{AbuseRates}{The dataset to be mapped and formatted.
  Must have columns gender, ses, mds, Age and value.}
}
\description{
Also maps the X0-X5 disease states onto the disease status
used by the ModGen model
}
\details{
Just calls the format_AbuseRates function.
}

