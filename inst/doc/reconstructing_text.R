## ----include = FALSE----------------------------------------------------------
options(rmarkdown.html_vignette.check_title = FALSE)
library(knitr)
opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----message=FALSE, eval=FALSE------------------------------------------------
#  setwd(tempdir())
#  url <- "https://www.cia.gov/readingroom/docs/1968-03-08.pdf"
#  download.file(url, "CIA_columns.pdf")

## ----echo=FALSE, out.width = "50%"--------------------------------------------
include_graphics("CIA_columns.jpg")

## ----eval=FALSE---------------------------------------------------------------
#  library(daiR)
#  library(googleCloudStorageR)
#  gcs_upload("CIA_columns.pdf")
#  resp <- dai_async("CIA_columns.pdf")
#  dai_notify(resp)

## ----echo=FALSE, eval=FALSE---------------------------------------------------
#  contents <- gcs_list_objects()
#  our_json <- grep("CIA_columns.*json", contents$name, value = TRUE)
#  gcs_get_object(our_json, saveToDisk = "CIA_columns.json")

## ----eval=FALSE---------------------------------------------------------------
#  text <- get_text("CIA_columns.json", type = "async")
#  cat(text)

## ----eval=FALSE---------------------------------------------------------------
#  draw_blocks("CIA_columns.json", type = "async")

## ----echo=FALSE, out.width = "50%"--------------------------------------------
include_graphics("CIA_columns1_blocks.png")

## ----eval=FALSE---------------------------------------------------------------
#  token_df <- build_token_df("CIA_columns.json")
#  str(token_df)

## ----eval=FALSE---------------------------------------------------------------
#  order <- c(1, 2, 3, 5, 7, 4, 6)
#  token_df$block <- factor(token_df$block, levels = order)
#  token_df_correct <- token_df[order(token_df$block),]

## ----message = FALSE, warning = FALSE, eval=FALSE-----------------------------
#  library(dplyr)
#  text <- token_df_correct$token %>%
#    paste(collapse = "")

## ----eval=FALSE---------------------------------------------------------------
#  snippet <- substr(text, start = 1, stop = 700)
#  cat(snippet)

## ----echo=FALSE, out.width = "50%"--------------------------------------------
include_graphics("peshtigo.jpg")

## ----eval=FALSE---------------------------------------------------------------
#  url <- "https://archive.org/download/themarinetteandpeshtigoeagleoct141871/The%20Marinette%20and%20Peshtigo%20Eagle%20-%20Oct%2014%201871.pdf"
#  download.file(url, "peshtigo.pdf")
#  gcs_upload("peshtigo.pdf")
#  resp <- dai_async("peshtigo.pdf")
#  dai_notify(resp)
#  

## ----eval=FALSE---------------------------------------------------------------
#  contents <- gcs_list_objects()
#  our_json <- grep("peshtigo.*json", contents$name, value = TRUE)
#  gcs_get_object(our_json, saveToDisk = "peshtigo.json")

## ----eval=FALSE---------------------------------------------------------------
#  draw_blocks("peshtigo.json", type = "async")

## ----echo=FALSE, out.width = "50%"--------------------------------------------
include_graphics("peshtigo1_blocks.png")

## ----eval=FALSE---------------------------------------------------------------
#  text <- text_from_dai_file("peshtigo.json")
#  snippet <- substr(text, start = 1, stop = 1000)
#  cat(snippet)

## ----eval=FALSE---------------------------------------------------------------
#  block_df <- build_block_df("peshtigo.json")

## ----eval=FALSE---------------------------------------------------------------
#  new_block_df <- split_block(block_df, block = 12, cut_point = 50)

## ----eval=FALSE---------------------------------------------------------------
#  token_df <- build_token_df("peshtigo.json")
#  token_df_correct <- reassign_tokens(token_df, new_block_df)

## ----eval=FALSE---------------------------------------------------------------
#  text <- token_df_correct$token %>%
#    paste(collapse = "")
#  snippet <- substr(text, start = 1, stop = 1000)
#  cat(snippet)

## ----echo=FALSE, out.width = "50%"--------------------------------------------
include_graphics("labelme1.png")

## ----echo=FALSE, out.width = "50%"--------------------------------------------
include_graphics("labelme2.png")

## ----eval=FALSE---------------------------------------------------------------
#  block13 <- from_labelme("peshtigo1_blocks.json")

## ----eval=FALSE---------------------------------------------------------------
#  token_df_new <- reassign_tokens2(token_df, block13)

## ----eval=FALSE---------------------------------------------------------------
#  token_df_correct <- token_df_new[order(token_df_new$block), ]

## ----eval=FALSE---------------------------------------------------------------
#  text <- token_df_correct$token %>%
#    paste(collapse = "")
#  snippet <- substr(text, start = 1, stop = 1000)
#  cat(snippet)

## ----echo=FALSE, message=FALSE, warning=FALSE, eval=FALSE---------------------
#  #cleanup
#  contents <- gcs_list_objects()
#  map(contents$name, gcs_delete_object)

