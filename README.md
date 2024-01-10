# ePilot Project

Welcome to the ePilot Project repository! 

This project aims to provide a comprehensive solution for Extracting, Loading, Transforming and Analysing of European Electricity Market Data.

The dataset from the ENTSO-E Transparency Platform can be viewed [here](https://www.kaggle.com/datasets/henricuscornelis/european-unit-electricity-generation-2022-2023).

## Table of Contents
- [Features](#features)
- [Python-requirements](#Python-requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Analysis](#Analysis)

## Features

- **Feature 1:** Extraction from raw_data_source folder
    - The project facilitates the extraction of raw data stored in the raw_data_source folder. This folder serves as a repository for various data sources pivotal to the project's objectives, including diverse formats like CSVs, JSONs, or other structured files.
    - Implementation: The project includes scripts or mechanisms to extract data from the raw_data_source folder, ensuring comprehensive retrieval of relevant datasets
- **Feature 2:**  Loading into Snowflake's Raw Schema
    - Upon extracting data from the raw_data_source folder, the project loads it into the designated raw schema within Snowflake. This schema acts as the initial staging area for unprocessed data, maintaining its integrity before subsequent transformations.
    - Leveraging Snowflake's capabilities, the project loads extracted data into tables or staging areas within the raw schema, ensuring data preservation in its original format.

- **Feature 3:** Transformation using dbt for Analysis Preparation
    - dbt (Data Build Tool) plays a pivotal role in the project for comprehensive data transformation, structuring, and preparation aimed at enabling effective analysis. This phase involves data cleaning, normalization, and application of business rules to generate refined datasets.
    - Harnessing dbt's functionalities, the project develops transformation pipelines that apply SQL-based transformations to the data loaded into Snowflake's raw schema. This process ensures optimized data preparation for subsequent analysis.
- **Feature 4:** Data Modeling for Analytical Use
    -  Post-transformation, the project focuses on creating data models optimized for analytical exploration. It involves the creation of logical structures and relationships among datasets to facilitate efficient querying and analysis.
    - Using dbt and Snowflake, the project constructs schema models, aggregates data, and establishes relationships to create a coherent and optimized data model conducive to various analytical queries and reporting needs.


## Python-requirements
This project requires Python 3 to be installed on your machine to run.
## Installation

### Python 3 Installation

If you haven't installed Python 3 yet, please download and install it from the official Python website:

- [Python Downloads](https://www.python.org/downloads/)

Follow the installation instructions specific to your operating system.

Once Python 3 is installed, you can proceed with the rest of the project setup as mentioned in the [Installation](#installation) section.

## Installation

To get started with the ePilot Project, follow these steps:

1. Clone this repository to your local machine using `git clone https://github.com/mgrayzer/epilot-project.git`.
2. Download and install [SnowSQL](https://developers.snowflake.com/snowsql/), the Snowflake command-line tool, following the instructions provided on the SnowSQL website.
3. Obtain the raw data required for the project. You can download it from [this link](https://drive.google.com/drive/folders/1S53M23-AzKS2CaRHYdtewVk36hNAR-bx).
4. Place the downloaded raw data in the project directory `raw_data_source`.

## Usage

After completing the installation steps and downloading the required components, follow these instructions to execute the end to end pipline:

1. Open the command line interface.
2. Navigate to the project directory using the `cd` command:
    ```bash
    cd path/to/epilot-project
    ```
3. Run the following command to execute the analysis:
    ```bash
    make execute_analysis
    ```
   This command will install all the required project dependencies load the raw data to the snowflake cluster complete the transformation and create the Anlytics table for reporting.
   
   you will be prompted to input the password for the snowflake cluster. 

4. Follow any additional prompts or instructions as required during the analysis process.

## Analysis
Data visualization of the anlytics tables can be found [here](https://lookerstudio.google.com/reporting/faa669ab-6a28-4d23-999b-508b4bedda4d). These are interactive charts done in Google's Looker Studio.

A test account was created in Snowflake to facilitate the ELT process and subsequest Analysis in Google Looker Studio. 
The link to access the platfor can be done [here](https://ff77862.eu-central-1.snowflakecomputing.com/) User name and
password will be provided in tbe email that will be forwarded. 


## Contact

For any inquiries or feedback, please contact Marlon Gray at mgrayzer@hotmail.com.

---
