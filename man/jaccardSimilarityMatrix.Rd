% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{jaccardSimilarityMatrix}
\alias{jaccardSimilarityMatrix}
\title{Jaccard Similarity Matrix}
\usage{
jaccardSimilarityMatrix(gene.sets, y = NULL, assert.unique = T)
}
\arguments{
\item{gene.sets}{named list of genesets, where names specify name of gene set, and entries are character vectors specifying genes belongs to the respective set.}

\item{y}{Optional second gene set. If provided, resulting matrix is gene.sets x y.}

\item{assert.unique}{Logical flag specifying whether to remove duplicate entries within individual sets. Default is TRUE.}
}
\value{
Jaccard similarity matrix
}
\description{
Computes Jaccard similarity mtrix for list of genesets
}
\examples{

# compute jaccard similarity matrix for (named) list of genesets.
j.mat <- jaccardSimilarityMatrix(gene.sets)

# generate heatmap
pheatmap::pheatmap(j.mat, show_colnames = F, main = "Jaccard Similarity")

}
\seealso{
\code{\link{pheatmap}}
}
\author{
Nicholas Mikolajewicz
}
