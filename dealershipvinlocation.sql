
SELECT *
FROM dealerships JOIN inventory 
ON inventory.dealership_id = dealerships.Dealership_id
JOIN vehicles 
ON vehicles.VIN = inventory.VIN
WHERE vehicles.VIN = 21515432561664316161616;