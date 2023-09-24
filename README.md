# Crowdfunding_ETL
Group 8 project 2.
Group Members: Arnold Reynoso, Gabriela Delgado, Kyle Dalton, Naseema Omer. 
References used to research and create content were Stack Overflow and Beekeeper IO as well as Instuctor, TA's and Tutors.

This group ETL mini project is practice in building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. 
Starter code and resource files provided.  Project Instructions and details below. 
Jupyter notebook used to build dataframes using the two resource files, and generate the output four CSV files saved in the Resources folder.
CSV file data is used to create an ERD and a table schema. The ERD image and schema.sql file are saved. 
Database and tables created in Postgres, and data from the CSV files imported into the Postgres database.

Project Instructions & Details:
A new Github repository created for this project named Crowdfunding_ETL. Group members added. Do not add this project to an existing repository.
Clone the new repository to your computer.
Starter code renamed: ETL_Mini_Project2_Group8.ipynb File and Resources folder containing the crowdfunding.xlsx and the contacts.xlsx files added to the repository.

The instructions for this mini project are divided into the following subsections:
•	Create the Category and Subcategory DataFrames
•	Create the Campaign DataFrame
•	Create the Contacts DataFrame
•	Create the Crowdfunding Database

Create the Category and Subcategory DataFrames
1.	Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
o	A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
o	A "category" column that contains only the category titles
o	The following image shows this category DataFrame:
 
2.	Export the category DataFrame as category.csv and save it to your GitHub repository.
3.	Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
o	A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
o	A "subcategory" column that contains only the subcategory titles
o	The following image shows this subcategory DataFrame:
 
4.	Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.
Create the Campaign DataFrame
1.	Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
o	The "cf_id" column
o	The "contact_id" column
o	The "company_name" column
o	The "blurb" column, renamed to "description"
o	The "goal" column, converted to the float data type
o	The "pledged" column, converted to the float data type
o	The "outcome" column
o	The "backers_count" column
o	The "country" column
o	The "currency" column
o	The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
o	The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
o	The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
o	The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
o	The following image shows this campaign DataFrame:
 
2.	Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.
Create the Contacts DataFrame
1.	Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
o	Option 1: Use Python dictionary methods.
o	Option 2: Use regular expressions.
2.	If you chose Option 1, complete the following steps:
o	Import the contacts.xlsx file into a DataFrame.
o	Iterate through the DataFrame, converting each row to a dictionary.
o	Iterate through each dictionary, doing the following:
	Extract the dictionary values from the keys by using a Python list comprehension.
	Add the values for each row to a new list.
o	Create a new DataFrame that contains the extracted data.
o	Split each "name" column value into a first and last name, and place each in a new column.
o	Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.
3.	If you chose Option 2, complete the following steps:
o	Import the contacts.xlsx file into a DataFrame.
o	Extract the "contact_id", "name", and "email" columns by using regular expressions.
o	Create a new DataFrame with the extracted data.
o	Convert the "contact_id" column to the integer type.
o	Split each "name" column value into a first and a last name, and place each in a new column.
o	Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.
4.	Check that your final DataFrame resembles the one in the following image:
 
Create the Crowdfunding Database
1.	Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..
2.	Use the information from the ERD to create a table schema for each CSV file.
Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.
3.	Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
4.	Create a new Postgres database, named crowdfunding_db.
5.	Using the database schema, create the tables in the correct order to handle the foreign keys.
6.	Verify the table creation by running a SELECT statement for each table.
7.	Import each CSV file into its corresponding SQL table.
8.	Verify that each table has the correct data by running a SELECT statement for each.
   
Hints
•	To split each "category & sub-category" column value into "category" and "subcategory" column values, use df[["new_column1","new_column2"]] = df["column"].str.split(). Make sure to pass the correct parameters to the split() function.
•	To get the unique category and subcategory values from the "category" and "subcategory" columns, create a NumPy array where the array length equals the number of unique categories and unique subcategories from each column. For information about how to do so, see numpy.arangeLinks to an external site. in the NumPy documentation.
•	To create the category and subcategory identification numbers, use a list comprehension to add the "cat" string or the "subcat" string to each number in the category or the subcategory array, respectively.
•	For more information about creating a new Pandas DataFrame, see the pandas.DataFrameLinks to an external site. in the Pandas documentation.
•	To convert the "goal" and "pledged" columns to the float data type, use the astype() method.
•	To convert the "launch_date" and "end_date" UTC times to the datetime format, see the Transform_Grocery_Orders_Solved.ipynb activity solution.
•	For more information about how to add the "category_id" and "subcategory_id" unique identification numbers to the campaign DataFrame, see the pandas.DataFrame.mergeLinks to an external site. in the Pandas documentation.

Support and Resources
Your instructional team will provide support during classes and office hours. You will also have access to learning assistants and tutors to help you with topics as needed. Make sure to take advantage of these resources as you collaborate with your partner on this project.
Requirements
A Category DataFrame is Created 
•	The DataFrame contains a "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories 
•	The DataFrame has a "category" column that contains only the category titles 
•	The category DataFrame is exported as category.csv 
A Subcategory DataFrame is Created 
•	The DataFrame contains a "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories 
•	The DataFrame contains a "subcategory" column that contains only the subcategory titles 
•	The subcategory DataFrame is exported as subcategory.csv 
A Campaign DataFrame is Created 
•	The DataFrame has the following columns: 
o	A "cf_id" column
o	A "contact_id" column
o	A "company_name" column
o	A "description" column
o	A "goal" column that is a float data type
o	A "pledged" column that is a float data type
o	An "outcome" column
o	A "backers_count" column
o	A "country" column
o	A "currency" column
o	A "launch_date" with the time formatted as "YYYY-MM-DD"
o	An "end_date" with the time formatted as "YYYY-MM-DD"
o	A "category_id" column that contains the unique identification numbers matching those in the "category_id" column of the category DataFrame
o	A "subcategory_id" column that contains the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
•	The campaign DataFrame is exported as campaign.csv 
A Contacts DataFrame is Created 
•	The DataFrame has the following columns: 
o	A "contact_id" column
o	A "first_name" column
o	A "last_name" column
o	An "email" column
•	The contacts DataFrame is exported as contacts.csv 
A Crowdfunding Database is Created 
•	A database schema labeled, crowdfunding_db_schema.sql is created 
•	A crowdfunding_db is created using the crowdfunding_db_schema.sql file 
•	The database has the appropriate primary and foreign keys and relationships 
•	Each CSV file is imported into the appropriate table without errors 
•	The data from each table is displayed using a SELECT * statement 

