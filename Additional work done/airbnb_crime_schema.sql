-- Create the Table
CREATE TABLE "airbnb_review" (
    "listing_id" int   NOT NULL,
    "host_name" varchar(30)   NOT NULL,
    "last_review" varchar (100)   NOT NULL,
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
    "description" varchar(200)   NOT NULL,
    "room_type" varchar(60)   NOT NULL,
    CONSTRAINT "pk_airbnb_room_type" PRIMARY KEY (
        "listing_id"
    )  
);

Simon Butler
  7:59 PM
CREATE TABLE "nycrime" (
	"CMPLNT_NUM" VARCHAR(40)  NOT NULL,
	"CMPLNT_FR_DT" VARCHAR(40)  NOT NULL,
	"CMPLNT_FR_TM" VARCHAR(40)  NOT NULL,
	"CMPLNT_TO_DT" VARCHAR(40)  NOT NULL,
	"CMPLNT_TO_TM" VARCHAR(40)  NOT NULL,
	"RPT_DT" VARCHAR(40)  NOT NULL,
	"KY_CD" int  NOT NULL,
	"OFNS_DESC" VARCHAR(40)  NOT NULL,
	"PD_CD" int  NOT NULL,
	"PD_DESC" VARCHAR(40)  NOT NULL,
	"CRM_ATPT_CPTD_CD" VARCHAR(40)  NOT NULL,
	"LAW_CAT_CD" VARCHAR(40)  NOT NULL,
	"JURIS_DESC" VARCHAR(40)  NOT NULL,
	"borough" VARCHAR(40)  NOT NULL,
	"ADDR_PCT_CD" int  NOT NULL,
	"LOC_OF_OCCUR_DESC" VARCHAR(40)  NOT NULL,
	"PREM_TYP_DESC" VARCHAR(40)  NOT NULL,
	"PARKS_NM" VARCHAR(40)  NOT NULL,
	"HADEVELOPT" VARCHAR(40)  NOT NULL,
	"X_COORD_CD" FLOAT  NOT NULL,
	"Y_COORD_CD" FLOAT  NOT NULL,
	"Latitude" FLOAT  NOT NULL,
	"Longitude" FLOAT  NOT NULL,
	"Lat_Lon" FLOAT  NOT NULL,
   CONSTRAINT "pk_nycrime" PRIMARY KEY (
        "borough"
    )
);
-- Adding foreign key 
ALTER TABLE "airbnb_review" ADD CONSTRAINT "fk_airbnb_review_listing_id" FOREIGN KEY("listing_id")
REFERENCES "airbnb_price" ("listing_id");

ALTER TABLE "airbnb_price" ADD CONSTRAINT "fk_airbnb_price_listing_id" FOREIGN KEY("listing_id")
REFERENCES "airbnb_room_type" ("listing_id");

-- Query to check successful load
SELECT * FROM airbnb_price;
SELECT * FROM airbnb_review;
SELECT * FROM airbnb_room_type;



