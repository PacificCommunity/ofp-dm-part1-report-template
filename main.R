# Step 1: Load libraries ####
rm(list = ls())
library(readr)
library(quarto)
source("utils.R")
library(tictoc)

tic()
# Step 2: Define params - check if data and files exist, if not, create it ####
country_codes = c("KI", "VU", "SB") 
r_year = 2024                                             # year(Sys.Date()) - 2
r_5yr_ago = r_year - 4
report_ids = c(
               2918, 2986, 3222, 2917, 3602,                          # addendum
               3526, 3527, 3529, 3530, 3531,                          # artisanal
               3605, 2953, 3063, 3153, 3155, 3040, 3168, 3608         # Part1
                                                                      # Ikasavea - in the future
               )
report_author = "Jessica LS"
rewrite_files = TRUE
# If you want to make sure the data is up to date, set rewrite_files above to TRUE, 
# otherwise, it will load the T2 reports you already have saved in your data/ 
# folder (if any).

# Step 3: Loop through the countries to check if all data is available in your computer ####
for (country_code in country_codes) {
  process_country_data(country_code, r_year, report_ids, rewrite_files = rewrite_files)
}

# Step 4: Loop through the countries and generate reports ####
res <- build_reports(country_codes = country_codes,
                     max_year = r_year,
                     author = report_author) # todo: add and option to select report types


toc()