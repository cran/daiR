## ----include = FALSE----------------------------------------------------------
options(rmarkdown.html_vignette.check_title = FALSE)
library(knitr)
opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval = FALSE-------------------------------------------------------------
#  library(daiR)
#  setwd(tempdir())
#  url <- "https://www.cia.gov/readingroom/docs/AGH%2C%20LASLO_0011.pdf"
#  download.file(url, "CIA.pdf")

## ----eval = FALSE-------------------------------------------------------------
#  resp <- dai_sync("CIA.pdf")

## ----eval = FALSE-------------------------------------------------------------
#  get_text(resp)

## ----eval=FALSE---------------------------------------------------------------
#  url <- "https://www.cia.gov/readingroom/docs/1956-11-26.pdf"
#  download.file(url, "CIA2.pdf")

## ----eval = FALSE-------------------------------------------------------------
#  ## NOT RUN
#  myfiles <- list.files(pattern = "*.pdf")
#  
#  for (i in seq_along(myfiles)) {
#    print(paste("Processing file", i, "of", length(myfiles)))
#    resp <- dai_sync(myfiles[i])
#    stem <- fs::path_ext_remove(basename(myfiles[i]))
#    get_text(resp, save_to_file = TRUE, outfile_stem = stem)
#    Sys.sleep(2)
#  }

## ----eval=FALSE---------------------------------------------------------------
#  library(googleCloudStorageR)
#  library(purrr)
#  map(myfiles, gcs_upload)

## ----eval=FALSE---------------------------------------------------------------
#  contents <- gcs_list_objects()

## ----eval=FALSE---------------------------------------------------------------
#  resp <- dai_async(contents$name)

## ----eval=FALSE---------------------------------------------------------------
#  dai_status(resp)

## ----eval=FALSE---------------------------------------------------------------
#  dai_notify(resp)

## ----eval=FALSE---------------------------------------------------------------
#  contents <- gcs_list_objects()
#  contents

## ----eval=FALSE---------------------------------------------------------------
#  jsons <- grep("*.json$", contents$name, value = TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  map(jsons, ~ gcs_get_object(.x, saveToDisk = basename(.x)))

## ----eval=FALSE---------------------------------------------------------------
#  get_text("CIA-0.json", type = "async")

## ----eval=FALSE---------------------------------------------------------------
#  local_jsons <- list.files(pattern = "*.json")
#  map(local_jsons, ~ get_text(.x, type = "async", save_to_file = TRUE))

## ----eval=FALSE---------------------------------------------------------------
#  process_slowly <- function(file) {
#    dai_async(file)
#    Sys.sleep(10)
#  }

## ----eval=FALSE---------------------------------------------------------------
#  ## NOT RUN
#  map(big_batch, process_slowly)

## ----echo = FALSE, message = FALSE, warning = FALSE, eval = FALSE-------------
#  # Cleanup
#  contents <- gcs_list_objects()
#  map(contents$name, gcs_delete_object)

## ----eval = FALSE-------------------------------------------------------------
#  ## NOT RUN
#  shards <- c("longdoc-1.json", "longdoc-2.json", "longdoc-3.json")
#  map(shards, ~ get_text(.x, type = "async", save_to_file = TRUE)
#  merge_shards()

