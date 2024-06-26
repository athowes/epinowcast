% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formula-tools.R
\name{rw}
\alias{rw}
\title{Adds random walks with Gaussian steps to the model.}
\usage{
rw(time, by, type = c("independent", "dependent"))
}
\arguments{
\item{time}{Defines the random walk time period.}

\item{by}{Defines the grouping parameter used for the random walk.
If not specified no grouping is used. Currently this is limited to a single
variable.}

\item{type}{Character string, how standard deviation of grouped random
walks is estimated: "independent", or "dependent" across groups;
enforced by \code{\link[base:match.arg]{base::match.arg()}}.}
}
\value{
A list defining the time frame, group, and type with class
"enw_rw_term" that can be interpreted by \code{\link[=construct_rw]{construct_rw()}}.
}
\description{
A call to \code{rw()} can be used in the 'formula' argument of model
construction functions in the \code{epinowcast} package such as \code{\link[=enw_formula]{enw_formula()}}.
Does not evaluate arguments but instead simply passes information for use in
model construction.
}
\examples{
rw(time)

rw(time, location)

rw(time, location, type = "dependent")
}
\seealso{
Functions used to help convert formulas into model designs
\code{\link{as_string_formula}()},
\code{\link{construct_re}()},
\code{\link{construct_rw}()},
\code{\link{enw_formula}()},
\code{\link{enw_manual_formula}()},
\code{\link{parse_formula}()},
\code{\link{re}()},
\code{\link{remove_rw_terms}()},
\code{\link{rw_terms}()},
\code{\link{split_formula_to_terms}()}
}
\concept{formulatools}
