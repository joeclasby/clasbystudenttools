#' Report missing values in a dataset
#'
#' This function takes a data frame and returns the number
#' of missing (NA) values in each column.
#'
#' @param data A data frame
#'
#' @return A data frame showing missing values per column
#'
#' @examples
#' df <- data.frame(a = c(1, NA, 3), b = c(NA, NA, 2))
#' missing_report(df)
#'
#' @export
missing_report <- function(data) {
  missing_counts <- sapply(data, function(x) sum(is.na(x)))

  result <- data.frame(
    column = names(missing_counts),
    missing_values = missing_counts
  )

  return(result)
}
