% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flex_functions.R
\name{flex.multiTabPlot}
\alias{flex.multiTabPlot}
\title{Generate multi-tab ggplot handle list for flexdashboard}
\usage{
flex.multiTabPlot(plt.list, plt.list.name, fig.width = 5, fig.height = 5)
}
\arguments{
\item{plt.list}{list of ggplot handles}

\item{plt.list.name}{list name}

\item{fig.width}{Numeric. Figure width. Default is 5.}

\item{fig.height}{Numeric. Figure width. Default is 5.}
}
\value{
flexdashboard compatable list of plots
}
\description{
Prepares list of ggplot handles for multi-tab plot presentation in flexdashboards.
}
