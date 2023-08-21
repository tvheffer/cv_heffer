
if(!requireNamespace('remotes')) install.packages("remotes")
remotes::install_github('YuLab-SMU/scholar')

library(scholar)
id <- "yQeewdwAAAAJ&hl"

get_profile(id)
get_publications(id)
get_citation_history(id)

format_publications(id,"T Heffer") |> cat(sep='\n\n')

### new pubs ```{r, results = "asis"}
#library(scholar)
#id <- "yQeewdwAAAAJ&hl"
#format_publications(id,"T Heffer") |> cat(sep='\n\n')
#```
