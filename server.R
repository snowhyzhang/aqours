
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  output$booklet_list <- DT::renderDataTable(
    output_book_list()
  )
  
  output$article_list <- DT::renderDataTable(
    output_article_list()
  )
})
