#' Categorize a student's GPA
#'
#' This function takes a GPA value and returns a simple category.
#'
#' @param gpa A numeric GPA value, usually between 0.0 and 4.0.
#'
#' @return A character value describing the GPA category.
#'
#' @examples
#' gpa_category(3.8)
#' gpa_category(2.4)
#'
#' @export
gpa_category <- function(gpa) {
  if (gpa >= 3.7) {
    return("Excellent")
  } else if (gpa >= 3.0) {
    return("Good")
  } else if (gpa >= 2.0) {
    return("Average")
  } else {
    return("Needs Improvement")
  }
}
