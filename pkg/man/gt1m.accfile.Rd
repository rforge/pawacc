\name{gt1m.accfile}
\alias{gt1m.accfile}


\title{
Read a single accelerometer file
}

\description{
This function reads an Actigraph GT1M accelerometer file.
}

\usage{
gt1m.accfile(file, path, fileid, counts.pos = 1,
	tz = "Europe/London", sparse = FALSE,
	fault = 32767)
}

\arguments{
  \item{file}{
file name including file extension.
}
  \item{path}{
path to \code{file}.
}
  \item{fileid}{
label for file identifier.
}
  \item{counts.pos}{
when storage mode allows for accelerometer counts and steps to be recorded at the same time, this argument specifies the position of first measurement of accelerometer counts (default is \code{counts.pos} = 1).
}
  \item{tz}{
a character string specifying the timezone to be used for the conversion (see \code{\link{strptime}}).
}
  \item{sparse}{
logical flag: should data be stored in sparse format?
}
  \item{fault}{
numerical value that indicates voltage signal saturation (temporarily used for both accelerometer counts and steps).
}

}

\details{
Raw accelerometer data are processed according to the device data format. Several data checks are performed by \code{\link{errorCts}},  \code{\link{errorSteps}}, and \code{\link{infoDate}}. An additional check is performed on the lenght of the sequence of measurements when both accelerometer counts and steps are recorded. If the length is odd, a warning message is produced.
}

\value{
These functions return an object of two \code{\link{class}}es: \code{accfile} and additional device-specific class (i.e., \code{gt1m}).

An object of class \code{accfile} is a list containing the following components:

\item{df}{A \code{\link{data.frame}} object with file identifier ('fileid'), accelerometer counts ('Counts'), accelerometer steps ('Steps'), coded error for counts ('Error_S1_c') and steps ('Error_S1_s'). See \code{\link{errorCts}} for error codes. If \code{sparse = TRUE}, all variables except 'fileid' of the data frame 'df' are returned as elements of the main list with corresponding names but in sparse matrix format (see \code{\link{as.matrix.csr}} for details).}
\item{info}{A \code{\link{data.frame}} object with file identifier ('fileid'), number of recorded measurements ('nobs'), epoch ('epoch'), accelerometer mode ('mode'), start date and time ('TimeStamp_orig'), time zone ('TZ'), battery voltage ('voltage'), download date and time ('TimeStamp_dl').}
\item{error_summary}{A \code{\link{list}} object with file identifier ('fileid'), summary tables of error codes for counts ('counts') and steps ('steps'), error code for date ('date'), and logical flag for odd number of measurements ('odd_number') (see details).}
}


\references{
Actigraph (Pensacola, Florida).

Geraci M, Rich C, Sera F, Cortina-Borja M, Griffiths LJ, and Dezateux C (2012). Technical report on accelerometry data processing in the Millennium Cohort Study. London, UK: University College London. Available at \url{http://discovery.ucl.ac.uk/1361699}
}

\author{
Marco Geraci
}

\seealso{
\code{\link{readAccDir}}, \code{\link{gt1m.acclist}}
}


\keyword{ accelerometer }
\keyword{ Actigraph GT1M }
\keyword{ read file }