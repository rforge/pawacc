\name{dateSummary}
\alias{dateSummary}

\title{
Date summary for accelerometer files
}
\description{
This function provides a date summary for Actigraph GT1M accelerometer files.
}
\usage{
dateSummary(object, wear, timestamp, minval = 0,
rescale.epoch = 60, keep.error = FALSE)
}
\arguments{
  \item{object}{
an object of class \code{gt1m}.
}
  \item{wear}{
a vector that classifies wear and non-wear time. See \code{\link{MarkWear.accfile}}.
}
  \item{timestamp}{
a timestamp vector for accelerometer values that can be provided by \code{tsFormat}.
}
  \item{minval}{
threshold defining the minimum number of minutes to classify first and last days as valid. See details.
}
  \item{rescale.epoch}{
epoch expressed in the same unit as acceleromenter's epoch to determine minutes of wear time (default is 60 and assumed to be in seconds). See details.
 
}

  \item{keep.error}{
logical flag. If \code{FALSE} (default) data errors as identified by \code{\link{errorCts}} will be replaced by NAs.
}
}

\details{
After wear time (in minutes) is calculated for each day/hour, the theshold \code{minval} is applied to define whether the first and last days are to be classified as valid. If not, these are 'truncated' and excluded by \code{\link{collapse.accfile}}.
}

\value{A data frame containing the following variables
\item{fileid}{file identifier}
\item{days}{dates by calendar day}
\item{Freq}{frequency of accelerometer observations in each day}
\item{hour_day}{total hours of accelerometer observations in each day}
\item{start_day}{starting time of accelerometer observations}
\item{end}{end time of accelerometer observations}
\item{valid_mins}{wear time (minutes)}
\item{IsStartDate}{dummy variable to define starting date (1 = yes)}
\item{IsEndDate}{dummy variable to define end date (1 = yes)}
\item{IsTruncated}{dummy variable to define truncated date (1 = yes)}
}


\author{
Marco Geraci
}

\seealso{
\code{\link{collapse.accfile}}
}

\keyword{ Actigraph GT1M }
\keyword{ summary }
