% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_functions.R
\name{cluster.UMAP}
\alias{cluster.UMAP}
\title{UMAP stratified by cluster ID}
\usage{
cluster.UMAP(
  so,
  group.by = "seurat_clusters",
  x.label = "UMAP 1",
  y.label = "UMAP 2",
  plot.name = "UMAP",
  include.labels = T,
  reduction = "umap",
  pt.size = autoPointSize(ncol(so)),
  show.axis = T,
  ...
)
}
\arguments{
\item{so}{Seurat Object}

\item{group.by}{Character. Metadata feature to group data by. Default is 'seurat_clusters'.}

\item{x.label}{Character. X axis label.}

\item{y.label}{Character. Y axis label.}

\item{plot.name}{Character. Plot title.}

\item{include.labels}{Logical specifying wheter to plot group IDs on UMAP.}

\item{reduction}{Character specifying which dimensional reduction to use (e.g., umap, pca). Default is 'umap'.}

\item{show.axis}{show graph axis (omit theme_void from existing ggplot). Default is T.}

\item{...}{additional arguments passed to Seurat::DimPlot().}
}
\value{
ggplot handle
}
\description{
UMAP plot with colors indicating cluster membership
}
