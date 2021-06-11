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
#  dest_path <- file.path(tempdir(), "CIA.pdf")
#  download.file("https://www.cia.gov/readingroom/docs/AGH%2C%20LASLO_0011.pdf",
#                destfile = dest_path,
#                mode = "wb")

## ---- eval=FALSE--------------------------------------------------------------
#  
#  response1 <- dai_sync(dest_path)

## ---- eval=FALSE--------------------------------------------------------------
#  text <- text_from_dai_response(response1)
#  cat(text)

## ---- eval=FALSE--------------------------------------------------------------
#  library(googleCloudStorageR)
#  gcs_upload(dest_path)

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
#  dest_path2 <- file.path(tempdir(), "CIA.json")
#  gcs_get_object(our_file,
#                 saveToDisk = dest_path2,
#                 overwrite = TRUE)

## ---- eval=FALSE--------------------------------------------------------------
#  text <- text_from_dai_file(dest_path2)
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

