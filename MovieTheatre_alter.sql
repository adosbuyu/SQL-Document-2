-- Update the name of the customer with ID 1
UPDATE Customer_buyuhe
SET name = 'John Smith'
WHERE customer_id = 1;

-- Update the price of the concession with ID 1
UPDATE Concession_buyuhe
SET price = 3.50
WHERE concession_id = 1;


-- Alter the Customer table to add the Address column
ALTER TABLE Customer_buyuhe
ADD COLUMN Address VARCHAR(255);

-- Alter the Concession table to rename the Price column to UnitPrice
ALTER TABLE concession_buyuhe 
RENAME COLUMN Price TO UnitPrice;

-- Update the Address of a specific customer
UPDATE Customer_buyuhe
SET Address = '123 Main St'
WHERE customer_id = 1;

-- Update the UnitPrice of a concession
UPDATE Concession_buyuhe
SET UnitPrice = 3.50
WHERE Name = 'Popcorn';

select * from customer_buyuhe
select * from concession_buyuhe
