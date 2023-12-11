SELECT *
FROM sales_contract  JOIN inventory 
ON sales_contract.VIN = inventory.VIN
JOIN dealerships 
ON inventory.dealership_id = dealerships.Dealership_id 
WHERE (SaleDate BETWEEN "2023-01-11" AND "2023-07-30") AND (dealerships.Dealership_id = 3);