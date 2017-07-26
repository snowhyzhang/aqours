
sider_menu_index <- menuItem("主页", tabName = "index")

tab_index <- tabItem(
  "index",
  fluidRow(
    box(
      width = 12,
      tags$div(tags$h2(tags$span("数据写诗", style = "line-height: 80px"), 
                       tags$img(src = "img/qcode.jpg", style = "float:right; height:80px; width:80px"),
                       tags$img(src = "img/server_avatar.png", style = "float:left; height:80px; width:80px")))
    )
  ),
  fluidRow(
    box(
      width = 12,
      welcome_word,
      index_intro
    )
  )
)


