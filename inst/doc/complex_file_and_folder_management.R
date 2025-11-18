## ----include = FALSE----------------------------------------------------------
options(rmarkdown.html_vignette.check_title = FALSE)

library(knitr)

opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
# setwd(tempdir())
# download.file("https://www.nps.gov/articles/images/dec-of-sentiments-loc-copy.jpg",
#               destfile = "nps.jpg",
#               mode = "wb")

## ----eval=FALSE---------------------------------------------------------------
# library(daiR)
# image_to_pdf("nps.jpg", "nps.pdf")

## ----eval=FALSE---------------------------------------------------------------
# library(fs)
# dir1 <- file.path(tempdir(), "folder1")
# dir2 <- file.path(tempdir(), "folder2")
# dir_create(c(dir1, dir2))

## ----eval=FALSE---------------------------------------------------------------
# dest_path3 <- file.path(dir1, "nps.pdf")
# dest_path4 <- file.path(dir1, "nps2.pdf")
# dest_path5 <- file.path(dir2, "nps3.pdf")
# dest_path6 <- file.path(dir2, "nps4.pdf")
# file_copy(dest_path2, dest_path3)
# file_copy(dest_path2, dest_path4)
# file_copy(dest_path2, dest_path5)
# file_copy(dest_path2, dest_path6)

## ----eval=FALSE---------------------------------------------------------------
# pdfs <- dir_ls(tempdir(), glob = "*.pdf", recurse = TRUE)

## ----eval=FALSE---------------------------------------------------------------
# library(googleCloudStorageR)
# library(purrr)
# resp <- map(pdfs, ~ gcs_upload(.x, name = .x))

## ----eval=FALSE---------------------------------------------------------------
# gcs_list_objects()

## ----eval=FALSE---------------------------------------------------------------
# resp <- dai_async(pdfs)

## ----eval=FALSE---------------------------------------------------------------
# content <- gcs_list_objects()
# jsons <- grep("*.json$", content$name, value = TRUE)
# resp <- map(jsons, ~ gcs_get_object(.x, saveToDisk = file.path(tempdir(), .x)))

## ----eval=FALSE---------------------------------------------------------------
# resp <- map(jsons, ~ gcs_get_object(.x,
#                                     saveToDisk = file.path(tempdir(), "folder3", gsub("/", "_", .x))

## ----echo=FALSE, message=FALSE, warning=FALSE, eval=FALSE---------------------
# #cleanup
# contents <- gcs_list_objects()
# resp <- map(contents$name, gcs_delete_object)

