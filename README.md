# Record Company Database Project

*Born from my love of music and dream of one day owning my own recording studio!*

This project demonstrates various SQL skills by creating and manipulating a database for a record company. The database consists of bands, albums, and songs, showcasing different aspects of SQL including database creation, data insertion, and complex queries.

## Project Structure

-   **data.sql**: Contains the SQL statements to insert data into the database.
-   **queries.sql**: Contains the SQL statements to create the database, tables, and various queries to manipulate and retrieve data.

## Skills Demonstrated

### Database Creation and Table Definition

-   **Creating a Database**: The `CREATE DATABASE` statement is used to create a new database named `record_company`.
-   **Table Creation**: The `CREATE TABLE` statements define the structure of three tables (`bands`, `albums`, `songs`), including setting primary and foreign keys for relational integrity.

### Data Insertion

-   **Inserting Data**: The `INSERT INTO` statements populate the `bands`, `albums`, and `songs` tables with data, demonstrating how to insert multiple records into the tables.

### Data Retrieval and Manipulation

-   **Basic SELECT Queries**:
    -   Retrieving all band names
    -   Finding the first album released (non-null release year) ordered by release year
    -   Getting all bands that have albums
    -   Identifying bands without albums
-   **Aggregated Queries**:
    -   Calculating the total duration of songs in each album to find the longest album
    -   Calculating the average length of all songs
    -   Finding the longest song off each album
    -   Counting the number of songs for each band
-   **Join Operations**:
    -   Joining tables (`bands`, `albums`, `songs`) to retrieve and manipulate data based on relationships between tables
-   **Conditional Queries**:
    -   Using `HAVING` clause to filter bands that have no albums
    -   Updating the release year of a specific album
    -   Inserting new records for a new band and album (example with "Drake")
    -   Deleting specific records from the `bands` and `albums` tables

### SQL Skills

-   **DDL (Data Definition Language)**: Creating and defining the structure of the database and tables
-   **DML (Data Manipulation Language)**: Inserting, updating, and deleting data
-   **DQL (Data Query Language)**: Retrieving data using `SELECT` statements with various clauses (`JOIN`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`)
-   **Data Aggregation**: Using functions like `SUM()`, `AVG()`, `MAX()`, and `COUNT()` to perform calculations on data sets
-   **Data Integrity**: Implementing primary and foreign keys to maintain relationships between tables

## How to Use

1.  **Database Setup**: Run the statements in `queries.sql` to create the database and tables.
2.  **Data Insertion**: Run the statements in `data.sql` to populate the tables with initial data.
3.  **Queries**: Execute the various queries in `queries.sql` to explore and manipulate the data.
