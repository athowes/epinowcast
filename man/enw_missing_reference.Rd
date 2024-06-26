% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocess.R
\name{enw_missing_reference}
\alias{enw_missing_reference}
\title{Extract reports with missing reference dates}
\usage{
enw_missing_reference(obs)
}
\arguments{
\item{obs}{A \code{data.frame} as produced by \code{\link[=enw_add_incidence]{enw_add_incidence()}}.
Must contain the following variables: \code{report_date}, \code{reference_date},
\code{.group}, and \code{confirm}, and \code{new_confirm}.}
}
\value{
A \code{data.table} of missing counts and proportions by report date and
group.
}
\description{
Returns reports with missing reference dates as well as calculating
the proportion of reports for a given reference date that were missing.
}
\examples{
obs <- data.frame(
  report_date = c("2021-10-01", "2021-10-03"), reference_date = "2021-10-01",
  confirm = 1
)
obs <- rbind(
  obs,
  data.frame(report_date = "2021-10-04", reference_date = NA, confirm = 4)
)
obs <- enw_complete_dates(obs)
obs <- enw_assign_group(obs)
obs <- enw_add_incidence(obs)
enw_missing_reference(obs)
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
\code{\link{enw_latest_data}()},
\code{\link{enw_metadata}()},
\code{\link{enw_metadata_delay}()},
\code{\link{enw_preprocess_data}()},
\code{\link{enw_reporting_triangle}()},
\code{\link{enw_reporting_triangle_to_long}()}
}
\concept{preprocess}
