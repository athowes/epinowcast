% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formula-tools.R
\name{as_string_formula}
\alias{as_string_formula}
\title{Converts formulas to strings}
\usage{
as_string_formula(formula)
}
\arguments{
\item{formula}{A model formula that may use standard fixed
effects, random effects using \link{lme4} syntax (see \code{\link[=re]{re()}}), and random walks
defined using the \code{\link[=rw]{rw()}} helper function.}
}
\value{
A character string of the supplied formula
}
\description{
Converts formulas to strings
}
\examples{
epinowcast:::as_string_formula(~ 1 + age_group)
}
\seealso{
Functions used to help convert formulas into model designs
\code{\link{construct_re}()},
\code{\link{construct_rw}()},
\code{\link{enw_formula}()},
\code{\link{enw_manual_formula}()},
\code{\link{parse_formula}()},
\code{\link{re}()},
\code{\link{remove_rw_terms}()},
\code{\link{rw}()},
\code{\link{rw_terms}()},
\code{\link{split_formula_to_terms}()}
}
\concept{formulatools}
