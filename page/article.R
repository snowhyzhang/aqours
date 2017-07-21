
sider_menu_article <- menuItem("阅读", tabName = "article")

tab_article <- tabItem(
  "article",
  fluidRow(
    box(
      width = 12,
      tags$div(style = "text-align: center", tags$h2("文章列表"))
    )
  ),
  fluidRow(
    box(
      width = 12
    )
  ),
  fluidRow(
    box(
      width = 12,
      tags$div(style = "text-align: center", 
               tags$img(src = "img/qcode.jpg", height = 100, width = 100))
    )
  )
)

