
sider_menu_booklet <- menuItem("小册子", tabName = "booklet")

tab_booklet <- tabItem(
  "booklet",
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
      width = 8,
      DT::dataTableOutput("booklet_list")
    ),
    box(
      width = 4,
      booklet_intro
    )
  )
)

get_book_list <- function() {
  book_list <- "select * from booklet order by update_time desc" %>% 
    mysql_load_table()
  
  return (book_list)
}

output_book_list <- function() {
  book_list <- get_book_list()
  
  book_list <- book_list %>% 
    mutate(
      title = sprintf("<a href = \"%s/index.html\" target = \"_blank\"> %s </a>",
                      url, title)
    ) %>% 
    select(-id, -url)
  
  datatable(book_list, options = DT_active_options, rownames = FALSE, escape = 2)
}


