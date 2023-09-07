## ---- include = FALSE---------------------------------------------------------
options(rmarkdown.html_vignette.check_title = FALSE)
library(knitr)
opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- echo=FALSE, out.width = "100%"------------------------------------------
include_graphics("tobacco.PNG")

## ---- eval=FALSE--------------------------------------------------------------
#  library(daiR)
#  setwd(tempdir())
#  download.file("https://archive.org/download/tobacco_lpnn0000/lpnn0000.pdf",
#                destfile = "tobacco.pdf",
#                mode = "wb")
#  
#  resp <- dai_sync_tab("tobacco.pdf")

## ---- eval=FALSE--------------------------------------------------------------
#  tables <- tables_from_dai_response(resp)

## ---- eval=FALSE--------------------------------------------------------------
#  table1 <- tables[[1]]

## ---- eval=FALSE--------------------------------------------------------------
#  for(i in 1:length(tables)) {
#    assign(paste0("table", i), tables[[i]])
#  }

## ---- echo=FALSE, out.width = "100%"------------------------------------------
include_graphics("table.PNG")

## ---- eval=FALSE--------------------------------------------------------------
#  ## NOT RUN
#  tables <- tables_from_dai_file("tobacco.json")

