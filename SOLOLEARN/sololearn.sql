-- 1 Where

WHERE is used to extract records that meet a condition.

Complete the query to extract the studio records with 
name='Walt Disney'

-- this is show how to use 
      SELECT *
      FROM studio
      WHERE name = 'Walt Disney'


-- these are the examples for the how to use where
Eg: 1
    SELECT title
    FROM movies
    WHERE year > 2000 

    This query extracts…
    movies that after 2000


Eg: 2
    Filter the books in the novel category

    SELECT title
    FROM books
    WHERE category = 'novel'

------------------------------------------------------------


-- 2 ORDER BY 
  ** This SQL command is used to sort extracted data

  ** By default, the ORDER BY command sorts data in…
        >> ascending order


** Which keyword is used to sort data from largest to smallest, or Z to A?
      >> DESC


** What is the purpose of the LIMIT keyword?
      >> To reduce the number of records extracted


** Which SQL keyword is used to filter data based on specific conditions?
      >> WHERE 


** How many fields will the results table contain after running this query?

    SELECT name, price, price + delivery
    FROM sales
    WHERE id > 3
       
      >>  3


** Complete the query to extract the 5 most expensive products

    SELECT *
    FROM products
    ORDER BY price
    DESC
    LIMIT 5


----------------------------------------------------------

----------- Pattern Matching ----------

** The LIKE keyword is used with the WHERE command to search for patterns in string values.

      SELECT *
      FROM comics
      WHERE title
      LIKE 'The Avengers%'



** The % symbol can replace any number of characters (one, multiple or none) in a string to create patterns.

      SELECT title
      FROM comics
      WHERE title LIKE 'The Avengers%'

>>> 
   The Avengers: Celestial Quest
   The Avengers: Citizen Kang
   The Avengers: Infinity Classic

Eg: 2 

    ----   ** Method 1   ----

** The % special symbol is known as a wildcard and is used to create patterns. 

You can use patterns to extract email addresses that share the same domain.

      Select the string that matches the pattern '%gmail.com'
            r.simpsons@mail.com
            r.simpsons@gmail.us
      >>    r.simpsons@gmail.com
      ---------------------------------

   ----   ** Method 2   ----

** The % wildcard can be used in any part of the pattern and as many times as needed.

      Extract all the titles that contain the word Avengers
            SELECT *
            FROM comics
            WHERE title
            LIKE '%Avengers%'


** Which pattern should be used to match only strings that start with the character 'A'?
            '%A'
      >>    'A%'
            '%A%'

Eg: 

** Select the product name that will be extracted

      SELECT name
      FROM products
      WHERE name LIKE 'Apple%' 

            APPLE jam
      >>    Apple juice
            apple pie


** The % symbol stands for any number of characters, including zero characters.

      Which pattern matches both 'service fee' and 'fee refund' values?
            'fee%'
      >>    '%fee%'
            '%fee'

** Which strings will match the pattern 'Package%1%'?

   >>   Package 10E: Business Plan 
        Package 25A: Economy Plan 
   >>   Package AD1: Intermediate Plan


** Which of the following hotel names will match the pattern 'A%S%' 
   >>      Alpine Summit Lodge
           Aqua Coral Inn
           Amber Bay Resort


--------------- Advanced Pattern Matching  ----------------

** The underscore symbol _ is another wildcard and represents 1 single character only.

      Which product code matches the pattern 'A_B8'?
            A8B5
            A15B8
            AB8
      >>    A4B8


** Which product codes match the pattern 'A_B_'
Select all correct answers.

      >>    A4B8
            A154B
      >>    A8B5


** Match the wildcard symbol with the number of characters it represents
      any number of characters: %
      1 single character: _



** You can include multiple queries in your SQL code. You just need to separate them with a semicolon(;)

            SELECT name, code
            FROM products;

            SELECT name
            FROM products
            WHERE code LIKE 'A_B_';

** Patterns are case-sensitive. 

LOWER() and UPPER() commands are used to convert strings to lower or uppercase.

      /*
      Converts strings in the 
      title field to lowercase
      */
      SELECT LOWER(title)
      FROM movies;

      /*
      Converts strings in the 
      title field to uppercase
      */
      SELECT UPPER(title)
      FROM movies;

>>> 
      lower

      home alone
      star wars
      jurassic park
      frozen
      pirates of the caribbean

      upper
      HOME ALONE
      STAR WARS
      JURASSIC PARK
      FROZEN
      PIRATES OF THE CARIBBEAN


** Complete to extract all employee names in lowercase
      
      SELECT LOWER (name)
      FROM employees


** Use LOWER (or UPPER) with LIKE in the WHERE command line for case-insensitive pattern matching

      SELECT title
      FROM books
      WHERE LOWER(title) LIKE '%cooking%'

      The query performs a case-insensitive pattern search and produces a results table with book titles…

      >>    unchanged
            in lowercase

Eg: 

** You can use both UPPER() and LOWER() operations for case-insensitive pattern matching.

      The characters in your pattern then just need to match your operation.
            SELECT name
            FROM employees
            WHERE LIKE UPPER(name) 'DAN%'



When running a filtering query. Only those records that make the condition true will be extracted.

The code below will result in 2 tables. The first one helps us to see which records meet the condition. The second one is the result of the filtering query.


      /*
      Shows if the records meet 
      or don’t meet the condition
      true (t) or false (f)
      */
      SELECT year, year > 2000 AS result
      FROM movies;

      /*
      Filtering query that extracts
      only the records that make
      the condition true
      */
      SELECT title
      FROM movies
      WHERE year > 2000;



