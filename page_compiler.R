
source("config/config.R") # 读取数据库等配置
source("util_functions.R")
source("paragraph.R")

# build pages
library(DT)
library(dplyr)

source("page/index.R")
source("page/article.R")
source("page/booklet.R")
source("page/about_me.R")