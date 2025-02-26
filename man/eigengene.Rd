% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis_functions.R
\name{eigengene}
\alias{eigengene}
\title{Compute eigengene}
\usage{
eigengene(
  mat,
  cells.are.rows = T,
  do.scale = T,
  align = T,
  return.vector.only = T,
  verbose = T
)
}
\arguments{
\item{mat}{cell x gene expression matrix}

\item{cells.are.rows}{Specify whether cells are in row of matrix. Default is T.}

\item{do.scale}{scale data. Default is T.}

\item{align}{Align basis vector with direction of expression.}

\item{return.vector.only}{Logical specifying whether to return vector only. Default is True.}

\item{verbose}{Print progress. Default is TRUE.}
}
\value{
eigengene vector
}
\description{
Computes basis vector with highest eigenvalue (i.e., first principal component, or axis of variation that explains the highest proportion of variance)
}
\seealso{
\code{\link{svd}}
}
