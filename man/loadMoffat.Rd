% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/M1_functions.R
\name{loadMoffat}
\alias{loadMoffat}
\title{Load preprocessed data from Moffat lab sciRNA-seq3 pipeline}
\usage{
loadMoffat(
  import_set,
  subsample_factor,
  input_organisms,
  organism_include,
  dir
)
}
\arguments{
\item{import_set}{Character vector specifying expression matrix (import_set[1]), PCR barcodes (import_set[2]) and RC barcodes (import_set[3]). Expression matrix will be imported successfully if barcodes are omitted.}

\item{subsample_factor}{Numeric [0,1]. Subsampling factor}

\item{input_organisms}{All species included in input files. One of:
\itemize{
\item "Hs" - Human
\item "Mm" - Mouse
\item c("Hs", "Mm") - both species included
}}

\item{organism_include}{Species to include in downstream analysis. One of:
\itemize{
\item "Hs" - Human
\item "Mm" - Mouse
\item c("Hs", "Mm") - both species included
}}

\item{dir}{Character. folder containing import_set files}
}
\value{
list containing Seurat Object and named gene vector.
}
\description{
Load preprocessed data from Moffat lab sciRNA-seq3 pipeline. RT barcode and plate summary is stored in misc slot of resulting seurat object.
}
