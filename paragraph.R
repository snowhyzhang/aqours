
welcome_word <- tags$p("欢迎来到数据写诗，不定时分享有关R语言在数据处理、可视化、机器学习等方面使用过程中的心得与经验。")
index_intro <- tags$p("网站使用", get_blank_a("Shiny框架", "http://shiny.rstudio.com/"), "进行搭建，源代码分享在", 
                      get_blank_a("github", "https://github.com/snowhyzhang/aqours"),"上")

article_intro <- tags$p("也可以在搜索栏中，在搜索中搜索你感兴趣的文章")

booklet_intro <- tags$p(tags$p("小册子是一些小书籍，主要介绍一些package和一些比较综合的技术，使用", 
                        get_blank_a("rbookdown", "https://bookdown.org/yihui/bookdown/"),
                        "进行编写。"),
                        tags$p("可以在搜索栏中搜索你感兴趣的小书籍。"))
