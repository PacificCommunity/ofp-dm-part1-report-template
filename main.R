# Step 1: Load libraries ####
rm(list = ls())
library(readr)
library(quarto)
source("utils.R")

# Step 2: Define params - check if data and files exist, if not, create it ####
country_codes = c("SB", "VU", "KI")
r_year = year(Sys.Date()) - 2
r_5yr_ago = r_year - 5
report_ids = c(
               2918, 2986, 3222, 2917, 3602, # addendum
               3526, 3527, 3529, 3530, 3531, # artisanal
               # we then need to source data from Ikasavea and compile with data from t2
               3605, 2953, 3063, 3153, 3155, 3040, 3168 # Part 1
               )
report_author = "Jessica LS"
rewrite_files = FALSE # TRUE if want to update your files (data from T2 reports)
dir.create("./reports", showWarnings = FALSE, recursive = TRUE)

# Step 3: Loop through the countries to check if all data is available ####

# If you want to make sure the data is up to date, set rewrite_files to TRUE, 
# otherwise, it will load the T2 reports you already have saved in your data/ 
# folder (if any).

# todo: we need to make sure all countries have access to the t2 reports we are
  ## sourcing here.
for (country_code in country_codes) {
  process_country_data(country_code, r_year, report_ids, rewrite_files = rewrite_files)
}

# Step 4: Loop through the countries and generate reports ####

for (country_code in country_codes){
  
  # Define your parameters
  params <- list(
    country_code = country_code,
    country_folder = paste0("./data/report_", as.character(r_year),"_", tolower(country_code), "/"),
    max_year = r_year,
    author = report_author
    
  )
  
  output_filename = paste0("addendum_report_", tolower(params$country_code), "_", params$max_year, ".docx")
  
  # Render the document with parameters
  quarto_render(
    input = "addendum_template_test.qmd",
    execute_params = params,
    output_file = output_filename
  )
  
  # Move the rendered file to the reports directory
  file.rename(
    from = output_filename,
    to = file.path("./reports", output_filename)
  )
}
