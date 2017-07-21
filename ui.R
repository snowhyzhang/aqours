  
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#


library(shiny)
library(shinydashboard)

source("page_compiler.R")

page_header <- dashboardHeader(title = "数据写诗")

page_sidebar <- dashboardSidebar(
  sidebarMenu(
    sider_menu_index,
    sider_menu_article,
    sider_menu_booklet,
    sider_menu_about_me
  )
)

page_body <- dashboardBody(
  tabItems(
    tab_index,
    tab_article,
    tab_booklet,
    tab_about_me
  )
)

shinyUI(
  dashboardPage(
    page_header,
    page_sidebar,
    page_body
  )
)