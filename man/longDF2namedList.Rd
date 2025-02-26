% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{longDF2namedList}
\alias{longDF2namedList}
\title{Convert long data frame to named list}
\usage{
longDF2namedList(df.long, group_by, values)
}
\arguments{
\item{df.long}{long data frame}

\item{group_by}{name of data frame column to group values by}

\item{values}{name of data frame column containing values}
}
\value{
named list
}
\description{
Convert long data frame to named list. Input long data frame consists of two columns, the first corresponding to the names within the list (group_by), and the second to the corresponding list entries (values).
}
\author{
Nicholas Mikolajewicz
}
