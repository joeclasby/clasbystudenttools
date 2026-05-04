#' Create a quick numeric summary
#'
#' This function takes a numeric vector and returns basic summary statistics,
#' including mean, median, minimum, maximum, and standard deviation.
#'
#' @param x A numeric vector
#'
#' @return A data frame with summary statistics
#'
#' @examples
#' quick_summary(c(85, 90, 78, 92, 88))
#'
#' @export
quick_summary <- function(x) {
  result <- data.frame(
    mean = mean(x, na.rm = TRUE),
    median = median(x, na.rm = TRUE),
    minimum = min(x, na.rm = TRUE),
    maximum = max(x, na.rm = TRUE),
    standard_deviation = sd(x, na.rm = TRUE)
  )

  return(result)
}
