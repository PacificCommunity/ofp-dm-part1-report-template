# ofp-dm-part1-report-template
In this report we maintain the pipeline to create Part 1 reports.

If it is your first time cloning a repository refer to [How to Clone a GitHub Repository](https://github.com/PacificCommunity/ofp-dm-useful-scripts/blob/main/README.md#how-to-clone-a-github-repository)


# How to use this repository

You can generate Part 1 reports for multiple countries by running `main.R`.

Make sure you first go through the Step Intructions below. Then, go to the *Step 2* section in the `main.R` to 
confirm you have the correct list of countries you want to generate reporrts for and/or if you would like to update 
any of the other attributes defined in this section.

These attributes will be used to:

- Pull or read the pre saved data that will be used for the generation of Part 1 reports (saved on folder `data`)
- Generate Part 1 reports for the selected year (saved on folder `reports`)


# Setup Instructions

## 1. Environment Configuration
1. Copy the `envtemplate` file to create a new file named `.env`
2. Add your Tufman 2 password to the `.env` file:
   ```
   USER_NAME=your_user_name_here
   TUF_PASSWORD=your_password_here
   ```
3. Ensure there's an empty line at the end of the `.env` file
4. **Important**: Never commit the `.env` file to version control


