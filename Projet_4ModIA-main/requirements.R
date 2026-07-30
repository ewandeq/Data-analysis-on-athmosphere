# Install the CRAN packages required by atmospheric-data-analysis.Rmd.
# Run from the repository root with: Rscript requirements.R

required_packages <- c(
  "knitr",
  "rmarkdown",
  "leaps",
  "MASS",
  "corrplot",
  "glmnet",
  "coefplot",
  "ggplot2",
  "leaflet",
  "gridExtra",
  "ggfortify",
  "FactoMineR",
  "plotly",
  "factoextra",
  "reshape2",
  "mclust",
  "ggpubr",
  "caret",
  "cluster",
  "clusterSim"
)

installed <- rownames(installed.packages())
missing <- setdiff(required_packages, installed)

if (length(missing) > 0) {
  install.packages(missing, repos = "https://cloud.r-project.org", dependencies = TRUE)
} else {
  message("All required R packages are already installed.")
}
