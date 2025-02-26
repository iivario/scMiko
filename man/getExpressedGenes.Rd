% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{getExpressedGenes}
\alias{getExpressedGenes}
\title{Identify expressed genes}
\usage{
getExpressedGenes(
  object,
  min.pct = 0.1,
  min.cell = NULL,
  group = NA,
  group.boolean = "OR"
)
}
\arguments{
\item{object}{Seurat Object}

\item{min.pct}{minimum expressing fraction. Default: 0.1. Ignored if min.cell is specified.}

\item{min.cell}{minimum number of expressing cells. If specified, min.pct is ignored.}

\item{group}{Character specifying metadata field to group cells by. If not specified, global expression fraction is evaluated. If specified, group-level gene lists are combined used group.boolean.}

\item{group.boolean}{Boolean used to combine group genelists. One of "OR" or "AND". Default: "OR". Argument is ignored if 'group' is not specified.}
}
\value{
vector of gene names
}
\description{
Identify expressed genes in Seurat object.
}
\examples{

split.var <- "seurat_clusters"
which.genes <- getExpressedGenes(object = so.query, min.pct = 0.1, group = split.var, group.boolean = "OR")

}
\author{
Nicholas Mikolajewicz
}
