# Step 1: Load libraries ####

rm(list = ls())
source("utils.R")

# Step 2: Define params - check if data and files exist, if not, create it ####

country_codes = c("FJ")   # options = c("CK", "FJ", "FM", "KI", "MH", "NC", "NR", "NU", "PF", "PG", "PW", "SB", "TK", "TO", "TV")
r_year = 2024                                             
r_5yr_ago = r_year - 4
report_ids = c(
               2918, 2986, 3222, 2917, 3602, 3317, 3315, 3314, 3513, 3612,     # addendum
               3526, 3527, 3529, 3530, 3531,                          # artisanal
               3605, 2953, 3063, 3153, 3155, 3040, 3168, 3608         # Part1
                                                                      # Ikasavea - in the future
               )

report_author = "Jessica LS"
rewrite_files = FALSE # set this to TRUE if you want to make sure the data is updated.

# Step 3: Loop through the countries to check if all data is available in your computer ####
for (country_code in country_codes) {
  process_country_data(country_code = country_code, r_year, report_ids, rewrite_files = rewrite_files)
}

# Step 4: Loop through the countries and generate reports ####
res <- build_reports(country_codes = country_codes,
                     max_year = r_year,
                     author = report_author,
                     reports = c("addendum", "part1")) # options are = c("addendum", "part1", "artisinal"))


