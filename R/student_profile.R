#' Create a student profile
#'
#' This function creates a simple student profile object using an S3 class.
#'
#' @param name A character value for the student's name.
#' @param gpa A numeric GPA value.
#' @param grade A numeric grade value.
#'
#' @return An object of class student_profile.
#'
#' @examples
#' student_profile("Joe", 3.5, 88)
#'
#' @export
student_profile <- function(name, gpa, grade) {
  profile <- list(
    name = name,
    gpa = gpa,
    grade = grade
  )

  class(profile) <- "student_profile"
  return(profile)
}

#' Print a student profile
#'
#' This function prints a student_profile object in a clean format.
#'
#' @param x A student_profile object.
#' @param ... Additional arguments.
#'
#' @return No return value, called for printing.
#'
#' @examples
#' profile <- student_profile("Joe", 3.5, 88)
#' print(profile)
#'
#' @export
print.student_profile <- function(x, ...) {
  cat("Student Profile\n")
  cat("Name:", x$name, "\n")
  cat("GPA:", x$gpa, "\n")
  cat("Grade:", x$grade, "\n")
}
