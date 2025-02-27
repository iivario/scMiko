% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis_functions.R
\name{getDEG}
\alias{getDEG}
\title{Get differentially expressed genes}
\usage{
getDEG(
  object,
  assay = DefaultAssay(object),
  data = "data",
  group_by = "seurat_clusters",
  auc.thresh = 0.6,
  fdr.thresh = 0.01,
  logFC.thresh = NA,
  pct.dif.thresh = NA,
  pct.in.thresh = NA,
  pct.out.thresh = NA,
  return.list = F,
  return.all = F,
  sig.figs = NA,
  verbose = T
)
}
\arguments{
\item{object}{Seurat object}

\item{assay}{assay. Default "SCT".}

\item{data}{data slot. Default "data".}

\item{group_by}{Name of grouping variable (must be present in object's meta.data)}

\item{auc.thresh}{AUC threshold. Default = 0.6.}

\item{fdr.thresh}{FDR threshold. Default = 0.01.}

\item{logFC.thresh}{logFC threshold. Default = NA.}

\item{pct.dif.thresh}{Difference in expression percentage. Default = NA.}

\item{pct.in.thresh}{Expression percentages exceeding this threshold are retained. Default is NA.}

\item{pct.out.thresh}{Expression percentages below this threshold are retained Default is NA.}

\item{return.list}{If TRUE, return list of differentially expressed genes. If FALSE, returns table with statistics from differential expression analysis.}

\item{return.all}{If TRUE, all thresholding filters are ignored, and all results are returned.}

\item{sig.figs}{If specified and return.list = F, rounds statistics to specified significant figure (recommended: 3). Default is NA.}

\item{verbose}{Print progress. Default is TRUE.}
}
\value{
data.frame or list. Statistics in data.frame output include:
\itemize{
\item avgExpr: Average expression for group
\item logFC: Log fold change
\item statistics: Test statistics
\item auc: Area under curve
\item pval: p-value
\item padj: adjusted p-value
\item pct_in: percentage of expressing cells within group
\item pct_out: percentage of expression cells outside of group
\item pct.dif: difference between pct_in and pct_out
\item sensitivity: pct_in/100
\item specificity: (100-pct_out)/100
\item PPV: positive predictive value
\item NPV: negative predictive value
\item ss: sensitivity x specificity
}
}
\description{
Differential expression analysis wrapper for presto::wilcoxauc(). Option to return differentially-expressed gene list (return.list = T) or statistics only (return.list = F)
}
\seealso{
\code{\link{wilcoxauc}}
}
\author{
Nicholas Mikolajewicz
}
