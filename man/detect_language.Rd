% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detect_language.R
\name{detect_language}
\alias{detect_language}
\title{Detect the language that the abstract or other fields are written in}
\usage{
detect_language(
  CitDat,
  fieldsToDetectIn = c("Abstract"),
  wantedLanguage = c("english")
)
}
\arguments{
\item{CitDat}{A dataframe/tibble possibly returned by \code{\link[CitaviR]{read_Citavi_xlsx}}.}

\item{fieldsToDetectIn}{Character vector with names of fields whose text
language should be detected. Default is \code{c("Abstract")}. When multiple fields are given
(e.g. \code{c("Abstract", "Title")}), they are combined into a single string whose language
is then detected.}

\item{wantedLanguage}{Character vector with names of languages that are desired. Default is
\code{c("english")}. If not set to \code{NULL}, a new column \code{det_lang_wanted}
is created, which is \code{TRUE} if the detected language in \code{det_lang} is a wanted
language.}
}
\value{
A tibble containing at least one additional column: \code{det_lang}.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#experimental}{\figure{lifecycle-experimental.svg}{options: alt='[Experimental]'}}}{\strong{[Experimental]}}
Currently this only works for files that were generated while Citavi
was set to "English" so that column names are "Short Title" etc.
}
\examples{
path <- example_xlsx("3dupsin5refs.xlsx")
read_Citavi_xlsx(path) \%>\%
   detect_language()

}
