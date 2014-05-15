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

#' Maps the column headers used in the "child outcomes data.xlsx" file to a data.frame
#' @param x The column header split on the periods

coerce_EXCEL_col_header_to_df <- function(x)
{
  data.frame(gender = x[1], 
             ses = x[2], 
             mds = x[3],
             stringsAsFactors = FALSE)
}

#' Converts the processed Abuse and Depression rates into nice strings.
#' @param x Processed Abuse or Depression Rates.
#' 
coerce_ABUSE_DEP_to_nice_string <- function(x){
  string <- ""
  n_ages <- length(unique(x$Age))
  for (i in 1:nrow(x)){
    if ((i-1) %% n_ages == 0){
      string <- paste(string, "//", x$gender[i], ", ", x$ses[i], ", ", x$mds[i], "\n", sep = "")
    }
    string <- paste(string, x$value[i], ", ", sep = "")
    if (i %% n_ages == 0){
      string <- paste(string, "\n", sep = "")
    }
  }
  string <- gsub(',[^,]*$', '', string)
  return(string)
}

#' Formats the AbuseRates into formats the ModGen can use.
#' 
#' Also maps the X0-X5 disease states onto the disease status used by the ModGen model
#' @param AbuseRates The dataset to be mapped and formatted.
#' @export

format_AbuseRates <- function(AbuseRates){
  AbuseRates <- melt(AbuseRates, id.vars = 'Age')
  AbuseRates$variable <- as.character(AbuseRates$variable)
  parsed_headers <- do.call(rbind, lapply(strsplit(AbuseRates$variable, '\\.'),
                                          coerce_EXCEL_col_header_to_df))
  AbuseRates <- cbind(parsed_headers, AbuseRates)
  AbuseRates$variable <- NULL
  
  remaps <- list(X0 = "HEALTHY",
                 X1 = "INFECTED",
                 X2 = "SYMPTOMS",
                 X3 = "TREATMENT",
                 X4 = "DIAGNOSED",
                 X5 = "DEATH")
  for (i in 1:nrow(AbuseRates)){
    AbuseRates$mds[i] <- remaps[[AbuseRates$mds[i]]]
  }
  AbuseRates$value[AbuseRates$mds == "DIAGNOSED"] <- AbuseRates$value[AbuseRates$mds == "INFECTED"]
  AbuseRates$mds <- factor(AbuseRates$mds, 
                           levels = c("HEALTHY", "INFECTED", "SYMPTOMS", 
                                      "DIAGNOSED", "TREATMENT", "DEATH"),
                           ordered = TRUE)
  
  AbuseRates <- AbuseRates[with(AbuseRates, order(gender, ses, mds, Age)),]
  modgen_repr <- coerce_ABUSE_DEP_to_nice_string(AbuseRates)
  return(modgen_repr)
}

#' Formats the NotAbusedDepressionRates into formats the ModGen can use.
#' 
#' Also maps the X0-X5 disease states onto the disease status used by the ModGen model
#' 
#' Just calls the format_AbuseRates function.
#' @param AbuseRates The dataset to be mapped and formatted.
#' @export

format_NotAbusedDepressionRates <- function(NotAbusedDepressionRates){
  names(NotAbusedDepressionRates)[1] <- "Age"
  format_AbuseRates(NotAbusedDepressionRates)
}

#' Formats the AbusedDepressionRates into formats the ModGen can use.
#' 
#' Also maps the X0-X5 disease states onto the disease status used by the ModGen model
#' 
#' Just calls the format_AbuseRates function.
#' @param AbuseRates The dataset to be mapped and formatted.
#' @export

format_AbusedDepressionRates <- function(AbusedDepressionRates){
  names(AbusedDepressionRates)[1] <- "Age"
  format_AbuseRates(AbusedDepressionRates)
}

#' Formats the Debut Rates into formats the ModGen can use. (Abused and Not Abused)
#' 
#' Also maps the X0-X5 disease states onto the disease status used by the ModGen model
#' @param DebutRates The dataset to be mapped and formatted.
#' @export

format_DebutRates <- function(DebutRates){
  format_AbuseRates(DebutRates)
}
