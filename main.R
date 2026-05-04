###################################################
## Part 1, Addendum and Artisanal Annual Reports ## 
##                                               ##  
## Author: SPC                                   ##
## Year: 2026                                    ##
###################################################

# Step 1: Load libraries ####
rm(list = ls())
source("utils.R")
get_all_country_codes()

# Step 2: Define params ####
country_codes <- c("PG")
r_year <- 2025
report_author <- "Jessica LS"
rewrite_files <- TRUE
reports_list <-  c("part1")           # options are: c("artisanal", "addendum", "part1")
aceman = FALSE # if TRUE, source only ACEs data from member country, if false, source data from yearbook.

# Step 3: Read/download data ####

# Use the params above to download data from T2 and Ikasavea or read data if available in your computer
for (country_code in country_codes) {
  process_country_data(country_code = country_code,
                       r_year = r_year,
                       rewrite_files = rewrite_files)
  yrs_long <- (r_year - 4):r_year
  create_maps(country_code = country_code, 
              r_year = r_year)
  
}

# Step 4: Generate reports ####
res <- build_reports(country_codes = country_codes,
                     max_year = r_year,
                     aceman = aceman,
                     author = report_author,
                     reports = reports_list,
                     sc_session    = "21",
                     ccm_num       = "22",
                     report_date   = format(Sys.Date(), "%d %b %Y"),
                     location      = "Apia, Samoa",
                     session_dates = "9--13 March 2025")