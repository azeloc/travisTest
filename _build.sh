#!/bin/sh

Rscript -e "rmarkdown::render('index.Rmd',  output_dir = '_book', quiet = TRUE)"
