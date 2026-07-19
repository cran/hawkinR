## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----store_credentials, eval=FALSE, message=FALSE, warning=FALSE--------------
# library(hawkinR)
# 
# # This will open a secure popup window asking for your Refresh Token.
# # We recommend naming your primary key "default".
# hd_auth_store(profile = "default")

## ----getTests, eval=FALSE, echo=TRUE------------------------------------------
# # Connects using the 'default' profile
# hd_connect()
# 
# # Fetch data immediately - the connection is handled implicitly
# trials <- get_tests()

## ----multipleProfiles, eval=FALSE, echo=TRUE----------------------------------
# hd_auth_store(profile = "mens_soccer")
# hd_auth_store(profile = "womens_soccer")

## ----switchProfiles, eval=FALSE, echo=TRUE------------------------------------
# # Switch to the Men's team context
# hd_connect(profile = "mens_soccer")
# men_data <- get_tests()
# 
# # Switch to the Women's team context
# hd_connect(profile = "womens_soccer")
# women_data <- get_tests()

## ----connect, eval=FALSE, echo=TRUE-------------------------------------------
# # This tells the package to use System Environment Variables
# hd_connect(environment = "production")
# 
# # The rest of your code remains identical
# df <- get_tests()

## ----advanced, echo=TRUE, eval=FALSE------------------------------------------
# # Create specific session objects
# conn_a <- hd_connect(profile = "org_a")
# conn_b <- hd_connect(profile = "org_b")
# 
# # Pass the connection as the first argument to any 'get' function
# 
# data_a <- get_tests(conn_a, from = "2024-01-01")
# data_b <- get_tests(conn_b, from = "2024-01-01")

