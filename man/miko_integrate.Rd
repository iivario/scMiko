% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/integration_functions.R
\name{miko_integrate}
\alias{miko_integrate}
\title{scRNAseq integration wrapper}
\usage{
miko_integrate(
  object,
  split.by = "Barcode",
  min.cell = 50,
  k.anchor = 20,
  k.weight = 35,
  nfeatures = 3000,
  split.prenorm = F,
  assay = "RNA",
  variable.features.n = 3000,
  verbose = T,
  use.existing.sct = F,
  conserve.memory = F,
  vars.to.regress = "percent.mt"
)
}
\arguments{
\item{object}{Seurat object}

\item{split.by}{Meta data feature to split and integrate data.}

\item{min.cell}{Minimum number of cells permitted per object prior to integration.}

\item{k.anchor}{How many neighbors (k) to use when picking anchors.}

\item{k.weight}{Number of neighbors to consider when weighting anchors.}

\item{nfeatures}{Number of features to return (passed to SelectIntegrationFeatures)}

\item{split.prenorm}{Split data before (TRUE) or after (FALSE) normalization.}

\item{assay}{Assay to use for normalization.}

\item{variable.features.n}{Use this many features as variable features after ranking by residual variance; default is 3000.}

\item{verbose}{Print progress. Default is TRUE.}

\item{use.existing.sct}{If TRUE, existing SCT model is used. Default is FALSE (new SCT model is fit)}

\item{conserve.memory}{If set to TRUE the residual matrix for all genes is never created in full when running SCTransform; useful for large data sets, but will take longer to run; this will also set return.only.var.genes to TRUE; default is FALSE}

\item{vars.to.regress}{meta features to regress out. Default is "percent.mt". Set to NULL if unspecified.}
}
\value{
Integrated seurat object
}
\description{
scRNAseq normalization and integration wrapper. Given seurat object input, data are split, normalized and integrated.
}
\seealso{
\code{\link{IntegrateData}}
}
\author{
Nicholas Mikolajewicz
}
