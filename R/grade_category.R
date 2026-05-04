#' Convert numeric grades to letter categories
#'
#' This function takes a numeric grade (0-100) and returns
#' a letter grade category (A, B, C, D, F).
#'
#' @param grade A numeric value representing a student's grade
#'
#' @return A character value representing the letter grade
#'
#' @examples
#' grade_category(95)
#' grade_category(72)
#'
#' @export
grade_category <- function(grade) {
  if (grade >= 90) {
    return("A")
  } else if (grade >= 80) {
    return("B")
  } else if (grade >= 70) {
    return("C")
  } else if (grade >= 60) {
    return("D")
  } else {
    return("F")
  }
}
