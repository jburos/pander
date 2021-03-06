\name{pandoc.list.return}
\alias{pandoc.list}
\alias{pandoc.list.return}
\title{Create a list}
\usage{
  pandoc.list.return(elements,
    style = c("bullet", "ordered", "roman"), loose = FALSE,
    add.line.breaks = TRUE, add.end.of.list = TRUE,
    indent.level = 0)
}
\arguments{
  \item{elements}{character vector of strings}

  \item{style}{the required style of the list}

  \item{loose}{adding a newline between elements}

  \item{add.line.breaks}{adding a leading and trailing
  newline before/after the list}

  \item{add.end.of.list}{adding a separator comment after
  the list}

  \item{indent.level}{the level of indent}
}
\value{
  By default this function outputs (see: \code{cat}) the
  result. If you would want to catch the result instead,
  then call the function ending in \code{.return}.
}
\description{
  Creates a Pandoc's markdown format list from provided
  character vector/list.
}
\examples{
## basic lists
pandoc.list(letters[1:5])
pandoc.list(letters[1:5])
pandoc.list(letters[1:5], 'ordered')
pandoc.list(letters[1:5], 'roman')
pandoc.list(letters[1:5], loose = TRUE)

## nested lists
l <- list("First list element",
  rep.int('sub element', 5),
  "Second element",
  list('F', 'B', 'I', c('phone', 'pad', 'talics')))
pandoc.list(l)
pandoc.list(l, loose = TRUE)
pandoc.list(l, 'roman')

## complex nested lists
pandoc.list(list('one', as.list(2)))
pandoc.list(list('one', list('two')))
pandoc.list(list('one', list(2:3)))
}
\references{
  John MacFarlane (2012): _Pandoc User's Guide_.
  \url{http://johnmacfarlane.net/pandoc/README.html}
}

