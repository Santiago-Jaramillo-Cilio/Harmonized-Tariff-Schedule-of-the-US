## README

Repository for Harmonized Tariff Schedule USA 2024

Overview

This repository contains the data cleaning scripts and cleaned versions of the "Harmonized Tariff Schedule of the United States" dataset. The original dataset, consisting of import/export codes and related tariffs, required significant cleaning and standardization to enhance usability for analysis and integration into tariff-related applications.

Objectives

Standardize Formatting: Ensure consistent formatting across all data entries for seamless integration and analysis.
Remove Inconsistencies: Identify and correct discrepancies within the data, such as mismatched tariff codes or descriptions.
Handle Missing Values: Strategically address missing data to maintain the integrity of the dataset without introducing bias.
Simplify Categories: Where applicable, consolidate overly granular categories to simplify analysis.

Process

The cleaning process involved several key steps:

Initial Assessment: Reviewed the dataset to identify major areas requiring attention, such as missing values, inconsistent formats, and incorrect data entries.
Formatting Standardization: Applied uniform formatting rules across all data fields, particularly for HTS numbers and tariff rates.
Missing Data Handling: Evaluated the impact of missing values and applied appropriate strategies, such as filling with predefined placeholders or removing incomplete rows, based on the nature of the data.
Data Validation: Cross-referenced entries with authoritative sources to ensure accuracy and reliability of tariff codes and descriptions.
Automation of Reusable Scripts: Developed R scripts to automate repetitive cleaning tasks, ensuring reproducibility and efficiency for future updates.

Files

Tariffs_24_Cleaned.R: R script containing all data cleaning functions and processes.
Tariffs_24_Cleaned.csv: The final cleaned dataset, ready for analysis and application.
README.md: Documentation of the data cleaning process, objectives, and file descriptions.
