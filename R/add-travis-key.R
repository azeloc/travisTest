add_travis_key <- function(github_pat = NULL) {
  if (is.null(github_pat)) github_pat <- devtools::github_pat()
  str_travis <- 'travis encrypt GITHUB_PAT="%s"'
  tk <- system(sprintf(str_travis, github_pat), intern = TRUE)
  txt <- readr::read_file('.travis.yml')
  txt <- stringr::str_replace(txt, 'A_LONG_ENCRYPTED_STRING', tk)
  cat(txt, file = '.travis.yml')
}
