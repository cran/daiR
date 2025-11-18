## ----include = FALSE----------------------------------------------------------
options(rmarkdown.html_vignette.check_title = FALSE)
library(knitr)
opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
# processors <- get_processors()
# any(grep("FORM_PARSER", processors$type))

## ----eval=FALSE---------------------------------------------------------------
# formparser_id <- unique(processors$id[processors$type == "FORM_PARSER_PROCESSOR"])

## ----eval=FALSE---------------------------------------------------------------
# formparser_id <- create_processor("<unique_display_name>", type = "FORM_PARSER_PROCESSOR")

## ----eval=FALSE---------------------------------------------------------------
# formparser_id

## ----echo=FALSE, out.width = "100%"-------------------------------------------
include_graphics("tobacco.PNG")

## ----eval=FALSE---------------------------------------------------------------
# setwd(tempdir())
# url <- "https://archive.org/download/tobacco_lpnn0000/lpnn0000.pdf"
# download.file(url, "tobacco.pdf")

## ----eval=FALSE---------------------------------------------------------------
# resp <- dai_sync("tobacco.pdf", proc_id = formparser_id)

## ----eval=FALSE---------------------------------------------------------------
# tables <- get_tables(resp)

## ----eval=FALSE---------------------------------------------------------------
# View(tables[[1]])

## ----eval=FALSE---------------------------------------------------------------
# for(i in seq_along(tables)) {
#   assign(paste0("table", i), tables[[i]])
# }

## ----eval=FALSE---------------------------------------------------------------
# for(i in seq_along(tables)) {
#   filename <- paste0("table", i, ".csv")
#   write.csv(tables[[i]], filename, row.names = FALSE)
# }

## ----echo=FALSE, out.width = "100%"-------------------------------------------
include_graphics("table.PNG")

## ----eval=FALSE---------------------------------------------------------------
# library(googleCloudStorageR)
# gcs_upload("tobacco.pdf")

## ----eval=FALSE---------------------------------------------------------------
# gcs_list_objects()

## ----eval=FALSE---------------------------------------------------------------
# resp <- dai_async("tobacco.pdf", proc_id = formparser_id)
# dai_notify(resp)

## ----eval=FALSE---------------------------------------------------------------
# contents <- gcs_list_objects()
# our_json <- grep("tobacco.*json", contents$name, value = TRUE)
# gcs_get_object(our_json, saveToDisk = "tobacco.json")

## ----eval=FALSE---------------------------------------------------------------
# tables <- get_tables("tobacco.json", type = "async")

