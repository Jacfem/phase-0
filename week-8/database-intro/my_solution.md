1. Select all data for all states.
SELECT * FROM states;

2. Select all data for all regions.
SELECT * FROM regions;

3. Select the state_name and population for all states.
SELECT state_name, population FROM states;

4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.
SELECT state_name, population
FROM states
ORDER BY population DESC;

5. Select the state_name for the states in region 7.
SELECT state_name FROM states WHERE region_id=7;

6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.
SELECT state_name, population_density FROM states
WHERE population_density>50
ORDER BY population_density ASC;

7. Select the state_name for states with a population between 1 million and 1.5 million people.
SELECT state_name FROM states
WHERE population BETWEEN 1000000 AND 1500000;

8. Select the state_name and region_id for states ordered by region in ascending order.
SELECT state_name, region_id FROM states
ORDER BY region_id ASC;

9. Select the region_name for the regions with "Central" in the name.
SELECT region_name FROM regions
WHERE region_name LIKE '%Central';

10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).
SELECT region_name, state_name FROM regions JOIN states ON states.region_id = regions.id
ORDER BY region_id ASC;


Release 6:

![Clueless Schema](https://github.com/Jacfem/phase-0/blob/master/week-8/imgs/8.4schema_clueless.png)

Reflection:

What are databases for?
Databases are used for storing and accessing large amounts of data in structured, relational ways.

What is a one-to-many relationship?
A 1:M (one to many) relationship is a relationship between two tables where a row from one table can have more than one matching row in another table.

What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is a field in a table which uniquely identifies each row, and each table can only have one primary key. A foreign key in one table will point to a primary key in another table, and you can have more than one foreign key in a table.

How can you select information out of a SQL database? What are some general guidelines for that?
Every time you want to query information form a database, you start with the 'SELECT' clause. This will be capitalized, and the next line will be the name of the column you want to select from, followed by 'FROM' and then the name of the table you're accessing. It's important to end each statement with a semi-colon. An example of accessing names from a table named 'friends' is as so:

SELECT names FROM friends;
