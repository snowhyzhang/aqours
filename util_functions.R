library(RMySQL)
library(DT)

# DB functions ------------------------------------------------------------

process_in_condition <- function(vctr) {
  return (paste0(vctr, collapse = ","))
}

mysql_load_table <- function(sql) {
  conn <- dbConnect(MySQL(), user = db_user, password = db_password, 
                    dbname = db_dbname, host = db_host, port = db_port)
  dbSendQuery(conn,"SET NAMES utf8")
  sql_result <- tryCatch(
    dbGetQuery(conn, sql),
    finally = dbDisconnect(conn)
  )
  
  return (sql_result)
}

mysql_write_table <- function(data, table_name, is_overwrite = FALSE, is_append = TRUE) {
  conn <- dbConnect(MySQL(), user = db_user, password = db_password, 
                    dbname = db_dbname, host = db_host, port = db_port)
  dbSendQuery(conn,"SET NAMES utf8")
  tryCatch(
    dbWriteTable(conn, name = table_name, value = data, 
                 overwrite = is_overwrite, append = is_append, row.names = FALSE),
    finally = dbDisconnect(conn)
  )
}

# DT options --------------------------------------------------------------

DT_active_options <- list(paging = TRUE, searching = TRUE, info = FALSE, ordering = TRUE, pageLength = 20)
DT_unactive_options <- list(paging = FALSE, searching = FALSE, info = FALSE, ordering = FALSE)
DT_emtpy <- datatable(data.frame(item = "没有符合条件的数据！", stringsAsFactors = FALSE), 
                      options = DT_unactive_options, rownames = FALSE)

# Tag Functions -----------------------------------------------------------

get_blank_a <- function(name, href) {
  tags$a(name, href = href, target = "_blank")
}
