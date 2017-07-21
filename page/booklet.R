
sider_menu_booklet <- menuItem("小册子", tabName = "booklet")

tab_booklet <- tabItem(
  "article",
  fluidRow(
    box(
      width = 12,
      tags$div(tags$h2(tags$span("小册子列表", style = "line-height: 80px"), 
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

