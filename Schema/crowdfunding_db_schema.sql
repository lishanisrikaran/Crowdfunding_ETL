-- Creates category table.

CREATE TABLE category (
	category_id VARCHAR(10) NOT NULL,
        category VARCHAR(50) NOT NULL,
        PRIMARY KEY (category_id)
        );
		
-- Selects category table.

SELECT * FROM category;

--------------------------------------------------------------

-- Creates subcategory table.

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL,
        subcategory VARCHAR(50) NOT NULL,
        PRIMARY KEY (subcategory_id)
        );
		
-- Selects category table.

SELECT * FROM subcategory;

--------------------------------------------------------------

-- Creates contacts table.

CREATE TABLE contacts (
	contact_id INTEGER NOT NULL, 
	first_name VARCHAR(255) NOT NULL, 
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL, 
	PRIMARY KEY (contact_id)
	);

-- Selects contacts table.

SELECT * FROM contacts;
--------------------------------------------------------------

-- Creates campaign table.

CREATE TABLE campaign (
	cf_id INTEGER NOT NULL, 
	contact_id INTEGER NOT NULL, 
	company_name VARCHAR(255) NOT NULL, 
	description VARCHAR(255) NOT NULL, 
	goal FLOAT NOT NULL, 
	pledged FLOAT NOT NULL, 
	outcome VARCHAR(50) NOT NULL, 
	backers_count INTEGER NOT NULL, 
	country VARCHAR(5) NOT NULL, 
	currency VARCHAR(5) NOT NULL, 
	launch_date DATE NOT NULL, 
	end_date DATE NOT NULL, 
	category_id VARCHAR(10) NOT NULL, 
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	PRIMARY KEY (cf_id)
     );
		
-- Selects campaign table.

SELECT * FROM campaign;
