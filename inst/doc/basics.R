## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ---- eval=FALSE--------------------------------------------------------------
#  library(daiR)
#  ## Not run:
#  myfile <- "<sample.pdf>"
#  response <- dai_sync(myfile)
#  text <- text_from_dai_response(response)
#  cat(text)

## ---- eval=FALSE--------------------------------------------------------------
#  ## Not run:
#  library(googleCloudStorageR)
#  
#  my_pdfs <- c("<sample1.pdf>", "<sample2.pdf>")
#  purrr::map(my_pdfs, ~ gcs_upload(.x, name = .x))

## ---- eval=FALSE--------------------------------------------------------------
#  ## Not run:
#  dai_async(my_pdfs)

## ---- eval=FALSE--------------------------------------------------------------
#  ## Not run:
#  bucket_contents <- gcs_list_objects()
#  only_jsons <- grep("*.json", bucket_contents$name, value = TRUE)
#  map(only_jsons, ~ gcs_get_object(.x, saveToDisk = .x))
#  text <- text_from_dai_file(only_jsons[1])
#  cat(text)

