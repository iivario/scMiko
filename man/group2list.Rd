% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/network_functions.R
\name{group2list}
\alias{group2list}
\title{Named list of cells grouped by meta feature from Seurat object}
\usage{
group2list(object, group = "seurat_clusters", is.num = F, prefix = "")
}
\arguments{
\item{object}{Seurat object}

\item{group}{grouping feature (must be present in `object` meta data). Default is "seurat_clusters".}

\item{is.num}{whether `group` is a numerical feature.}

\item{prefix}{prefix added to each named entry in list. Default is "".}
}
\value{
Returns named list of cells grouped by meta feature from Seurat object.
}
\description{
Returns named list of cells grouped by meta feature from Seurat object.
}
\author{
Nicholas Mikolajewicz
}
