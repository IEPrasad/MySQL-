CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE RESTRICT ON UPDATE RESTRICT
);

ALTER TABLE Orders
ADD CONSTRAINT fk_orders_customers
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

DELETE FROM Customers WHERE CustomerID = 1;

-- ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails 
-- (`your_database_name`.`Orders`, CONSTRAINT `fk_orders_customers` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`))
