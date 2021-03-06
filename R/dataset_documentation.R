#' The dropout probabilities
#' 
#' The data was obtained from the 'child outcomes data.xlsx' file in the worksheet 'Schooling Data'.
#' Cells B5:B16 and H5:H16 were used. Note that this was calculated in that sheet from other
#' source data. See A20:B41
#' 
#' Column names were chosen to match the parameter names used in the modgen model.
#'
#' @docType data
#' @keywords datasets
#' @name DropOutRates
#' @usage data(DropOutRates)
#' @format One probability for a given age and socio economic status per row
NULL

#' The abuse probabilities
#' 
#' The data was obtained from the 'Abuse data' worksheet in the 'child outcomes data.xlsx' file. The data is contained
#' in cells A3:Y10. Note that the disease states 
#' represented by X0 to X5 in this sheet does not exactly match the disease states in the model:
#' \itemize{
#'   \item X0: the 'HEALTHY' state
#'   \item X1: the INFECTED and DIAGNOSED states
#'   \item X2: the SYMPTOMS state
#'   \item X3: the TREATED state
#'   \item X4: represents a state defined by chronic illness while on treatment. The ModGen model does not have this state.
#'   \item X5: DEATH
#' }
#' 
#' @docType data
#' @keywords datasets
#' @name AbuseRates
#' @usage data(AbuseRates)
#' @format Each row contain the probabilities for one age. The first column contains the age. The other columns contain the
#' rates. The rates are split up by gender (f/m), socio economic status (l/h) and the mother's disease status (X0 to X5)
NULL

#' The depression probabilities in absence of abuse
#' 
#' The data was obtained from the 'Depression' worksheet in the 'child outcomes data.xlsx' file. The data is contained
#' in cells A4:Y11. Note that the disease states 
#' represented by X0 to X5 in this sheet does not exactly match the disease states in the model:
#' \itemize{
#'   \item X0: the 'HEALTHY' state
#'   \item X1: the INFECTED and DIAGNOSED states
#'   \item X2: the SYMPTOMS state
#'   \item X3: the TREATED state
#'   \item X4: represents a state defined by chronic illness while on treatment. The ModGen model does not have this state.
#'   \item X5: DEATH
#' }
#' 
#' @docType data
#' @keywords datasets
#' @name NotAbusedDepressionRates
#' @usage data(NotAbusedDepressionRates)
#' @format Each row contain the probabilities for one age. The first column contains the age. The other columns contain the
#' rates. The rates are split up by gender (f/m), socio economic status (l/h) and the mother's disease status (X0 to X5)
NULL

#' The depression probabilities in presence of abuse
#' 
#' The data was obtained from the 'Depression' worksheet in the 'child outcomes data.xlsx' file. The data is contained
#' in cells A14:Y21. Note that the disease states 
#' represented by X0 to X5 in this sheet does not exactly match the disease states in the model:
#' \itemize{
#'   \item X0: the 'HEALTHY' state
#'   \item X1: the INFECTED and DIAGNOSED states
#'   \item X2: the SYMPTOMS state
#'   \item X3: the TREATED state
#'   \item X4: represents a state defined by chronic illness while on treatment. The ModGen model does not have this state.
#'   \item X5: DEATH
#' }
#' 
#' @docType data
#' @keywords datasets
#' @name AbusedDepressionRates
#' @usage data(AbusedDepressionRates)
#' @format Each row contain the probabilities for one age. The first column contains the age. The other columns contain the
#' rates. The rates are split up by gender (f/m), socio economic status (l/h) and the mother's disease status (X0 to X5)
NULL

#' The incidence of sexual debut at early ages in the absence of abuse
#' 
#' The data was obtained from the 'Sexual debute' worksheet in the 'child outcomes data.xlsx' file. The data is contained
#' in cells A5:Y8. Note that the disease states 
#' represented by X0 to X5 in this sheet does not exactly match the disease states in the model:
#' \itemize{
#'   \item X0: the 'HEALTHY' state
#'   \item X1: the INFECTED and DIAGNOSED states
#'   \item X2: the SYMPTOMS state
#'   \item X3: the TREATED state
#'   \item X4: represents a state defined by chronic illness while on treatment. The ModGen model does not have this state.
#'   \item X5: DEATH
#' }
#' 
#' @docType data
#' @keywords datasets
#' @name NotAbusedDebutRates
#' @usage data(NotAbusedDebutRates)
#' @format A row for each age. The column names indicate the different risk factors. 
#' The probabilities are split up by gender (f/m), socio economic status (l/h) and the mother's disease status (X0 to X5)
NULL

#' The incidence of sexual debut at early ages in the presence of abuse
#' 
#' The data was obtained from the 'Sexual debute' worksheet in the 'child outcomes data.xlsx' file. The data is contained
#' in cells A12:Y15. Note that the disease states 
#' represented by X0 to X5 in this sheet does not exactly match the disease states in the model:
#' \itemize{
#'   \item X0: the 'HEALTHY' state
#'   \item X1: the INFECTED and DIAGNOSED states
#'   \item X2: the SYMPTOMS state
#'   \item X3: the TREATED state
#'   \item X4: represents a state defined by chronic illness while on treatment. The ModGen model does not have this state.
#'   \item X5: DEATH
#' }
#' 
#' @docType data
#' @keywords datasets
#' @name NotAbusedDebutRates
#' @usage data(NotAbusedDebutRates)
#' @format A row for each age. The column names indicate the different risk factors. 
#' The probabilities are split up by gender (f/m), socio economic status (l/h) and the mother's disease status (X0 to X5)
NULL
