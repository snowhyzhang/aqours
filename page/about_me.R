
sider_menu_about_me <- menuItem("关于我", tabName = "about_me")

tab_about_me <- tabItem(
  "about_me",
  fluidRow(
    box(
      width = 12,
      tags$div(tags$h2(tags$span("关于我", style = "line-height: 80px"), 
                       tags$img(src = "img/qcode.jpg", style = "float:right; height:80px; width:80px"),
                       tags$img(src = "img/server_avatar.png", style = "float:right; height:80px; width:80px")))
    )
  )
)