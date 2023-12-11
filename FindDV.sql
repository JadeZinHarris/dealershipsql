
SELECT * 
FROM vehicles JOIN inventory
ON vehicles.VIN = inventory.VIN
JOIN dealerships 
ON inventory.dealership_id = dealerships.Dealership_id
WHERE dealerships.Dealership_id= 1;