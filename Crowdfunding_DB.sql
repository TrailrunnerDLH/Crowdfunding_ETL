DROP TABLE if Exists "category_df";  
DROP TABLE if Exists "subcategory_df";
DROP Table if Exists "campaign_df";
DROP Table if Exists "contacts_df";



CREATE TABLE "category_df" (
    "category_id" VARCHAR(30)   NOT NULL,
    "category" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_category_df" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory_df" (
    "subcategory_id" VARCHAR(30)   NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_subcategory_df" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "campaign_df" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" VARCHAR(255)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" VARCHAR(255)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" VARCHAR(255)   NOT NULL,
    "currency" VARCHAR(255)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" VARCHAR(255)   NOT NULL,
    "subcategory_id" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_campaign_df" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts_df" (
    "contact_id" int   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_contacts_df" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign_df" ADD CONSTRAINT "fk_campaign_df_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts_df" ("contact_id");

ALTER TABLE "campaign_df" ADD CONSTRAINT "fk_campaign_df_category_id" FOREIGN KEY("category_id")
REFERENCES "category_df" ("category_id");

ALTER TABLE "campaign_df" ADD CONSTRAINT "fk_campaign_df_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory_df" ("subcategory_id");


SELECT * FROM contacts_df;
SELECT * FROM subcategory_df;
SELECT * FROM category_df;
Select * FROM campaign_df;
