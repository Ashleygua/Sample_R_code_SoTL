# Generate pre manipulation grades
data1 <- dplyr::tibble(
  Identifier = sample(1:100, 100, replace = TRUE),
  Scores = sample(c(60:100, NA), 100, replace = TRUE)
)

# Generate post manipulation grades
data2 <- dplyr::tibble(
  identifier =  sample(1:100, 100, replace = TRUE),
  grades = sample(c(60:100, NA), 100, replace = TRUE)
)

# Generate data for student info and manipulation conditions
data3 <- dplyr::tibble(
  identifier =  1:100,
  gender = sample(c('male', 'female', 'prefer not to answer', NA), 100, replace = TRUE),
  group = sample(0:1, 100, replace = TRUE)
)


# Save the data to CSV files
write.csv(data1, file = "pre_grades.csv", row.names = FALSE)
write.csv(data2, file = "post_grades.csv", row.names = FALSE)
write.csv(data3, file = "info.csv", row.names = FALSE)
