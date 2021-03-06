\name{pandoc.emphasis.return}
\alias{pandoc.emphasis}
\alias{pandoc.emphasis.return}
\title{Emphasis}
\usage{
  pandoc.emphasis.return(x)
}
\arguments{
  \item{x}{character vector}
}
\value{
  By default this function outputs (see: \code{cat}) the
  result. If you would want to catch the result instead,
  then call the function ending in \code{.return}.
}
\description{
  Pandoc's markdown emphasis format (e.g. \code{*FOO*}) is
  added to character string.
}
\examples{
pandoc.emphasis('FOO')
pandoc.emphasis(c('FOO', '*FOO*'))
pandoc.emphasis.return('FOO')
}
\references{
  John MacFarlane (2012): _Pandoc User's Guide_.
  \url{http://johnmacfarlane.net/pandoc/README.html}
}
\seealso{
  \code{\link{pandoc.strong}}
  \code{\link{pandoc.strikeout}}
  \code{\link{pandoc.verbatim}}
}

