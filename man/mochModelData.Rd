\docType{package}
\name{mochModelData}
\alias{mochModelData}
\alias{mochModelData-package}
\title{Data for the mother child model}
\description{
This package carefully documents the process by which the
source data for the project was turned into the input
parameters for the modgen model. The goals of the package
are 1) Provide a complete audit trail for all data
manipulations. 2) Provide comprehensive documentation that
will make it easy for anyone to replicate all the steps. 3)
Make some of the tools and tricks used to get the data to
work with the model available to other users of the model.
}
\details{
The package is organized as follows. The source data (as
obtained from emails etc) is available in the
extdata/src_dat folder in the project. A readme file in
that directory provides more details about the source data.
If modifications had to be made to those files that were
much easier in EXCEL or another tool, the source data was
modified and the modified copy was stored in
extdata/modified_dat. A readme file in that folder
describes how the modified data was constructed.

The actual data that is used to produce the input
parameters can be found in the data folder in .rda format.
This data can be loaded in R via data(). Each dataset in
the data folder will have comprehensive documentation on
how to obtain it from the src_dat or the modified_dat.

The data included in the package is further manipulated
into the formats required by the model using the various
functions in the package. These functions follow the
following conventions. 1) Their names are formatted like
this format_x where x is the name of the parameter in the
model. This is the internal name of the parameter in the
model and not the label of that parameter. 2) The functions
produce an output file. This is because the model requires
1 dimensional vectors. This package specifically inserts
comments in this 1 dimensional vector to greatly improve
the readibility of the output data. 3) The function is
based on a number (usually 1) of the datasets of the
package. 4) The function will provide arguments that allow
one to provide different datasets to these function, but if
no arguments are supplied, the internal datasets will be
used.
}

