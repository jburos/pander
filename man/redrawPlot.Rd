\name{redrawPlot}
\alias{redrawPlot}
\title{Redraw a recordedplot, grid, trellis, or ggplot2 plot.}
\usage{
  redrawPlot(recPlot)
}
\arguments{
  \item{the}{plot object to redraw}
}
\description{
  This function redraws the plot represented by
  \code{recPlot}. It can redraw grid/trellis/ggplot2/etc
  plots, as well as \code{recordedplot} objects. For
  \code{recordedplot} objects it acts as a wrapper around
  \code{replayPlot} with memory tweaks to fix native symbol
  address errors when the recordedplot was loaded from an
  rda/rds file.
}
\references{
  Thanks to Jeroen Ooms
  \url{http://permalink.gmane.org/gmane.comp.lang.r.devel/29897},
  JJ Allaire
  \url{https://github.com/rstudio/rstudio/commit/eb5f6f1db4717132c2ff111f068ffa6e8b2a5f0b},
  and Gabriel Becker.
}
\seealso{
  \code{\link{redraw.recordedplot}}
}

