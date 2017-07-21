
sider_menu_article <- menuItem("阅读", tabName = "article")

tab_article <- tabItem(
  "article",
  fluidRow(
    box(
      width = 12,
      tags$div(tags$h2(tags$span("文章列表", style = "line-height: 80px"), 
                       tags$img(src = "img/qcode.jpg", style = "float:right; height:80px; width:80px"),
                       tags$img(src = "img/server_avatar.png", style = "float:right; height:80px; width:80px")))
    )
  ),
  fluidRow(
    box(
      width = 12
    )
  )
)

