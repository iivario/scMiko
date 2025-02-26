% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{entrez2sym}
\alias{entrez2sym}
\title{Convert entrez id to gene symbol}
\usage{
entrez2sym(my.entrez, my.species = c("Hs", "Mm"))
}
\arguments{
\item{my.entrez}{Character. Vector of Entrez IDs.}

\item{my.species}{Character. Species, one of "Hs" or "Mm".}
}
\value{
data.frame mapping Entrez IDs to gene Symbols.
}
\description{
Entrez ID is converted to gene symbol using org.Hs.eg.db or org.Mm.eg.db annotation databases.
}
