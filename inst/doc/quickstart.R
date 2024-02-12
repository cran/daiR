## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  library(daiR)
#  ## Not run:
#  myfile <- "sample.pdf"
#  text <- get_text(dai_sync(myfile))

## ----eval=FALSE---------------------------------------------------------------
#  ## Not run:
#  library(googleCloudStorageR)
#  library(purrr)
#  my_pdfs <- c("sample1.pdf", "sample2.pdf")
#  map(my_pdfs, ~ gcs_upload(.x, name = basename(.x)))

## ----eval=FALSE---------------------------------------------------------------
#  ## Not run:
#  resp <- dai_async(my_pdfs)
#  dai_status(resp) # to check the progress

## ----eval=FALSE---------------------------------------------------------------
#  ## Not run:
#  # Get a dataframe with the bucket contents
#  contents <- gcs_list_objects()
#  # Get the names of the JSON output files
#  jsons <- grep("*.json", contents$name, value = TRUE)
#  # Download them
#  map(jsons, ~ gcs_get_object(.x, saveToDisk = basename(.x)))
#  # Extract the text from the JSON files and save it as .txt files
#  local_jsons <- basename(jsons)
#  map(local_jsons, ~ get_text(.x, type = "async", save_to_file = TRUE))

