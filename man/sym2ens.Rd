% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{sym2ens}
\alias{sym2ens}
\alias{ensembl2sym}
\title{Convert gene symbol to ensembl}
\usage{
sym2ens(my.symbols, my.species)

ensembl2sym(my.ensembl, my.species)
}
\arguments{
\item{my.symbols}{Character. Vector of Gene symbols.}

\item{my.species}{Character. Species, one of "Mm" or "Hs".}

\item{my.ensembl}{Character. Vector of ENSEMBL ids.}
}
\value{
data.frame mapping gene Symbols to Ensembl

data.frame mapping gene Ensemble to Symbol
}
\description{
Gene symbol is converted to ensembl id using org.Hs.eg.db or org.Mm.eg.db annotation databases.

Gene ensemble id is converted to symbol using org.Hs.eg.db or org.Mm.eg.db annotation databases.
}
\author{
Nicholas Mikolajewicz
}
