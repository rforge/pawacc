\name{collapse.accfile}
\alias{collapse.accfile}

\title{
Collapse raw accelerometer files into a summary dataset
}
\description{
This function collapses Actigraph GT1M accelerometer files into a dataframe with summary statistics.
}
\usage{
collapse.accfile(object, palist = list(value = c(0, 100, 1000, 5000, 13000),
rescale.epoch = 60, labels = NULL, BI = NULL), mwlist = list(value = 20,
nz = 0), collapse.by = "\%Y-\%m-\%d", collapse.epoch = 60, aggregate.by =
NULL, FUN.list = list(mean = function(x) mean(x, na.rm = TRUE)),
keep.implausible = FALSE, keep.error = FALSE, ...)
}

\arguments{
  \item{object}{
an object of class \code{gt1m}.
}
  \item{palist}{
list of arguments for \code{\link{MarkPA.accfile}}.
}
  \item{mwlist}{
list of arguments for \code{\link{MarkWear.accfile}}.
}
  \item{collapse.by}{
dataset aggregation level. See argument \code{format} from \code{\link{strptime}} for options and details below.
}
  \item{collapse.epoch}{
epoch by which time spent in different physical activity modes is summarized. See details.
}
  \item{aggregate.by}{
pre-collapsing aggregation level for accelerometer values. See argument \code{format} from \code{\link{strptime}} for options and details below.
}

  \item{FUN.list}{
a named list of functions. See \code{\link{collapse.fun}}.
}
  \item{keep.implausible}{
logical flag. If \code{FALSE} (default) behaviourally implausible values will be replaced by NAs. See \code{\link{MarkPA.accfile}}.
}
  \item{keep.error}{
logical flag. If \code{FALSE} (default) data errors as identified by \code{\link{errorCts}} will be replaced by NAs.
}
  \item{\dots}{
arguments for \code{\link{dateSummary}}.
}
}

\details{
More
}

\value{
A data frame containing the following variables
\item{collapse.by}{aggregation factor}
\item{fileid}{file identifier}
\item{...}{named columns according to arguments \code{FUN} and \code{labels} of \code{palist}}
}

\author{
Marco Geraci
}

\keyword{ collapse }
\keyword{ Actigraph GT1M }
