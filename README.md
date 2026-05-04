# clasbystudenttools

A simple R package with helpful functions for student data analysis, including grade categorization, GPA labeling, missing value reporting, and quick summaries.

## Installation

You can install the development version of clasbystudenttools from GitHub:

```r
# install.packages("devtools")
devtools::install_github("joeclasby/clasbystudenttools")
```

## Functions

### grade_category()
Converts numeric grades into letter grades (A–F).

### gpa_category()
Categorizes GPA as Excellent, Good, Average, or Needs Improvement.

### missing_report()
Returns the number of missing values in each column of a dataset.

### quick_summary()
Provides basic summary statistics (mean, median, min, max, standard deviation).

### stress_summary()
Summarizes study hours, sleep, and GPA by stress level.

### student_profile()
Creates a student profile object using an S3 class.

### print.student_profile()
Custom print method for displaying a student profile.


## Example Usage

```r
library(clasbystudenttools)

grade_category(92)
gpa_category(3.4)

df <- data.frame(
  study_hours = c(2, 4, NA),
  sleep_hours = c(7, NA, 6)
)

missing_report(df)
quick_summary(c(80, 90, 85, 88))
```


## Author

Joe Clasby

## License

MIT
