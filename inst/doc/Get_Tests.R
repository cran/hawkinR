## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(knitr)

## ----alltests, eval=FALSE-----------------------------------------------------
# library(hawkinR)
# hd_connect()
# 
# # Call all tests
# all_tests <- get_tests()
# 
# # Pull all tests from the start of 2023 to present
# tests <- get_tests(from = "2023-01-01")

## ----testTypes, eval=FALSE----------------------------------------------------
# # Pull only CMJ tests
# cmj_data <- get_tests(typeId = "7nNduHeM5zETPjHxvm7s")
# 
# # Test type argument also excepts type name or abbreviation
# 
# # Squat Jump
# sj_data <- get_tests(typeId = "SJ")
# 
# # Iso tests
# iso_data <- get_tests(typeId = "Isometric Test")
# 

## ----roster, eval=FALSE-------------------------------------------------------
# # Store player info in object called roster.
# # 'inactive' is default to FALSE. Set to TRUE if you want to include inactive athletes.
# roster <- get_athletes(inactive = FALSE)

## ----rosterResp, echo=FALSE---------------------------------------------------
roster <- data.frame(
  "id" = c("0kEjAzSLpBwUZc4Yp2Ov", "1E1zYBv0CKbrKnsKz1vj", "1lXEZKkNuNwvMLXiqFRr"),
  "name" = c("Athlete One", "Player Two", "Person Three"),
  "active" = c(TRUE, TRUE, TRUE),
  "teams" = c("09u20ij0dj0", "09u20ij0dj0", "9308dj209dj"),
  "groups" = c("0j20j09jd9ud0j", "0j20j09jd9ud0j,92d2098d02j0", ""),
  "external" = c("AMS:dj0203j0dj,GPS:md029j3209j2","AMS:oin208ju09,GPS:od093j32", "AMS:j029j0jd20j,GPS:0d28j098h3")
)

kable(roster)

## ----specificTestCalls, eval=FALSE--------------------------------------------
# 
# # Tests By Athlete
# athelte <- roster$id[roster$name == "Some Athlete"]
# ath_tests <-  get_tests(athleteId = athlete)
# 
# # Pull Tests by team
# team_ids <- c("team_id_1", "team_id_2")
# cohort_data <- get_tests(teamId = team_ids)

## ----syncParams, eval=FALSE---------------------------------------------------
# # Pull everything synced to the cloud in the last 24 hours
# last_24h <- as.numeric(Sys.time()) - 86400
# new_data <- get_tests(from = last_24h, sync = TRUE)

## ----inactiveData, eval=FALSE-------------------------------------------------
# # Include inactive/deleted tests in the response
# all_history <- get_tests(from = "2023-01-01", includeInactive = TRUE)

