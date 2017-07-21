
sider_menu_index <- menuItem("主页", tabName = "index")

tab_index <- tabItem(
  "index",
  fluidRow(
    box(
      width = 12,
      tags$div(style = "text-align: center", tags$h2("数据写诗"))
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


