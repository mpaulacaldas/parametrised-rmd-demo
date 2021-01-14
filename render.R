penguin_names <- unique(palmerpenguins::penguins$species)

purrr::walk(
  penguin_names,
  ~ rmarkdown::render(
    "template.Rmd",
    params = list(penguin = .x),
    output_file = paste0("report-", .x, ".md")
  )
)
