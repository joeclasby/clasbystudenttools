#' Summarize data by stress level
#'
#' This function groups a dataset by stress level and calculates
#' average study hours, sleep hours, and GPA.
#'
#' @param data A data frame containing columns: stress_level,
#' study_hours, sleep_hours, and gpa
#'
#' @return A summarized data frame by stress level
#'
#' @examples
#' df <- data.frame(
#'   stress_level = c("low", "high", "moderate"),
#'   study_hours = c(2, 5, 3),
#'   sleep_hours = c(8, 5, 6),
#'   gpa = c(3.5, 2.8, 3.2)
#' )
#' stress_summary(df)
#'
#' @export
stress_summary <- function(data) {
  result <- aggregate(
    cbind(study_hours, sleep_hours, gpa) ~ stress_level,
    data = data,
    FUN = mean
  )

  return(result)
}
