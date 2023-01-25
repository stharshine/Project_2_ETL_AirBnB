# Project 2: Extract, Transform, and Load

![airbnb_nyc](https://user-images.githubusercontent.com/105055655/214406866-453e5a7d-e477-4301-93b9-23f7cc500f22.jpg) 

### Contents: 
- Project Proposal
- Goal of the ETL
- Sources of Data
- Required Setup
- Data Extraction
- Data Transformation
- Data Loading
- Collaborators

## Project Proposal

The project focuses on the New York City Airbnb Market, one of the most visited cities in the whole world and home of many Broadway enthusiasts.
The chosen dataset’s have been extracted from three different sources of data: Personal Information of Airbnb hosts, Cost of Properties per Area and Room type. The data transformation process will be performed using Jupyter Notebook, and then be loaded into a PostgreSQL database preparing the data for further analysis to be performed.


## Goal of the ETL

The goal of this project is to produce a dataset which can utilised in further research by data analysts, who may be exploring the idea of investing in Airbnb properties in New York and the possible financial gains from each type of property (private room or entrire apartment).

Specific areas of application for a data analyst could include:
- Identifying the average price, per night, of an Airbnb listing in New York City
- Identifying the cost of a private room compared to the cost of an entire apartment, and therefore the financial gain. 
- Identifying the most luxurius and valuable boroughs within the City and the average difference in price between them.


## Sources of Data
Our dataset contains two CSV files and one Excel file are available from [kaggle](https://www.kaggle.com/datasets/ebrahimelgazar/new-york-city-airbnb-market?resource=download&select=airbnb_room_type.xlsx).
All files are located in the [Resources Folder](https://github.com/stharshine/bootcamp_project_2/tree/main/Resources):

<img width="559" alt="image" src="https://user-images.githubusercontent.com/105055655/214414838-4c312920-d6c0-468b-a778-89b8a6c347a2.png">


## Required Setup and Project Libraries

Throughout this project's timeline and to run the *notebook*, the following packages and libraries were installed:
[Pandas](https://pandas.pydata.org/),
[Numpy](https://numpy.org/doc/stable/index.html),
[Datetime](https://docs.python.org/3/library/datetime.html),
[SQLAlchemy](https://www.sqlalchemy.org/), 
[SQLite](https://www.sqlite.org/index.html), 
[Psycopg2](https://www.psycopg.org/).


## Relationship between datasets

The three datasets are united by the **listingid**, as you can see from the image below. 
![schema](https://user-images.githubusercontent.com/105055655/214422933-8d18ce25-9561-4692-879b-5c73f400e435.jpg)

Despite the relationship seems straightforward, the presence of such a powerful primary key allows the extraction of numerous combninations of information, including the ones in the *Goals of ETL*.

## Data Extraction


## Data Transformation




## Data Loading




## Collaborators
- Simon Butler, 
- Priscila Castro, 
- Tharusha Heenatigala, 
- Tony Ng.


