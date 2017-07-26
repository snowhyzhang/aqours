
sider_menu_article <- menuItem("阅读", tabName = "article")

tab_article <- tabItem(
  "article",
  fluidRow(
    box(
      width = 12,
      tags$div(tags$h2(tags$span("文章列表", style = "line-height: 80px"), 
                       tags$img(src = "img/qcode.jpg", style = "float:right; height:80px; width:80px"),
                       tags$img(src = "img/server_avatar.png", style = "float:left; height:80px; width:80px")))
    )
  ),
  fluidRow(
    box(
      width = 8,
      DT::dataTableOutput("article_list")
    ),
    box(
      width = 4,
      article_intro
    )
  )
)

get_article_list <- function() {
  article_list <- "select * from article order by update_time desc" %>% 
    mysql_load_table()
  
  return (article_list)
}

output_article_list <- function() {
  article_list <- get_article_list()
  
  article_list <- article_list %>% 
    mutate(
      title = sprintf("<a href = \"%s\" target = \"_blank\"> %s </a>",
                      url, title),
      github = sprintf("<a href = \"%s\" target = \"_blank\"> %s </a>",
                       github_url, "Code & Data @ GitHub")
    ) %>% 
    select(-id, -url, -github_url)
  
  datatable(article_list, options = DT_active_options, rownames = FALSE, escape = c(2, 3),
            colnames = c("标题", "标签", "更新日期", "代码/数据"))
}

