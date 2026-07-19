## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(knitr)

## ----store_credentials, eval=FALSE--------------------------------------------
# library(hawkinR)
# 
# # Run this once to save your key securely
# hd_auth_store(token = "your_integration_key_here")

## ----initialize, eval=FALSE, message=FALSE, echo=TRUE-------------------------
# # Initialize the session using the 'default' profile stored above
# hd_connect(region = "Americas")
# 
# #> hawkinR -> Successfully authenticated as 'default'

## ----roster, eval=FALSE-------------------------------------------------------
# # store player info in object called roster. 'includeInactive' is default to FALSE. Set to TRUE if you want to include inactive athletes.
# roster <- get_athletes(includeInactive = FALSE)

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

## ----teams, eval=FALSE--------------------------------------------------------
# # store team info in an object called teams.
# teams <- get_teams()

## ----teamsResp, echo=FALSE----------------------------------------------------
teams <- data.frame(
  "id" = c("09u20ij0dj0", "9308dj209dj"),
  "name" = c("Team One", "Team Two")
)

kable(teams)

## ----groups, eval=FALSE-------------------------------------------------------
# # store group info in an object called groups.
# groups <- get_groups()

## ----groupsResp, echo=FALSE---------------------------------------------------
groups <- data.frame(
  "id" = c("0j20j09jd9ud0j", "92d2098d02j0"),
  "name" = c("Position Group", "Grad Year Group")
)

kable(groups)

## ----types, eval=FALSE--------------------------------------------------------
# # store test type IDs in an object called testIds
# testIds <- get_testTypes()

## ----typesResp, echo=FALSE----------------------------------------------------
tests <- data.frame(
  "name" = c("Countermovement Jump","	
Squat Jump","	
Isometric Test", "Drop Jump", "Free Run", "CMJ Rebound", "Multi Rebound", "Weigh In", "Drop Landing"),
"id" = c("7nNduHeM5zETPjHxvm7s","QEG7m7DhYsD6BrcQ8pic", "2uS5XD5kXmWgIZ5HhQ3A", "gyBETpRXpdr63Ab2E0V8", "5pRSUQVSJVnxijpPMck3", "pqgf2TPUOQOQs6r0HQWb", "r4fhrkPdYlLxYQxEeM78", "ubeWMPN1lJFbuQbAM97s", "rKgI4y3ItTAzUekTUpvR")
)

kable(tests)


## ----getTests, eval=FALSE-----------------------------------------------------
# # Example: Pull all CMJ tests from the last 30 days
# cmj_tests <- get_tests(
#   from = "2023-10-01",
#   typeId = "7nNduHeM5zETPjHxvm7s"
# )

