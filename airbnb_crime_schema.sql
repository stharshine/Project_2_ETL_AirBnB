-- Create the Table
CREATE TABLE "airbnb_review" (
    "listing_id" int   NOT NULL,
    "host_name" varchar(30)   NOT NULL,
    "last_review" date   NOT NULL,
    CONSTRAINT "pk_air_bnb_review" PRIMARY KEY (
        "listing_id"
    )
);

CREATE TABLE "airbnb_price" (
    "listing_id" int   NOT NULL,
    "price" varchar(30)   NOT NULL,
    "borough" varchar(60)   NOT NULL,
    "area" varchar(60)   NOT NULL,
    CONSTRAINT "pk_airbnb_price" PRIMARY KEY (
        "listing_id"
    )
);

CREATE TABLE "airbnb_room_type" (
    "listing_id" int   NOT NULL,
    "description" varchar(60)   NOT NULL,
    "room_type" varchar(60)   NOT NULL,
    CONSTRAINT "pk_airbnb_room_type" PRIMARY KEY (
        "listing_id"
    )  
);

--CMPLNT_NUM VARCHAR
--CMPLNT_FR_DT Date
--CMPLNT_FR_TM Time
--CMPLNT_TO_DT Date
--CMPLNT_TO_TM Time
--RPT_DT Date
--KY_CD Integer
--OFNS_DESC VARCHAR
--PD_CD Integer
--PD_DESC VARCHAR
--CRM_ATPT_CPTD_CD VARCHAR
--LAW_CAT_CD VARCHAR
--JURIS_DESC VARCHAR
--BORO_NM VARCHAR
--ADDR_PCT_CD Integer
--LOC_OF_OCCUR_DESC VARCHAR
--PREM_TYP_DESC VARCHAR
--PARKS_NM VARCHAR
--HADEVELOPT VARCHAR
--X_COORD_CD FLOAT
--Y_COORD_CD FLOAT
--Latitude FLOAT
--Longitude FLOAT
--Lat_Lon FLOAT

-- Adding foreign key 
ALTER TABLE "airbnb_review" ADD CONSTRAINT "fk_airbnb_review_listing_id" FOREIGN KEY("listing_id")
REFERENCES "airbnb_price" ("listing_id");

ALTER TABLE "airbnb_price" ADD CONSTRAINT "fk_airbnb_price_listing_id" FOREIGN KEY("listing_id")
REFERENCES "airbnb_room_type" ("listing_id");

-- Query to check successful load
SELECT * FROM airbnb_price;
SELECT * FROM airbnb_review;
SELECT * FROM airbnb_room_type;



