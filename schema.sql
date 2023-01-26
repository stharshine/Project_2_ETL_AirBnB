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
    "description" varchar(200))   NOT NULL,
    "room_type" varchar(60)   NOT NULL,
    CONSTRAINT "pk_airbnb_room_type" PRIMARY KEY (
        "listing_id"
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


--CREATE TABLE PROPERTIES (
--ID INT PRIMARY KEY,
--ROOM_TYPE VARCHAR(30) NOT NULL,
--DESCRIPTION VARCHAR(30) NOT NULL,
--BOROUGH VARCHAR(30) NOT NULL,
--AREA VARCHAR(30)NOT NULL,
--PRICE INT NOT NULL,
--HOST_NAME VARCHAR(30) NOT NULL,
--LAST_REVIEW DATE NOT NULL
-);
