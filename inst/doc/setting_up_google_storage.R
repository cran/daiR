## ---- include = FALSE---------------------------------------------------------
options(rmarkdown.html_vignette.check_title = FALSE)

library(knitr)

opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("storage1.PNG")

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("storage2.PNG")

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("storage3.PNG")

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("storage4.PNG")

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("storage5.PNG")

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("storage6.PNG")

## ---- message=FALSE, eval=FALSE-----------------------------------------------
#  usethis::edit_r_environ()

## ---- message=FALSE-----------------------------------------------------------
library(googleCloudStorageR)

## ---- eval=FALSE--------------------------------------------------------------
#  project_id <- daiR::get_project_id()

## ---- eval = FALSE------------------------------------------------------------
#  gcs_list_buckets(project_id)

## ---- eval = FALSE------------------------------------------------------------
#  gcs_create_bucket("dair-example-bucket", project_id, location = "EU")

## ---- eval=FALSE--------------------------------------------------------------
#  gcs_list_buckets(project_id)

## ---- eval=FALSE--------------------------------------------------------------
#  gcs_list_objects()

## ---- eval=FALSE--------------------------------------------------------------
#  sample_csv <- file.path(tempdir(), "mtcars.csv")
#  write.csv(mtcars, sample_csv)
#  resp <- gcs_upload(sample_csv, name = "mtcars.csv")

## ---- eval=FALSE--------------------------------------------------------------
#  contents <- gcs_list_objects()
#  contents

## ---- eval=FALSE--------------------------------------------------------------
#  library(purrr)
#  library(fs)
#  sample_csv2 <- file.path(tempdir(), "iris.csv")
#  write.csv(iris, sample_csv2)
#  my_files <- dir_ls(tempdir(), glob = "*.csv")
#  resp <- map(my_files, ~ gcs_upload(.x, name = .x))

## ---- eval=FALSE--------------------------------------------------------------
#  contents <- gcs_list_objects()
#  contents

## ---- eval=FALSE--------------------------------------------------------------
#  gcs_upload_set_limit(upload_limit = 20000000L)

## ---- eval=FALSE--------------------------------------------------------------
#  dest_path <- file.path(tempdir(), "mtcars_duplicate.csv")
#  resp <- gcs_get_object("mtcars.csv", saveToDisk = dest_path)

## ---- eval=FALSE--------------------------------------------------------------
#  contents <- gcs_list_objects()
#  resp <- map(contents$name, ~ gcs_get_object(.x,
#                                              saveToDisk = file.path(tempdir(), .x),
#                                              overwrite = TRUE))

## ---- eval=FALSE--------------------------------------------------------------
#  gcs_delete_object("mtcars.csv")

## ---- eval=FALSE--------------------------------------------------------------
#  contents <- gcs_list_objects()
#  map(contents$name, gcs_delete_object)

## ---- echo=FALSE, message=FALSE, warning=FALSE, eval=FALSE--------------------
#  # cleanup
#  file_delete(dir_ls(tempdir(), glob = "*.csv"))

