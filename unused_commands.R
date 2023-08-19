structure(list(what = c("Harvard University", "Brock University",  "Brock University", "Brock University"), 
               when = structure(c("2022", "2017","2033","22"), 
                                class = c("glue", "character")), 
               with = c("Postdoctoral (NSERC) Fellow", "PhD, Lifespan Development Psychology", "MA, Lifespan Development Psychology",
                        "Bachelor of Arts, Honors Psychology and Child and Youth"), 
               where = c("Cambridge, MA", "St. Catharines, ON", "St. Catharines, ON","St. Catharines, ON")), 
          row.names = c(NA, 4L), 
          groups = structure(list(what = c("", ""), 
                                  when = structure(c("", "", ""), class = c("", "")), 
                                  with = c("", ""), 
                                  where = c("", ""), .rows = structure(list(2L, 1L), ptype = integer(0), class = c("vctrs_list_of","vctrs_vctr","list"))),
                             row.names = c(NA, -2L), class = c("tbl_df", "tbl", "data.frame"), .drop = TRUE), class = c("vitae_detailed", 
                                                                                                                        "vitae_preserve",
                                                                                                                        "grouped_df","tbl_df", "tbl",
                                                                                                                        "data.frame"),
          preserve = c("what","when","with","where"),
          protect = TRUE)




library(tibble)
tribble(
    ~ Degree, ~ Year, ~ Institution, ~ Where, ~ Why,
    "Brock University(Undergraduate 3rd year course)", "2020/21", "Data Science for Academic and Applied Research ", NA, NA,
    "Brock University(Undergraduate 2nd year course)", "2015/18/19", "Lifespan Development", NA, NA,
    "Brock University(Undergraduate 4th year course)", "2018", "Transition to workplace", NA, NA, 
    "Brock University(Undergraduate 3rd year course)", "2016/17", "Statistics", NA, NA,
    "Brock University(Undergraduate 3rd year course)", "2016", "Adolescent Development", NA, NA,
    "Brock University(Undergraduate 3rd year course)", "2015", "Social Development", NA, NA) %>%
    detailed_entries(Degree, Year, Institution, Where, Why)




library(tibble)
tribble(
    ~ Degree, ~ Year, ~ Institution, ~ Where, ~ Why,
    "Pathstone Mental Health", "2020", "Community Research Talk", NA, NA,
    "Heffer et al., 2019", "2020", "Media Interviews", NA, " Association for Psychological Science. (2019, February 27).  Longitudinal Data Show No Evidence of Teens’ Social Media Use Leading to Depression. Retrieved from https://www.psychologicalscience.org/observer/longitudinal-data-show-no-evidence-of-teens-social-media-use-leading-to-depression (also featured in Science Daily); Psychology Today. (2019, February 22). 
 Is Tech Really Hurting Teens? [Press release]. Retrieved from: https://www.psychologytoday.com/us/blog/brainstorm/201902/is-tech-really-hurting-teens",
    "Brock University(Undergraduate 4th year course)", "Nov 2020", "Data Science for Academic and Applied Research", NA, NA,
    "Brock University(Undergraduate 3rd year course)", "March 2019", "Adolescent Development ", NA, NA,
) %>%
    detailed_entries(Degree, Year, Institution, Where, Why)

# Leadership

```{r Leadership, results = "asis"}

leadership %>%
    detailed_entries(
        with = title,
        what = unit,
        why = detail,
        when = glue::glue("{startMonth} {startYear} - {endMonth} {endYear}",.na = ""),
        where = where, .protect = F
    )

```


# Technical Skills 

<!-- \noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}} -->
    
    <!-- \par\noindent\nobreak\vspace{-30pt}\rule{\textwidth}{1pt} -->
    
    ```{r techtable, results='markup'}
tribble(
    ~`Coding Languages`, ~Software, ~`Markup Languages`,
    "R, MATLAB", 
    "MPLUS, SPSS, GITHUB",
    "CSS, HTML, \\LaTeX, RMarkdown, Bootstrap"
) %>%
    kable(booktabs = T, align = 'c', escape = F, format = "latex") %>%
    kable_styling(full_width = F, font_size = 9,latex_options = "hold_position") %>% 
    row_spec(0, bold = T, color = "#414141") %>% 
    row_spec(1, bold = F, color = "#7f7f7f") %>% 
    column_spec(column = 1:3, width = '4.75cm')
```


<!-- \smallskip -->

