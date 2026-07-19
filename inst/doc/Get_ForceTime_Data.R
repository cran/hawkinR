## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----access, eval=FALSE-------------------------------------------------------
# library(hawkinR)
# 
# # Connect using your secure profile
# hd_connect(profile = "default")

## ----getMyTests, eval=FALSE---------------------------------------------------
# # Find a specific Countermovement Jump from yesterday
# recent_tests <- get_tests(typeId = "CMJ", from = Sys.Date() - 1)
# target_id <- recent_tests$id[1]

## ----getRawData, eval=FALSE---------------------------------------------------
# # Fetch the raw data
# ft_obj <- get_forcetime(testId = target_id)

## ----S7Object, eval=FALSE-----------------------------------------------------
# # 1. Access Metadata properties
# print(ft_obj@athlete_name)
# #> [1] "John Doe"
# 
# print(ft_obj@testType_name)
# #> [1] "Countermovement Jump"
# 
# # 2. Access the Raw Data Frame (Time, Force, Velocity, etc.)
# head(ft_obj@data)
# #>   time_s force_left_N force_right_N force_combined_N velocity_m_s
# #> 1  0.000          450           460              910         0.00
# #> 2  0.001          451           459              910         0.00

## ----ftPlot, eval=FALSE-------------------------------------------------------
# # Plot the force trace using base R
# plot(
#   x = ft_obj@data$time_s,
#   y = ft_obj@data$force_combined_N,
#   type = "l",
#   col = "blue",
#   main = paste("Jump Trace:", ft_obj@athlete_name),
#   xlab = "Time (s)",
#   ylab = "Force (N)"
# )

## ----workflowA, eval=FALSE,message=FALSE--------------------------------------
# # Fetch all Drop Jumps from the last 7 days
# # Note: We pass standard get_tests() arguments (from, typeId) directly here!
# dj_list <- get_forcetime_bulk(
#   typeId = "Drop Jump",
#   from = Sys.Date() - 7
# )
# 
# # Result is a list of HawkinForceTime objects
# length(dj_list)
# #> [1] 12
# 
# # Access the first jump in the list
# first_jump <- dj_list[[1]]

## ----workfowB, eval=FALSE-----------------------------------------------------
# # Export all tests for a specific athlete to CSV
# get_forcetime_bulk(
#   athleteId = "athlete_uuid_here",
#   export = TRUE,
#   export_dir = "C:/My_Research_Data/Raw_Exports",
#   format = "csv",
# 
#   # Custom Naming: "Last, First_TestType_YYYYMMDD_HHMMSS.csv"
#   file_naming = c("athlete_name", "testType_name", "date")
# )

## ----customTags, eval=FALSE---------------------------------------------------
# get_forcetime_bulk(
#   ...,
#   file_naming = c("athlete_external$student_id", "testType_name")
# )

## ----deidentified, eval=FALSE-------------------------------------------------
# get_forcetime_bulk(
#   teamId = "team_uuid_here",
#   export = TRUE,
#   export_dir = "./study_data",
#   deidentify = TRUE  # Replaces athlete_name with "De-identified"
# )

