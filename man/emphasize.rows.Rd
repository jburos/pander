\name{emphasize.rows}
\alias{emphasize.cells}
\alias{emphasize.cols}
\alias{emphasize.rows}
\alias{emphasize.strong.cells}
\alias{emphasize.strong.cols}
\alias{emphasize.strong.rows}
\title{Emphasize rows/columns/cells}
\usage{
  emphasize.rows(x)

  emphasize.cols(x)

  emphasize.cells(x)

  emphasize.strong.rows(x)

  emphasize.strong.cols(x)

  emphasize.strong.cells(x)
}
\arguments{
  \item{x}{vector of row/columns indexes or an array like
  returned by \code{which(..., arr.ind = TRUE)}}
}
\description{
  Storing indexes of cells to be (strong) emphasized of a
  tabular data in an internal buffer that can be released
  and applied by \code{\link{pandoc.table}},
  \code{\link{pander}} or \code{\link{evals}} later.
}
\examples{
\dontrun{
n <- data.frame(x = c(1,1,1,1,1), y = c(0,1,0,1,0))
emphasize.cols(1)
emphasize.rows(1)
pandoc.table(n)

emphasize.strong.cells(which(n == 1, arr.ind = TRUE))
pander(n)
}
}

