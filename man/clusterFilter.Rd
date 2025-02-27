% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{clusterFilter}
\alias{clusterFilter}
\title{Filter seurat object by specified cluster ids}
\usage{
clusterFilter(so, include = NULL, omit = NULL, which.field = "seurat_clusters")
}
\arguments{
\item{so}{Seurat Object}

\item{include}{Cluster ids to include. Optional, NULL if unspecified.}

\item{omit}{Cluster ids to omit. Optional, NULL if unspecified.}

\item{which.field}{Metadata field to filter by. Default is 'seurat_clusters'}
}
\value{
Seurat Object
}
\description{
Filter seurat object by specified cluster ids
}
\examples{

# specify filtering parameters
filter.parameters <- list(
     include = NULL,
     omit = c(8,9)
     )

# filter seurat
so.filtered <- clusterFilter(so, include = filter.parameters$include, omit = filter.parameters$omit)

}
\author{
Nicholas Mikolajewicz
}
