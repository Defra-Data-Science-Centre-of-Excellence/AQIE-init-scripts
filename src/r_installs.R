install.packages("Rcpp", repos="https://cloud.r-project.org")
options(Ncpus = parallel::detectCores() - 2)
# Core dependencies
install.packages(c(
  "Rcpp", "BH", "arrow", "brms", "cli", "cowplot", "dplyr", "tidyr",
  "tibble", "readr", "readxl", "writexl", "janitor", "lubridate",
  "stringr", "forcats", "purrr", "tidyselect", "tidyverse", "rlang",
  "glue", "magrittr", "pillar", "pkgconfig", "withr", "packrat", "rsconnect",
  
  # Visualization
  "afcharts", "aftables", "openair", "ggplot2", "ggrepel", "ggforce", "ggridges",
  "ggdist", "fanplot", "scales", "viridis", "viridisLite", "ggtext",
  
  # Modeling / Stats
  "rstan", "bayesplot", "broom", "quantreg", "quadprog", "mvtnorm",
  "lme4", "performance", "DHARMa", "psych", "brms", "glmmtmb",
  
  # Spatial
  "sf", "terra", "rnaturalearth", "rnaturalearthdata", "maps",
  "mapproj", "leaflet", "tmap", "geodatasets",
  
  # Reporting
  "rmarkdown", "knitr", "kableExtra", "here", "styler", "reprex",
  
  # Parallel / future
  "future", "furrr", "parallelly", "processx"
), repos = "https://cloud.r-project.org")

# install rgovspeak
devtools::install_github('Defra-Data-Science-Centre-of-Excellence/rgovspeak')

# install rapid.spreadsheets
devtools::install_github('RAPID-ONS/rapid.spreadsheets')
