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
#  setwd(tempdir())
#  write.csv(mtcars, "mtcars.csv")
#  resp <- gcs_upload("mtcars.csv")

## ---- eval=FALSE--------------------------------------------------------------
#  contents <- gcs_list_objects()
#  contents

## ---- eval=FALSE--------------------------------------------------------------
#  library(purrr)
#  library(fs)
#  write.csv(iris, "iris.csv")
#  my_files <- dir_ls(glob = "*.csv")
#  resp <- map(my_files, ~ gcs_upload(.x, name = .x))

## ---- eval=FALSE--------------------------------------------------------------
#  contents <- gcs_list_objects()
#  contents

## ---- eval=FALSE--------------------------------------------------------------
#  gcs_upload_set_limit(upload_limit = 20000000L)

## ---- eval=FALSE--------------------------------------------------------------
#  resp <- gcs_get_object("mtcars.csv", saveToDisk = "mtcars_duplicate.csv")

## ---- eval=FALSE--------------------------------------------------------------
#  contents <- gcs_list_objects()
#  resp <- map(contents$name, ~ gcs_get_object(.x, saveToDisk = .x, overwrite = TRUE))

## ---- eval=FALSE--------------------------------------------------------------
#  gcs_delete_object("mtcars.csv")

## ---- eval=FALSE--------------------------------------------------------------
#  contents <- gcs_list_objects()
#  map(contents$name, gcs_delete_object)

## ---- echo=FALSE, message=FALSE, warning=FALSE, eval=FALSE--------------------
#  # cleanup
#  file_delete(dir_ls(tempdir(), glob = "*.csv"))

