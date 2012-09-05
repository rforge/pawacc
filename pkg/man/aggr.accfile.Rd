\name{aggr.accfile}
\alias{aggr.accfile}

\title{
Aggregate Accelerometry Data
}
\description{
This function aggregates count values 
}

\usage{
aggr.accfile(object, by, x = NULL, y = NULL,
	keep.error = FALSE)
}

\arguments{
  \item{object}{
an object of class \code{accfile}.
  }
  \item{by}{
epoch.
}
  \item{x}{
counts.
}
  \item{y}{
steps.
}
  \item{keep.error}{
logical flag. Should errors be omitted?
}

}


\value{
\item{Counts }{aggregated counts}
\item{Steps }{aggregated steps}
\item{TimeStamp_agg }{time stamping}
}

\author{
Marco Geraci
}

\seealso{
\code{\link{collapse.accfile}}
}

\keyword{ collapse }
