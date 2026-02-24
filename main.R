# Step 1: Load libraries ####
rm(list = ls())
source("utils.R")
get_all_country_codes()

# Step 2: Define params - check if data and files exist, if not, create it ####

country_codes = c("VU")
r_year = 2024  
report_author = "Jessica LS"
rewrite_files = TRUE
# rewrite_files = TRUE if you want to make sure the data is updated.

### Never change/update the values below:
report_ids = c(2918, 2986, 3222, 2917, 3602, 3317, 3315, 3314, 3612, 3513,# addendum
               3615, 3527, 3614,                                          # artisanal
               3605, 2953, 3168, 3608)                                    # Part1

report_ids_ikasavea = c()
# report_ids_ikasavea = c("b1559368-b7a3-464e-883a-34fe3d2cd7c0", "91a1cb61-8436-49aa-a552-512f0362f403") 

# Step 3: Loop through the countries to check if all data is available in your computer ####
for (country_code in country_codes) {
  process_country_data(country_code = country_code, r_year = r_year, report_ids = report_ids, 
                       report_ids_ikasavea = report_ids_ikasavea,
                       rewrite_files = rewrite_files)
}

# Step 4: Loop through the countries and generate reports ####
res <- build_reports(country_codes = country_codes,
                     max_year = r_year,
                     author = report_author,
                     reports = c("addendum", "part1")) # options are = c("addendum", "part1", "artisanal"))