** Complete to extract only the products available in stock

      SELECT name
      FROM products
      WHERE quantity <> 0;

-----------------------------------------------------------------


            ---------    Data Aggregation    ----------

** MAX() is an example of an aggregation operation. What’s the maximum value for the year field?

MAX(year)

      >>     1993
             1977


**    Aggregation...

      operates on multiple values
      to produce 1 single value


** Remember you can generate result tables with more than one column. You just need to separate the columns with commas ,

      SELECT MIN(year) , MAX(year)
      FROM movies;


** COUNT() is another aggregation operation. It counts the number of records

      SELECT COUNT(year)
      FROM movies;


** SUM() is another aggregation operation. It produces the total sum of the values in a numerical field.

      SELECT SUM(price)
      FROM products;


** AVG() is another example of an aggregation operation. It calculates the average value

      SELECT AVG(price)
      FROM products


-------------------- Mixing Things Up -----------------

** Reorder to create a query that combines filtering with an aggregation operation

      SELECT MIN(year)
      FROM movies
      WHERE year > 2000


** Reorder to create a query that counts the number of records after filtering

      SELECT COUNT(price)
      FROM products
      WHERE price > 10


**************

** Complete the query to calculate the sum of prices for sales where the status is 'completed'

      SELECT SUM(price)
      FROM sales
      WHERE status='completed'

***************


** You can combine aggregation with other math operations.

      SELECT SUM(price+delivery) AS revenue
      FROM sales;

** Aggregation operations are usually referred to as aggregation functions. A function includes the code that is required to perform a task.

      SELECT AVG(price)
      FROM sales;


----------- Module 3 Quiz ---------------



** Which book records will match the pattern 'The%King_'
Select all correct answers.

            The Patient King3B
      >>    The Warrior King2
      >>    The Warrior King1
            The Silent King 


** Type the wildcard that is used with LIKE next to the explanation
      
      Represents any single character: _
      Represents any number of characters: %


************** from there you should do the sololearn again 
because thats not perfect enough now, this is not completed ***********

----------------------------------------------------


** Grouping data allows us to answer questions.
img-component

Complete the SQL query to calculate the sum of budgets for the different movie genres

      SELECT genre, SUM(budget)
      FROM movies
      GROUP BY genre



** Complete to calculate the lowest movie budget for each genre

      SELECT genre , MIN (budget)
      FROM movies
      GROUP BY genre;



** Remember you can use the AS keyword to give a name to the fields in the results table

      SELECT genre, AVG(budget) AS avg_budget
      FROM movies
      GROUP BY genre;


** Complete the query to filter, group and aggregate the data
SELECT category,

      AVG(price) FROM products
      WHERE rating >= 4
      GROUP BY category;


** HAVING allows you to filter data that has been grouped.

      SELECT genre, AVG(budget)
      FROM movies
      GROUP BY genre
      HAVING AVG(budget) > 50;



** Complete the code to group first, then filter

      SELECT class, AVG(score)
      FROM students
      GROUP BY class
      HAVING AVG(score) > 85;


----------------- Cleaning Data -------------------


** You can use GROUP BY in combination with HAVING to check for duplicates in the data.

--checking for id duplicates
      SELECT id, COUNT(id)
      FROM employees
      GROUP BY id
      HAVING COUNT(id) > 1;



** You can group by multiple fields to check for data duplication across multiple fields

/*checking for combination 
duplicates of id and name values */
      SELECT id, name
      FROM employees
      GROUP BY id, name
      HAVING COUNT(id) > 1;


** Complete the query to extract unique movie genres

      SELECT DISTINCT genre 
      FROM movies


** You can combine DISTINCT with filtering. 

Complete the query

      SELECT DISTINCT genre
      FROM movies
      WHERE year > 1990;


** You can check if your data contains missing values. Use IS NULL in combination with WHERE to find missing values

      SELECT * 
      FROM movies 
      WHERE genre IS NULL


------------------ Fixing Data Types --------------------


** You can use booleans when filtering data.

Can you change the code to see movies that have won an Oscar?

      SELECT  id, title, is_oscar_winner
      FROM movies
      WHERE is_oscar_winner = False;



------------------ Making Sense of Data --------------------



** Data queries are incredibly useful for extracting insights from data and answering questions.

      SELECT product, SUM(qty)
      FROM sales
      WHERE month = 'June'
      GROUP BY product



** Reorder the first 4 steps in the data analysis process
      
      Ask question
      Collect data
      Clean data
      Extract insights

** You can use logical operations to filter data that meets multiple conditions. The AND operation results in a True value only when all conditions are True.

      SELECT title
      FROM books
      WHERE qty >= 5 AND year > 1950


** Complete the query to retrieve ids of orders that have been delivered in USA

      SELECT id
      FROM orders
      WHERE status = 'Delivered' AND country = 'USA';



** Complete the query to retrieve the user with either the username ann88 or the phone number 854930340

      SELECT *
      FROM users 
      WHERE p_number = 854930340
      OR username = 'ann88';


---------------------- Module 4 Quiz ------------------------


** What are the correct way to collect data?

      >>   Using APIs
      >>   Scraping web pages 
      >>   Querying a database 


** Complete to extract unique product categories
SELECT DISTINCT category
FROM products


------ This is the end of the Introduction to SQL in sololearn ----------- 
