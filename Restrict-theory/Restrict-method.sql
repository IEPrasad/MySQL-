1. Meaning 

The "RESTRICT" method in MySQL is used part of a foreign key constraint to control what happens
when an attempt is made to delete or update a row to which foreign keys are pointing. 
When "RESTRICT" is used, it prevents the deletion or update of a parent row if any child rows
reference it. Essentially, it enforces referential integrity by ensuring that 
no orphaned rows are created in the child table.

2. What Kind of Query Uses "RESTRICT"

The "RESTRICT" method is used in "ON DELETE" and "ON UPDATE" clauses 
when defining foreign key constraints. IT specifies that an attempt to 
delete or update a row will be restricted if there are any dependent 
foreign key references.

