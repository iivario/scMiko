% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{findArtifactGenes}
\alias{findArtifactGenes}
\title{Identify artifact genes}
\usage{
findArtifactGenes(
  object,
  assay = NULL,
  features = NULL,
  meta.feature = "Barcode",
  umi.count.threshold = 5,
  nth.max = 2,
  difference.threshold = 30,
  group.specific.is.artefact = F,
  verbose = F
)
}
\arguments{
\item{object}{seurat object or named list of seurat objects.}

\item{assay}{assay containing count matrix. If unspecified, "RNA" assay is used. If "RNA" assay is missing, the default assay is used.}

\item{features}{genes used for analysis. If unspecified, variable genes are used.}

\item{meta.feature}{feature in meta data that provides dataset grouping information. Default is "Barcode".}

\item{umi.count.threshold}{cells that exceed this UMI count threshold are counted.}

\item{difference.threshold}{fold difference between largest and 3rd largest number of cells that is used to flag artifact genes for omission.}

\item{group.specific.is.artefact}{include genes that are only expressed in one dataset as artifacts. Default is FALSE.}

\item{verbose}{Print progress (T or F). Default is F.}
}
\description{
For each gene in each dataset, compute how many cells in that dataset have more UMI than a specified threshold (umi.count.threshold) of that gene. A plot comparing the largest number across data sets with the third largest number is generated. For the majority of genes, these values are expected to be similar, and therefore lie on a diagonal. Genes that exhibit differences (difference.threshold) between the largest and third-largest number of cells are flagged and returned. This approach is adopted from work by Lause, Berens, Kobak (2021) BioRxiv (See Figure S6)
}
\examples{
ag.res <-  findArtifactGenes(object = so, assay = NULL, features = NULL, meta.feature = "Barcode", umi.count.threshold = 5, difference.threshold = 100, verbose = T)
}
\author{
Nicholas Mikolajewicz
}
