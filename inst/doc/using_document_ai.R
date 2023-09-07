## ---- include = FALSE---------------------------------------------------------
options(rmarkdown.html_vignette.check_title = FALSE)
library(knitr)
opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval=FALSE--------------------------------------------------------------
#  library(daiR)

## ---- eval=FALSE--------------------------------------------------------------
#  setwd(tempdir())
#  download.file("https://www.cia.gov/readingroom/docs/AGH%2C%20LASLO_0011.pdf",
#                destfile = "CIA.pdf",
#                mode = "wb")

## ---- eval=FALSE--------------------------------------------------------------
#  response1 <- dai_sync("CIA.pdf")

## ---- eval=FALSE--------------------------------------------------------------
#  text <- text_from_dai_response(response1)
#  cat(text)

## ---- eval=FALSE--------------------------------------------------------------
#  library(googleCloudStorageR)
#  gcs_upload("CIA.pdf")

## ---- eval=FALSE--------------------------------------------------------------
#  gcs_list_objects()

## ---- eval=FALSE--------------------------------------------------------------
#  response2 <- dai_async("CIA.pdf")

## ---- eval=FALSE--------------------------------------------------------------
#  dai_status(response2)

## ---- eval=FALSE--------------------------------------------------------------
#  gcs_list_objects()

## -----------------------------------------------------------------------------
## NOT RUN
our_file <- "<job_number>/0/CIA-0.json"

## ---- eval=FALSE--------------------------------------------------------------
#  gcs_get_object(our_file, saveToDisk = "CIA.json", overwrite = TRUE)

## ---- eval=FALSE--------------------------------------------------------------
#  text <- text_from_dai_file("CIA.json")
#  cat(text)

## ---- eval=FALSE--------------------------------------------------------------
#  process_slowly <- function(file) {
#    dai_async(file)
#    Sys.sleep(15)
#  }

## ---- eval=FALSE--------------------------------------------------------------
#  ## NOT RUN
#  map(big_batch, process_slowly)

## ---- echo=FALSE, message=FALSE, warning=FALSE, eval=FALSE--------------------
#  #cleanup
#  contents <- gcs_list_objects()
#  map(contents$name, gcs_delete_object)

