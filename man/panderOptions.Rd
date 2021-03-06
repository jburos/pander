\name{panderOptions}
\alias{pander.option}
\alias{panderOptions}
\title{Querying/setting pander option}
\usage{
  panderOptions(o, value)
}
\arguments{
  \item{o}{option name (string). See below.}

  \item{value}{value to assign (optional)}
}
\description{
  To list all \code{pander} options, just run this function
  without any parameters provided. To query only one value,
  pass the first parameter. To set that, use the
  \code{value} parameter too.
}
\details{
  The following \code{pander} options are available:

  \itemize{ \item \code{digits}: numeric (default:
  \code{2}) passed to \code{format} \item
  \code{decimal.mark}: string (default: \code{.}) passed to
  \code{format} \item \code{big.mark}: string (default: '')
  passed to \code{format} \item \code{round}: numeric
  (default: \code{Inf}) passed to \code{round} \item
  \code{keep.trailing.zeros}: boolean (default:
  \code{FALSE}) to show or remove trailing zeros in numbers
  \item \code{date}: string (default: \code{'\%Y/\%m/\%d
  \%X'}) passed to \code{format} when printing dates
  (\code{POSIXct} or \code{POSIXt}) \item
  \code{header.style}: \code{'atx'} or \code{'setext'}
  passed to \code{\link{pandoc.header}} \item
  \code{list.style}: \code{'bullet'}, \code{'ordered'} or
  \code{'roman'} passed to \code{\link{pandoc.list}}.
  Please not that this has no effect on \code{pander}
  methods.  \item \code{table.style}: \code{'multiline'},
  \code{'grid'}, \code{'simple'} or \code{'rmarkdown'}
  passed to \code{\link{pandoc.table}} \item
  \code{table.split.table}: numeric passed to
  \code{\link{pandoc.table}} and also affects \code{pander}
  methods. This option tells \code{pander} where to split
  too wide tables. The default value (\code{80}) suggests
  the conventional number of characters used in a line,
  feel free to change (e.g. to \code{Inf} to disable this
  feature) if you are not using a VT100 terminal any more
  :) \item \code{table.split.cells}: numeric (default:
  \code{30}) passed to \code{\link{pandoc.table}} and also
  affects \code{pander} methods. This option tells
  \code{pander} where to split too wide cells with line
  breaks. Set \code{Inf} to disable.  \item
  \code{table.caption.prefix}: string (default:
  \code{'Table: '}) passed to \code{\link{pandoc.table}} to
  be used as caption prefix. Be sure about what you are
  doing if changing to other than \code{'Table: '} or
  \code{':'}.  \item \code{table.continues}: string
  (default: \code{'Table continues below'}) passed to
  \code{\link{pandoc.table}} to be used as caption for long
  (split) without a use defined caption \item
  \code{table.continues.affix}: string (default:
  \code{'(continued below)'}) passed to
  \code{\link{pandoc.table}} to be used as an affix
  concatenated to the user defined caption for long (split)
  tables \item \code{table.alignment.default}: string
  (default: \code{centre}) that defines the default
  alignment of cells. Can be \code{left}, \code{right} or
  \code{centre} that latter can be also spelled as
  \code{center}.  \item \code{table.alignment.rownames}:
  string (default: \code{centre}) that defines the
  alignment of rownames in tables. Can be \code{left},
  \code{right} or \code{centre} that latter can be also
  spelled as \code{center}.  \item \code{evals.messages}:
  boolean (default: \code{TRUE}) passed to \code{evals}'
  \code{pander} method specifying if messages should be
  rendered \item \code{p.wrap}: a string (default:
  \code{'_'}) to wrap vector elements passed to \code{p}
  function \item \code{p.sep}: a string (default: \code{',
  '}) with the main separator passed to \code{p} function
  \item \code{p.copula}: a string (default: \code{' and '})
  with ending separator passed to \code{p} function \item
  \code{graph.nomargin}: boolean (default: \code{TRUE}) if
  trying to keep plots' margins at minimal \item
  \code{graph.fontfamily}: string (default: \code{'sans'})
  specifying the font family to be used in images. Please
  note, that using a custom font on Windows requires
  \code{grDevices:::windowsFonts} first.  \item
  \code{graph.fontcolor}: string (default: \code{'black'})
  specifying the default font color \item
  \code{graph.fontsize}: numeric (default: \code{12})
  specifying the \emph{base} font size in pixels. Main
  title is rendered with \code{1.2} and labels with
  \code{0.8} multiplier.  \item \code{graph.grid}: boolean
  (default: \code{TRUE}) if a grid should be added to the
  plot \item \code{graph.grid.minor}: boolean (default:
  \code{TRUE}) if a miner grid should be also rendered
  \item \code{graph.grid.color}: string (default:
  \code{'grey'}) specifying the color of the rendered grid
  \item \code{graph.grid.lty}: string (default:
  \code{'dashed'}) specifying the line type of grid \item
  \code{graph.boxes}: boolean (default: \code{FALSE}) if to
  render a border around of plot (and e.g. around strip)
  \item \code{graph.legend.position}: string (default:
  \code{'right'}) specifying the position of the legend:
  'top', 'right', 'bottom' or 'left' \item
  \code{graph.background}: string (default: \code{'white'})
  specifying the plots main background's color \item
  \code{graph.panel.background}: string (default:
  \code{'transparent'}) specifying the plot's main panel
  background. Please \emph{note}, that this option is not
  supported with \code{base} graphics.  \item
  \code{graph.colors}: character vector of default color
  palette (defaults to a colorblind theme:
  \url{http://jfly.iam.u-tokyo.ac.jp/color/}). Please
  \emph{note} that this update work with \code{base} plots
  by appending the \code{col} argument to the call if not
  set.  \item \code{graph.color.rnd}: boolean (default:
  \code{FALSE}) specifying if the palette should be
  reordered randomly before rendering each plot to get
  colorful images \item \code{graph.axis.angle}: numeric
  (default: \code{1}) specifying the angle of axes' labels.
  The available options are based on \code{par(les)} and
  sets if the labels should be: \itemize{ \item \code{1}:
  parallel to the axis, \item \code{2}: horizontal, \item
  \code{3}: perpendicular to the axis or \item \code{4}:
  vertical.  } \item \code{graph.symbol}: numeric (default:
  \code{1}) specifying a symbol (see the \code{pch}
  parameter of \code{par}) }
}
\note{
  \code{pander.option} is deprecated and is to be removed
  in future releases.
}
\examples{
\dontrun{
panderOptions()
panderOptions('digits')
panderOptions('digits', 5)
}
}
\seealso{
  \code{\link{evalsOptions}}
}

