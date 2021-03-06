% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_potential_dups.R
\name{find_potential_dups}
\alias{find_potential_dups}
\title{Identify potential duplicates based on title and year}
\usage{
find_potential_dups(
  CitDat,
  minSimilarity = 0.6,
  potDupAfterObvDup = TRUE,
  maxNumberOfComp = 1e+06
)
}
\arguments{
\item{CitDat}{A dataframe/tibble returned by \code{\link[CitaviR]{find_obvious_dups}}
or \code{\link[CitaviR]{handle_obvious_dups}}.}

\item{minSimilarity}{Minimum similarity (between 0 and 1). Default is 0.6. (TO DO)}

\item{potDupAfterObvDup}{If TRUE (default), the newly created column
\code{pot_dup_id} is moved right next to the \code{obv_dup_id} column.}

\item{maxNumberOfComp}{Maximum number of clean_title similarity calculations to be made.
It is set to 1,000,000 by default (which corresponds to ~ 1414 clean_titles). TO DO: Document while-loop.}
}
\value{
A tibble containing one new column: \code{pot_dup_id}.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#maturing}{\figure{lifecycle-maturing.svg}{options: alt='[Maturing]'}}}{\strong{[Maturing]}}
Currently this only works for files that were generated while Citavi
was set to "English" so that column names are "Short Title" etc.
}
\examples{
path <- example_xlsx("3dupsin5refs.xlsx")
read_Citavi_xlsx(path) \%>\%
   find_obvious_dups() \%>\%
   find_potential_dups()

}
