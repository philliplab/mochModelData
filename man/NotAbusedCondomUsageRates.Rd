\docType{data}
\name{NotAbusedCondomUsageRates}
\alias{NotAbusedCondomUsageRates}
\title{The condom usage probabilities in absence of abuse}
\format{A single row with many columns. The column names indicate the different risk factors.
The probabilities are split up by gender (f/m), socio economic status (l/h) and the mother's disease status (X0 to X5)}
\usage{
data(NotAbusedCondomUsageRates)
}
\description{
The data was obtained from the 'Condom use' worksheet in
the 'child outcomes data.xlsx' file. The data is contained
in cells B7:Y8. Note that the disease states represented by
X0 to X5 in this sheet does not exactly match the disease
states in the model: \itemize{ \item X0: the 'HEALTHY'
state \item X1: the INFECTED and DIAGNOSED states \item X2:
the SYMPTOMS state \item X3: the TREATED state \item X4:
represents a state defined by chronic illness while on
treatment. The ModGen model does not have this state.
\item X5: DEATH }
}
\keyword{datasets}

