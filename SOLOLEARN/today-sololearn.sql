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










