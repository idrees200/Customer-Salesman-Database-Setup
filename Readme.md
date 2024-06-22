# Customer-Salesman Database Setup

This project involves setting up a database for managing customer and salesman information along with their orders. The SQL script includes table creation, data insertion, and various operations to enforce constraints and relationships.

## Database Structure

### Tables

1. **Salesman**
   - Attributes: `salesman_id`, `namee`, `city`, `comission`
   - Stores salesman information.

2. **Orders**
   - Attributes: `ord_no`, `purch_amt`, `ord_date`, `customer_id`, `salesman_id`
   - Tracks order records.

3. **Customers**
   - Attributes: `customer_id`, `cust_name`, `city`, `grade`, `salesman_id`
   - Stores customer information.

## Key Operations

1. **Data Insertion**
   - Populating tables with initial data for salesmen, orders, and customers.

2. **Table Alterations**
   - Adding primary keys and foreign key constraints.
   - Modifying table structures (e.g., adding foreign keys).

3. **Data Manipulation**
   - Inserting, updating, and deleting records to manage the database.

4. **Queries**
   - Retrieving specific records based on conditions.
   - Performing aggregate functions and date-based queries.

## Sample Queries

- Retrieve all records from the salesmen table.
- Retrieve all orders with a purchase amount greater than 500.
- Retrieve customers from specific cities or with names matching certain patterns.
- Update commission rates for salesmen in a particular city.
- Order records by specific criteria such as order date or salesman ID.
- Extract parts of data, such as the first name of salesmen or the day of the month from order dates.

## How to Use

1. **Create Database and Tables**
   - Run the provided SQL script to create the `customer_salesman` database and its tables.

2. **Insert Initial Data**
   - Insert sample data into the tables as shown in the script.

3. **Modify and Query Data**
   - Perform data modifications and queries to interact with the database.

This setup provides a foundation for managing customer and salesman data along with their order records. The script ensures the integrity and consistency of the data through various constraints and relationships.
