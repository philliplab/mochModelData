\docType{data}
\name{DepressionAbuseRates}
\alias{DepressionAbuseRates}
\title{The depression probabilities in presence of abuse}
\format{Each row contain the probabilities for one age. The first column contains the age. The other columns contain the
rates. The rates are split up by gender (f/m), socio economic status (l/h) and the mother's disease status (X0 to X5)}
\usage{
data(DepressionAbuseRates)
}
\description{
The data was obtained from the 'Depression' worksheet in
the 'child outcomes data.xlsx' file. The data is contained
in cells A14:Y21. Note that the disease states represented
by X0 to X5 in this sheet does not exactly match the
disease states in the model: \itemize{ \item X0: the
'HEALTHY' state \item X1: the INFECTED and DIAGNOSED states
\item X2: the SYMPTOMS state \item X3: the TREATED state
\item X4: represents a state defined by chronic illness
while on treatment. The ModGen model does not have this
state.  \item X5: DEATH }
}
\keyword{datasets}

