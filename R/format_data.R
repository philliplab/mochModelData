#' Formats the DropOutRates into formats that modgen can use
#' @param DropOutRates The dataset to be formatted
#' @export

format_DropOutRates <- function(DropOutRates){
  DropOutRates <- DropOutRates[with(DropOutRates, order(SOCIO_ECONOMIC_STATE, SCHOOL_YEARS)),]
  modgen_repr <- ""
  prev_SOCIO_ECONOMIC_STATE <- ""
  first_entry <- TRUE
  for (i in 1:nrow(DropOutRates)){
    if (DropOutRates$SOCIO_ECONOMIC_STATE[i] != prev_SOCIO_ECONOMIC_STATE){
      modgen_repr <- paste(modgen_repr, "\n// ", DropOutRates$SOCIO_ECONOMIC_STATE[i], "\n", sep = "")  
      prev_SOCIO_ECONOMIC_STATE <- DropOutRates$SOCIO_ECONOMIC_STATE[i]
    }
    if (first_entry){
      sep_char <- ""
      first_entry <- FALSE
    } else {
      sep_char <- ", "
    }
    modgen_repr <- paste(modgen_repr, DropOutRates$DropOutRates[i], sep = sep_char)
  }
  return(modgen_repr)
}