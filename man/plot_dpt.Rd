% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting_functions.R
\name{plot_dpt}
\alias{plot_dpt}
\title{plot_dpt}
\usage{
plot_dpt(position, heteroplasmy_matrix, cluster, time, gam_fit_result, index)
}
\arguments{
\item{position}{Character name of the base to plot.}

\item{heteroplasmy_matrix}{Third element returned by \emph{get_heteroplasmy}.}

\item{cluster}{Vector specifying a partition of the samples.}

\item{time}{Vector of diffusion pseudo time,with length equal to n_row of
\emph{heteroplasmy_matrix}.}

\item{gam_fit_result}{Data frame returned by \emph{dpt_test}.}

\item{index}{Fifth element returned by \emph{get_heteroplasmy}.}
}
\value{
ggplot object of the heteroplasmy level of a specific base across
samples and the GAM fitted curve. The title shows the adjusted p value (FDR)
for the position obtained from \emph{get_heteroplasmy}.
}
\description{
plot_dpt
}
\seealso{
\url{https://cran.r-project.org/package=gam}
}
\author{
Gabriele Lubatti \email{gabriele.lubatti@helmholtz-muenchen.de}
}
