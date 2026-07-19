## ----logs_info, eval=FALSE----------------------------------------------------
# library(hawkinR)
# 
# # Standard connection with INFO logging
# hd_connect(profile = "default")

## ----verbose_debugging, eval=FALSE--------------------------------------------
# # Detailed TRACE logging to see exact API request parameters
# hd_connect(profile = "default", log_level = "TRACE")
# 
# # Fetch data; logs will show the URL and parameters being sent
# tests <- get_tests(from = "2023-01-01")

## ----eval=FALSE---------------------------------------------------------------
# # Only log if something goes wrong
# hd_connect(profile = "default", log_level = "ERROR")

## ----advanced_logging, eval=FALSE---------------------------------------------
# hd_connect()
# 
# # Direct all subsequent hawkinR logs to a file
# logger::log_appender(logger::appender_file("hawkin_audit.log"))

