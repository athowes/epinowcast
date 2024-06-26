% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocess.R
\name{enw_latest_data}
\alias{enw_latest_data}
\title{Filter observations to the latest available reported}
\usage{
enw_latest_data(obs)
}
\arguments{
\item{obs}{A \code{data.frame}; must have \code{report_date} and \code{reference_date}
columns.}
}
\value{
A \code{data.table} of observations filtered for the latest available data
for each reference date.
}
\description{
Filter observations for the latest available reported
data for each reference date. Note this is not the same as filtering
for the maximum report date in all cases as data may only be updated
up to some maximum number of days.
}
\examples{
# Filter for latest reported data
enw_latest_data(germany_covid19_hosp)
}
\seealso{
Preprocessing functions
\code{\link{enw_add_delay}()},
\code{\link{enw_add_max_reported}()},
\code{\link{enw_add_metaobs_features}()},
\code{\link{enw_assign_group}()},
\code{\link{enw_complete_dates}()},
\code{\link{enw_construct_data}()},
\code{\link{enw_extend_date}()},
\code{\link{enw_filter_delay}()},
\code{\link{enw_filter_reference_dates}()},
\code{\link{enw_filter_report_dates}()},
\code{\link{enw_flag_observed_observations}()},
\code{\link{enw_impute_na_observations}()},
\code{\link{enw_metadata}()},
\code{\link{enw_metadata_delay}()},
\code{\link{enw_missing_reference}()},
\code{\link{enw_preprocess_data}()},
\code{\link{enw_reporting_triangle}()},
\code{\link{enw_reporting_triangle_to_long}()}
}
\concept{preprocess}
