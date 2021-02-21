options(repos = structure(c(CRAN = "https://ftp.fau.de/cran/")))
options(browser = "/lib64/firefox/firefox")

Sys.setenv("NOT_CRAN" = "true")

switchlib = function() {
  orig = "/home/lps/R/x86_64-pc-linux-gnu-library/4.0"
  input = readline("Use default [1] or mlr3dev lib [2]?\n")
  if (input == 2 ) {
    .libPaths("/home/lps/R/x86_64-pc-linux-gnu-library/mlr3dev/")
  } else {
    .libPaths(orig)
  }
  .libPaths()
}

update_mlr3 = function() {
  input = readline("CRAN [1] or github [2]?\n")
  packages = c("mlr3", "mlr3tuning", "mlr3pipelines", "mlr3extralearners", "mlr3spatiotempcv",
               "mlr3db", "mlr3viz", "mlr3learners", "mlr3cluster", "mlr3data", "mlr3fselect",
               "paradox", "bbotk", "mlr3hyperband", "mlr3proba", "mlr3measures", "mlr3misc")
  if (input == 2) {
    packages = paste0("https://github.com/mlr-org/", packages)
    cat("Updating github versions ...\n")
    remotes::install_github(packages, lib = "/home/lps/R/x86_64-pc-linux-gnu-library/mlr3dev", dependencies = TRUE, upgrade = TRUE)
  } else if (input == 1) {
    cat("Updating CRAN versions...\n")
    install.packages(packages, lib = "/home/lps/R/x86_64-pc-linux-gnu-library/4.0")
  } else {
    cat("Skipping ...\n")
  }
}
