---
editor_options: 
  markdown: 
    wrap: 72
---

# Part1, Addendum and Artisanal Report Templates

In this report we maintain the pipeline to create Part 1, addendum and artisanal reports.

If it is your first time cloning a repository refer to [How to Clone a
GitHub
Repository](https://github.com/PacificCommunity/ofp-dm-useful-scripts/blob/main/README.md#how-to-clone-a-github-repository)

# How to use this repository

You can generate reports for multiple countries by running
`main.R`.

Make sure you first go through the Step Instructions below. Then, go to
the *Step 2* section in the `main.R` to confirm you have the correct
list of countries you want to generate reports for and/or if you would
like to update any of the other attributes defined in this section.

These attributes will be used to:

-   Pull or read the pre saved data that will be used for the generation
    of Part 1 reports (saved on folder `data`)
-   Generate Part 1 reports for the selected year (saved on folder
    `reports`)

# Setup Instructions

## 1. Environment Configuration

1.  Copy the `envtemplate` file to create a new file named `.env`

2.  Add your Tufman 2 password to the `.env` file:

    ```         
    USER_NAME=your_user_name_here
    TUF_PASSWORD=your_password_here
    IKA_USER_NAME=your_user_name_here
    IKA_PASSWORD=your_password_here
    ```

3.  Ensure there's an empty line at the end of the `.env` file

4.  **Important**: Never commit the `.env` file to version control

5.  Open script main.R and make sure all packages are installed

6.  Run main.R - this will "download" all T2 data required for Part 1 as
    well as generate Part 1, addendum and artisinal reports

# Data used to produce the reports

All tables, figures and maps presented in the report are based on data
available in T2 and Ikasavea reports.

Below we specify the data source for each result displayed in the
reports (ie.: which T2 report is used to produce each of the graphs,
figures and maps in the reports).

## Part 1

| Tufman 2 Report | \# Outputs (maps, tbls, plots) | Outputs (Quarto label) |
|-----------------|:----------------------:|-------------------------------------|
| `2953` | 3 | • SSI catches -- Purse seine fleet (`tbl-tbl3s`) <br> • SSI catches -- Longline fleet (`tbl-tbl3ll`) <br> • SSI catches -- Pole line fleet (`tbl-tbl3lpl`) |
| `3605` | 12 | • Annual catch estimates -- Purse seine fleet (`tbl-tbl1s`) <br> • Annual catch estimates -- Longline fleet (`tbl-tbl1l`) <br> • Annual catch estimates -- Pole line fleet (`tbl-tbl1pl`) <br> • Historical annual catch -- Purse seine fleet (`fig-fig1s`) <br> • Historical annual catch -- Longline fleet (`fig-fig1l`) <br> • Historical annual catch -- Pole line fleet (`fig-fig1pl`) <br> • Historical annual vessel numbers -- all gears (`fig-fig2`) <br> • Active vessels by size category -- Longline (`tbl-tbl2-longline`) <br> • Active vessels by size category -- Purse seine (`tbl-tbl2-ps`) <br> • Active vessels by size category -- Pole line (`tbl-tbl2-pl`) <br> • Non-target species catches -- Purse seine (`tbl-tbl4s`) <br> • Non-target species catches -- Longline (`tbl-tbl4l`) |
| `3608` | 3 | • Catch distribution map -- Purse seine (`fig-figmapps`) <br> • Catch distribution map -- Longline (`fig-figmapl`) <br> • Catch distribution map -- Pole line (`fig-figmappl`) |

## Addendum


| Tufman 2 Report | # Outputs | Outputs (Quarto label) |
|-----------------|:----------------------:|-------------------------------------|
| 2918 |  1 | • Swordfish vessels & catch south of 20S (`tbl-2009-03`) |
| 2986 |  1 | • Observer coverage of longline fleet (`tbl-obs_cov`) |
| 3222 |  1 | • Cetacean encirclements by purse seine nets (`tbl-cmm2011-03`) |
| 3317 |  5 | • Seabird interactions summary by year (`tbl-cmm2018-03x`) <br> • Seabird interactions south of 30S (`tbl-sb_s30s`) <br> • Seabird interactions between 30S–25S (`tbl-sb_25s_30s`) <br> • Seabird interactions between 25S–23N (`tbl-sb_25s_23n`) <br> • Seabird interactions north of 23N (`tbl-sb_23n`) |
| 3612 |  1 | • Merged into `a6` to add total hooks; feeds all 5 seabird tables above |
| 3605 |  1 | • Vessel counts joined into `a6`; feeds all 5 seabird tables above |
| 3315 |  4 | • Seabird mitigation types south of 30S (`tbl-s30s`) <br> • Seabird mitigation types between 30S–25S (`tbl-30s_25s`) <br> • Seabird mitigation types between 25S–23N (`tbl-25s_23n`) <br> • Seabird mitigation types north of 23N (`tbl-n23n`) |
| 3314 |  1 | • Seabird captures by species and area (`tbl-cmm2018-03z`) |
| 2917 |  1 | • Striped marlin vessels and catch south of 15S (`tbl-cmm2006-04`) |
| 3602 |  1 | • North Pacific albacore vessels, effort and catch (`tbl-cmm2019-03`) |
| data/{member}/CMM2023_03.csv |  1 | • North Pacific swordfish vessels, effort and catch (`tbl-cmm2023-03`) |



## Artisanal

|  Tufman 2 Report | # Outputs | Outputs (Quarto label) |
|-----------------|:----------------------:|-------------------------------------|
| 3615 | 2 | • Trips reported in Tails by month & landing site (`Monthly-effort`) <br> • Landing site comparison T2 vs Ikasavea (`diff_t2_ika`) |
| 3527 | 3 | • Used to calculate total trips for SKJ CPUE (`data_skj`) <br> • Used to calculate total trips for YFT CPUE (`df_yft`) <br> • Used to calculate total trips for BET CPUE (`df_bet`) |
| 3614 | 3 | • Unraised SKJ catch by landing site & month (`data_skj`) <br> • Unraised YFT catch by landing site & month (`df_yft`) <br> • Unraised BET catch by landing site & month (`df_bet`) |


|  Ikasavea | # Outputs | Outputs (Quarto label) |
|-----------------|:----------------------:|-------------------------------------|
| data_ika_trips | 1 | • Trips reported in Ikasavea by month & landing site (`tab2`)


---
