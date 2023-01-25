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
Our dataset contains three CSV files are available from [kaggle](https://www.kaggle.com/datasets/ebrahimelgazar/new-york-city-airbnb-market?resource=download&select=airbnb_room_type.xlsx).

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

The three CSV filesgot got converted into panda DataFrames.
*type_df* shows all the room types, their costs and their description.

<img width="328" alt="image" src="https://user-images.githubusercontent.com/105055655/214677814-ba26379a-21e9-4bb0-a45b-8f3ff5a37d0a.png">

*price_df* shows all the property costs per night. As the location was a combination of both borough and area(called neighbourhood), the data was transformed and separated into two different section, the area and the borough.

<img width="255" alt="image" src="https://user-images.githubusercontent.com/105055655/214676807-e1cc61f9-724e-4491-bea2-c8e99f5cde72.png">

*review_df* shows all the property hosts and their last review date.

<img width="366" alt="image" src="https://user-images.githubusercontent.com/105055655/214676604-853b6971-a5e6-404e-8899-bde0d30d2676.png">

Within all the three datasets, listing_id was chosen as primary key.

## Data Transformation

Once all the datasets have been defined, in addition to the previous transformation, *type_df* was tranformed as well.
In order to create a clean and legible dataset, all the data in *type_df* has to be converted. 
Observing the following image, it is possible to see that the different property types were written in a variety of styles. Styles that create differences when analysing the data.

<img width="656" alt="image" src="https://user-images.githubusercontent.com/105055655/214684811-0812e709-8834-45a6-8d3a-574d61f480d9.png">

The next step was to create a new and clean database called *type_df_1* which can be observed in the image below.

<img width="347" alt="image" src="https://user-images.githubusercontent.com/105055655/214684502-1f8288b0-6b76-4106-9c43-4af5fe4e1512.png">

Once all the data was clean and ready, it was then loaded into SQL.

## Data Loading

pgAdmin was used to create a PostgreSQL table that included the headers (table names) from the dataframe.



## Collaborators
- Simon Butler, 
- Priscila Castro, 
- Tharusha Heenatigala, 
- Tony Ng.


