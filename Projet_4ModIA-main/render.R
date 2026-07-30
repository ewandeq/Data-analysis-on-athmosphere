#!/usr/bin/env Rscript

input_file <- "atmospheric-data-analysis.Rmd"
output_file <- "atmospheric-data-analysis.html"
data_file <- file.path("data", "Data-projetmodIA-2324.csv")

if (!file.exists(input_file)) {
  stop("Missing R Markdown source: ", input_file)
}

if (!file.exists(data_file)) {
  stop(
    "Missing dataset: ", data_file,
    "\nCreate the data directory and place Data-projetmodIA-2324.csv inside it."
  )
}

if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  stop("Package 'rmarkdown' is not installed. Run: Rscript requirements.R")
}

rmarkdown::render(
  input = input_file,
  output_format = "html_document",
  output_file = output_file,
  clean = TRUE,
  envir = new.env(parent = globalenv())
)

message("Rendered report: ", normalizePath(output_file))
