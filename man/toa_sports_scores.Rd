% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/toa_sports_scores.R
\name{toa_sports_scores}
\alias{toa_sports_scores}
\title{\strong{Find scores for the sports which are accessible through the Odds API}}
\usage{
toa_sports_scores(sport_key, days_from = 1, date_format = "iso")
}
\arguments{
\item{sport_key}{(\emph{string}, required): The \code{sport_key} to look up odds for. See \code{toa_sports()} for a full lookup of \code{sport_key} values.}

\item{days_from}{(\emph{integer}, optional): Integer from 1 to 3. Defaults to 1.}

\item{date_format}{(\emph{string}, optional): Date format. Options include:
\itemize{
\item iso
\item unix
}}
}
\value{
Sports scores which The Odds API provides scores information for as a tibble:\tabular{ll}{
   col_name \tab types \cr
   id \tab character \cr
   sport_key \tab character \cr
   sport_title \tab character \cr
   commence_time \tab character \cr
   completed \tab logical \cr
   home_team \tab character \cr
   away_team \tab character \cr
   scores \tab logical \cr
   last_update \tab logical \cr
}
}
\description{
\strong{Get the scores for the sports which the Odds API provides coverage}

\if{html}{\out{<div class="sourceCode r">}}\preformatted{   try(toa_sports_scores(sport_key = 'baseball_mlb', 
                         days_from = NULL,
                         date_format = 'iso'))
}\if{html}{\out{</div>}}
}
\examples{
\donttest{
   try(toa_sports_scores(sport_key = 'baseball_mlb', 
                         days_from = NULL,
                         date_format = 'iso'))
}

}
\keyword{Betting}
\keyword{Lines}
