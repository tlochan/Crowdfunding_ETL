
DROP TABLE category;
CREATE TABLE category (
    "category_id" VARCHAR   NOT NULL,
    "category" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_category_df" PRIMARY KEY (
        "category_id"
     )
);

DROP TABLE subcategory;
CREATE TABLE subcategory (
    "subcategory_id" VARCHAR  NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_subcategory_df" PRIMARY KEY (
        "subcategory_id"
     )
);

DROP TABLE contacts;
CREATE TABLE contacts (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_contact_df" PRIMARY KEY (
        "contact_id"
     )
);

DROP TABLE campaign;
CREATE TABLE campaign (
    "cd_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(20)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(30)   NOT NULL,
    "currency" VARCHAR(30)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "staff_pick" BOOL   NOT NULL,
    "spotlight" BOOL   NOT NULL,
    "category_id" VARCHAR   NOT NULL,
    "subcategory_id" VARCHAR   NOT NULL,
    CONSTRAINT "pk_campaign_df" PRIMARY KEY (
        "cd_id"
     ),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)

);

SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;

