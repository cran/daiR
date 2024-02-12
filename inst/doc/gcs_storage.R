## ----message=FALSE------------------------------------------------------------
library(googleCloudStorageR)

## ----eval=FALSE---------------------------------------------------------------
#  project_id <- daiR::get_project_id()

## ----eval = FALSE-------------------------------------------------------------
#  gcs_list_buckets(project_id)

## ----eval = FALSE-------------------------------------------------------------
#  gcs_create_bucket("example-bucket-34869", project_id, location = "eu")

## ----eval=FALSE---------------------------------------------------------------
#  gcs_list_buckets(project_id)

## ----eval=FALSE---------------------------------------------------------------
#  gcs_list_objects()

## ----eval=FALSE---------------------------------------------------------------
#  setwd(tempdir())
#  write.csv(mtcars, "mtcars.csv")
#  gcs_upload("mtcars.csv")

## ----eval=FALSE---------------------------------------------------------------
#  gcs_list_objects()

## ----eval=FALSE---------------------------------------------------------------
#  gcs_upload("mtcars.csv", name = "testfile.csv")

## ----eval=FALSE---------------------------------------------------------------
#  library(purrr)
#  write.csv(iris, "iris.csv")
#  my_files <- list.files(pattern = "*.csv")
#  map(my_files, gcs_upload)

## ----eval=FALSE---------------------------------------------------------------
#  map(my_files, ~ gcs_upload(.x, name = basename(.x)))

## ----eval=FALSE---------------------------------------------------------------
#  gcs_list_objects()

## ----eval=FALSE---------------------------------------------------------------
#  gcs_upload_set_limit(upload_limit = 20000000L)

## ----eval=FALSE---------------------------------------------------------------
#  gcs_get_object("iris.csv", saveToDisk = "iris.csv")

## ----eval=FALSE---------------------------------------------------------------
#  gcs_get_object("mtcars.csv", saveToDisk = "/path/to/mtcars_downloaded.csv")

## ----eval=FALSE---------------------------------------------------------------
#  contents <- gcs_list_objects()
#  map(contents$name, ~ gcs_get_object(.x, saveToDisk = .x))

## ----eval=FALSE---------------------------------------------------------------
#  map(contents$name, ~ gcs_get_object(.x, saveToDisk = basename(.x))

## ----eval=FALSE---------------------------------------------------------------
#  gcs_delete_object("mtcars.csv")

## ----eval=FALSE---------------------------------------------------------------
#  contents <- gcs_list_objects()
#  map(contents$name, gcs_delete_object)

## ----eval=FALSE---------------------------------------------------------------
#  empty_bucket <- function() {
#    contents <- googleCloudStorageR::gcs_list_objects()
#    lapply(contents$name, googleCloudStorageR::gcs_delete_object)
#  }

## ----echo=FALSE, message=FALSE, warning=FALSE, eval=FALSE---------------------
#  # cleanup
#  library(fs)
#  file_delete(dir_ls(tempdir(), glob = "*.csv"))

