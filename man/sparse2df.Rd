% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{sparse2df}
\alias{sparse2df}
\title{Convert sparse matrix to data.frame}
\usage{
sparse2df(mat.sparse, block.size = 10000, transpose = F, verbose.error = F)
}
\arguments{
\item{mat.sparse}{Sparse matrix.}

\item{block.size}{If large dataset, construct data.frame column-wise block-by-block, where block size is specified by numeric block.size parameter. Default is 10000.}

\item{transpose}{Logical specifying whether to transpose data.}

\item{verbose.error}{Logical specifying whether to print error message in case of large dataset which requires block-by-block construction.}
}
\value{
data frame
}
\description{
Convert sparse matrix to data.frame. Developed to handle large datasets, by constructing data.frame block-by-block.
}
\examples{

# Get sparse matrix
exp.mat <- so@assays[[current.assay]]@data

# convert to data.frame
df <- sparse2df(mat.sparse, transpose = T)

}
\seealso{
\code{\link{sparse2dense}}
}
\author{
Nicholas Mikolajewicz
}
