% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/marker_functions.R
\name{findCDIMarkers}
\alias{findCDIMarkers}
\title{Calculate feature co-dependency index}
\usage{
findCDIMarkers(
  object,
  features.x = NULL,
  features.y = rownames(object),
  ncell.subset = 5000,
  geosketch.subset = F,
  assay = DefaultAssay(object),
  slot = "data",
  n.workers = 1,
  verbose = T
)
}
\arguments{
\item{object}{Seurat object}

\item{features.x}{feature or meta feature. CDI between features.x and features.y are computed.}

\item{features.y}{feature or meta feature. CDI between features.x and features.y are computed.}

\item{ncell.subset}{max number of cells to run analysis on. Default is 5000. Computationally intensive for larger datasets.}

\item{geosketch.subset}{Use GeoSketch method to subsample scRNA-seq data while preserving rare cell states (https://doi.org/10.1016/j.cels.2019.05.003). Logical, T or F (Default F). Recommended if cell type representation is imbalanced.}

\item{assay}{Assay to run CDI scoring on. Default is DefaultAssay(object).}

\item{slot}{slot to run CDI scoring on. Default is data.}

\item{n.workers}{number of workers for parallel implementation. Default is 1 (no parallel).}

\item{verbose}{print progress. Default is T.}
}
\value{
data.frame with CDI scores.
}
\description{
Calculate feature co-dependency index (CDI).
}
\seealso{
\code{\link{binom.test}}
}
\author{
Nicholas Mikolajewicz
}
