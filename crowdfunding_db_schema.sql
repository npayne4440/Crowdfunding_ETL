CREATE TABLE Campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(100)   NOT NULL,
    description text   NOT NULL,
    goal numeric(10,2)   NOT NULL,
    pledged numeric(10,2)   NOT NULL,
    outcome varchar(100)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(100)   NOT NULL,
    currency varchar(100)   NOT NULL,
    launch_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id_x varchar(100)   NOT NULL,
    category_id_y varchar(100),
    CONSTRAINT pk_Campaign PRIMARY KEY (
        cf_id
     )
);

CREATE TABLE Category (
    category_id varchar(100)   NOT NULL,
    category varchar(100)   NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE Subcategory (
    category_id varchar(100)   NOT NULL,
    sub-category varchar(100)   NOT NULL,
    CONSTRAINT pk_Subcategory PRIMARY KEY (
        category_id
     )
);

CREATE TABLE Contacts (
    contact_id int   NOT NULL,
    first_name varchar(100)   NOT NULL,
    last_name varchar(100)   NOT NULL,
    email varchar(100)   NOT NULL,
    CONSTRAINT pk_Contacts PRIMARY KEY (
        contact_id
     )
);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES Contacts (contact_id);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_category_id_x FOREIGN KEY(category_id_x)
REFERENCES Category (category_id);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_category_id_y FOREIGN KEY(category_id_y)
REFERENCES Subcategory (category_id);

