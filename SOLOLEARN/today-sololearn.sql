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

