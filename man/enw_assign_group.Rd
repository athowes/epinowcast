% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocess.R
\name{enw_assign_group}
\alias{enw_assign_group}
\title{Assign a group to each row of a data.table}
\usage{
enw_assign_group(obs, by = NULL, copy = TRUE)
}
\arguments{
\item{obs}{A \code{data.table} or \code{data.frame} without a \code{.group} column.}

\item{by}{A character vector of column names to group by. Defaults to
an empty vector.}

\item{copy}{A logical; make a copy (default) of \code{obs} or modify it in
place?}
}
\value{
A \code{data.table} with a \code{.group} column added ordered by \code{.group}
and the existing key of \code{obs}.
}
\description{
Assign a group to each row of a data.table. If \code{by} is
specified, then each unique combination of the columns in \code{by} will
be assigned a unique group. If \code{by} is not specified, then all rows
will be assigned to the same group.
}
\examples{
obs <- data.frame(x = 1:3, y = 1:3)
enw_assign_group(obs)
enw_assign_group(obs, by = "x")
}
\seealso{
Preprocessing functions
\code{\link{enw_add_delay}()},
\code{\link{enw_add_max_reported}()},
\code{\link{enw_add_metaobs_features}()},
\code{\link{enw_complete_dates}()},
\code{\link{enw_construct_data}()},
\code{\link{enw_extend_date}()},
\code{\link{enw_filter_delay}()},
\code{\link{enw_filter_reference_dates}()},
\code{\link{enw_filter_report_dates}()},
\code{\link{enw_flag_observed_observations}()},
\code{\link{enw_impute_na_observations}()},
\code{\link{enw_latest_data}()},
\code{\link{enw_metadata}()},
\code{\link{enw_metadata_delay}()},
\code{\link{enw_missing_reference}()},
\code{\link{enw_preprocess_data}()},
\code{\link{enw_reporting_triangle}()},
\code{\link{enw_reporting_triangle_to_long}()}
}
\concept{preprocess}
