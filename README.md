# Project 2: Extract, Transform, and Load

![airbnb_nyc](https://user-images.githubusercontent.com/105055655/214406866-453e5a7d-e477-4301-93b9-23f7cc500f22.jpg) 

## Contents: 
- [Project Proposal](#Project-Proposal)
- [Goal of the ETL](#Goal-of-the-ETL)
- [Sources of Data](#Sources-of-Data)
- [Required Setup](#Required-Setup)
- [Data Extraction](#Data-Extraction)
- [Data Transformation](#Data-Transformation)
- [Data Loading](#Data-Loading)
- [Collaborators](#Collaborators)

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

The three datasets are united by the *listingid*, as you can see from the image below. 
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

PostgreSQL tables were then created on the Query tool on pgAdmin. An example can be shown in the image below where the code is creating the ["airbnb_review"](https://github.com/stharshine/bootcamp_project_2/blob/main/Resources/airbnb_host_info.csv) dataset.

<img width="359" alt="image" src="https://user-images.githubusercontent.com/105055655/214698172-68ef07ac-0c64-44f1-a8f7-05eab8be9699.png">

Afterwards, the foreign key were created as the example on the image below, to build a relationship between datasets.

<img width="648" alt="image" src="https://user-images.githubusercontent.com/105055655/214698260-4eea1969-9bf7-4336-a3c7-a134c228cca0.png">

After importing the CSV datasets and confirming the successful connection with the server.

As it can be seen from the imahes below, the localhost connection to a PostgreSQL server was successfully created. 

<img width="615" alt="image" src="https://user-images.githubusercontent.com/105055655/214919479-fbb92c54-3637-43d8-9a07-699707473b8f.png">


<img width="711" alt="image" src="https://user-images.githubusercontent.com/105055655/214919519-5ba9dd3c-dbf0-4d59-9410-bd757b05459f.png">


<img width="544" alt="image" src="https://user-images.githubusercontent.com/105055655/214943637-0430fedd-6b07-407d-8fb1-25aff29191c9.png">

<img width="593" alt="image" src="https://user-images.githubusercontent.com/105055655/214943745-87be1574-fe4e-4280-9b22-7fa6451aa659.png">


## Collaborators
- [Tharusha Heenatigala](https://github.com/stharshine)
- Simon Butler
- Priscila Castro
- Tony Ng


