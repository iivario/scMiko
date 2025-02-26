% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{getUMAP}
\alias{getUMAP}
\title{Get UMAP data and plot from Seurat object.}
\usage{
getUMAP(
  object,
  umap.key = "umap",
  node.type = "point",
  meta.features = colnames(object@meta.data),
  size = autoPointSize(ncol(object)),
  ...
)
}
\arguments{
\item{object}{Seurat Object.}

\item{umap.key}{Character UMAP key slot in seurat object. Default is "umap"}

\item{node.type}{"point" or "text"}

\item{meta.features}{character vector specifying which meta features to retrieve. Default is  `colnames(object@meta.data)`}

\item{...}{additional parameters to geom_point or geom_text}
}
\value{
list containing UMAP data.frame and ggplot handle
}
\description{
Get UMAP data and plot from Seurat object.
}
\examples{

wnnUMAP.list <- getUMAP(so.gene, umap.key = "wnn.umap", node.type = "text")

df.wnn.umap <- wnnUMAP.list$df.umap
plt.wnn.umap <- wnnUMAP.list$plt.umap

}
\author{
Nicholas Mikolajewicz
}
