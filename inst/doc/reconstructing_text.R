## ---- include = FALSE---------------------------------------------------------
options(rmarkdown.html_vignette.check_title = FALSE)
library(knitr)
opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- message=FALSE, eval=FALSE-----------------------------------------------
#  dest_path <- file.path(tempdir(), "CIA_columns.pdf")
#  download.file("https://www.cia.gov/readingroom/docs/1968-03-08.pdf",
#                destfile = dest_path,
#                mode = "wb")

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("CIA_columns.jpg")

## ---- echo=FALSE--------------------------------------------------------------
library(daiR)
suppressMessages(library(googleCloudStorageR))

## ---- eval=FALSE--------------------------------------------------------------
#  library(daiR)
#  library(googleCloudStorageR)

## ---- eval=FALSE--------------------------------------------------------------
#  resp <- gcs_upload(dest_path)
#  resp <- dai_async("CIA_columns.pdf")

## ---- echo=FALSE, eval=FALSE--------------------------------------------------
#  content <- gcs_list_objects()
#  count <- 0
#  while (count < 150 && nrow(content) < 2){
#    Sys.sleep(2)
#    content <- gcs_list_objects()
#    count <- count + 1
#  }

## ---- eval=FALSE--------------------------------------------------------------
#  gcs_list_objects()
#  
#  ## NOT RUN
#  our_file <- "<job_number>/0/CIA_columns-0.json"

## ---- eval=FALSE--------------------------------------------------------------
#  dest_path2 <- file.path(tempdir(), "CIA_columns.json")
#  gcs_get_object(our_file, saveToDisk = dest_path2)

## ---- eval=FALSE--------------------------------------------------------------
#  text <- text_from_dai_file(dest_path2)
#  cat(text)

## ---- eval=FALSE--------------------------------------------------------------
#  draw_blocks(dest_path2, dir = tempdir())

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("CIA_columns1_blocks.png")

## ---- eval=FALSE--------------------------------------------------------------
#  token_df <- build_token_df(dest_path2)
#  str(token_df)

## ---- eval=FALSE--------------------------------------------------------------
#  order <- c(1, 2, 3, 5, 7, 4, 6)
#  token_df$block <- factor(token_df$block, levels = order)
#  token_df_correct <- token_df[order(token_df$block),]

## ---- message = FALSE, warning = FALSE, eval=FALSE----------------------------
#  library(dplyr)
#  text <- token_df_correct$token %>%
#    paste(collapse="")

## ---- eval=FALSE--------------------------------------------------------------
#  snippet <- substr(text, start = 1, stop = 700)
#  cat(snippet)

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("peshtigo.jpg")

## ---- eval=FALSE--------------------------------------------------------------
#  dest_path3 <- file.path(tempdir(), "peshtigo.pdf")
#  download.file("https://archive.org/download/themarinetteandpeshtigoeagleoct141871/The%20Marinette%20and%20Peshtigo%20Eagle%20-%20Oct%2014%201871.pdf",
#                destfile = dest_path3,
#                mode = "wb")
#  resp <- gcs_upload(dest_path3)
#  resp <- dai_async("peshtigo.pdf")

## ---- eval=FALSE--------------------------------------------------------------
#  # wait till ready
#  gcs_list_objects()
#  
#  ## NOT RUN
#  our_file <- "<job_number>/0/peshtigo-0.json"

## ---- eval=FALSE--------------------------------------------------------------
#  dest_path4 <- file.path(tempdir(), "peshtigo.json")
#  gcs_get_object(our_file,
#                 saveToDisk = dest_path4)

## ---- eval=FALSE--------------------------------------------------------------
#  draw_blocks(dest_path4, dir = tempdir())

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("peshtigo1_blocks.png")

## ---- eval=FALSE--------------------------------------------------------------
#  text <- text_from_dai_file(dest_path4)
#  snippet <- substr(text, start = 1, stop = 1000)
#  cat(snippet)

## ---- eval=FALSE--------------------------------------------------------------
#  block_df <- build_block_df(dest_path4)

## ---- eval=FALSE--------------------------------------------------------------
#  new_block_df <- split_block(block_df, block = 12, cut_point = 50)

## ---- eval=FALSE--------------------------------------------------------------
#  token_df <- build_token_df(dest_path4)
#  token_df_correct <- reassign_tokens(token_df, new_block_df)

## ---- eval=FALSE--------------------------------------------------------------
#  text <- token_df_correct$token %>%
#    paste(collapse="")
#  snippet <- substr(text, start = 1, stop = 1000)
#  cat(snippet)

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("labelme1.png")

## ---- echo=FALSE, out.width = "50%"-------------------------------------------
include_graphics("labelme2.png")

## ---- eval=FALSE--------------------------------------------------------------
#  block13 <- from_labelme("peshtigo1_blocks.json")

## ---- eval=FALSE--------------------------------------------------------------
#  token_df_new <- reassign_tokens2(token_df, block13)

## ---- eval=FALSE--------------------------------------------------------------
#  token_df_correct <- token_df_new[order(token_df_new$block), ]

## ---- eval=FALSE--------------------------------------------------------------
#  text <- token_df_correct$token %>%
#    paste(collapse="")
#  snippet <- substr(text, start = 1, stop = 1000)
#  cat(snippet)

## ---- echo=FALSE, message=FALSE, warning=FALSE, eval=FALSE--------------------
#  #cleanup
#  contents <- gcs_list_objects()
#  map(contents$name, gcs_delete_object)

