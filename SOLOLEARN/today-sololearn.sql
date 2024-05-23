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
    SQL

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
    SQL
       
      >>  3


** Complete the query to extract the 5 most expensive products

    SELECT *
    FROM products
    ORDER BY price
    DESC
    LIMIT 5


----------------------------------------------------------


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
