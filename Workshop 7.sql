#------------------------------------------------------------------#
#    Project Name: dealerships                                     #
#    Jada Harris                                                   #
#------------------------------------------------------------------#


DROP DATABASE  IF EXISTS dealerships;
CREATE DATABASE dealerships;
USE dealerships;

#------------------------------------------------------------------#
#    TABLES                                                        #
#    Dealerships                                                   #
#------------------------------------------------------------------#

CREATE TABLE `dealerships` (
`Dealership_id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
`Name` VARCHAR (50) NOT NULL,
`Address` VARCHAR(50) NOT NULL,
`Phone` VARCHAR (12) NOT NULL
);

#------------------------------------------------------------------#
#    TABLES                                                        #
#    Vehicles                                                      #
#------------------------------------------------------------------#

CREATE TABLE `vehicles` (
`Make` VARCHAR(30) NOT NULL,
`Model` VARCHAR(30) NOT NULL,
`Color` VARCHAR (30) NOT NULL,
`VIN` VARCHAR (30)  NOT NULL,
`Sold` VARCHAR (3) NOT NULL,
CONSTRAINT `PK_vehicles` PRIMARY KEY (`VIN`)
);

#------------------------------------------------------------------#
#    TABLES                                                        #
#   Inventory                                                      #
#------------------------------------------------------------------#

CREATE TABLE `inventory` (
`dealership_id` INT,
`VIN` VARCHAR(30)
);

ALTER TABLE `inventory` ADD CONSTRAINT `FK_inventory_inventorys` 
    FOREIGN KEY (`VIN`) REFERENCES `vehicles` (`VIN`);
    

ALTER TABLE `inventory` ADD CONSTRAINT `FK_inventory_inventory` 
    FOREIGN KEY (`dealership_id`) REFERENCES `dealerships` (`Dealership_id`);
    
    
    
    
#------------------------------------------------------------------#
#    TABLES                                                        #
#   Sales Contract                                                 #
#------------------------------------------------------------------#
    
    
    
CREATE TABLE `sales_contract` (
`Salescontract_id` INT NOT NULL AUTO_INCREMENT,
`VIN` VARCHAR(30)
);
    
ALTER TABLE `sales_contract` ADD CONSTRAINT `FK_salescontract_inventory` 
FOREIGN KEY (`VIN`) REFERENCES `vehicles` (`VIN`);


#------------------------------------------------------------------#
#    TABLES                                                        #
#   Inserting Dealerships                                          #
#------------------------------------------------------------------#
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE dealerships;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO dealerships (Dealership_id, Name, Address, Phone)
VALUES(1, 'Carleston','310 w brandon st','111-111-1111');

INSERT INTO dealerships (Dealership_id, Name, Address, Phone)
VALUES(2, 'Greendale','255 n crandberry ave','222-222-2222');

INSERT INTO dealerships (Dealership_id, Name, Address, Phone)
VALUES(3, 'Avery','120 S avery st','333-333-3333');

INSERT INTO dealerships (Dealership_id, Name, Address, Phone)
VALUES(4, 'Can','602 Pen drive','444-444-4444');

INSERT INTO dealerships (Dealership_id, Name, Address, Phone)
VALUES(5, 'Pickles','4235 n apples ave','223-222-2322');



#------------------------------------------------------------------#
#    TABLES                                                        #
#   Inserting Vehicles                                             #
#------------------------------------------------------------------#


SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE vehicles;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO vehicles (Make, Model, Color, VIN, Sold)
VALUES('Nissan', 'Altima','Green','2345646464646646545','Yes');

INSERT INTO vehicles (Make, Model, Color, VIN, Sold)
VALUES('Ford', 'Branco','Blue','4541515151345123','No');

INSERT INTO vehicles (Make, Model, Color, VIN, Sold)
VALUES('Nissan', 'Pathfinder','Black','21515432561664316161616','Yes');

INSERT INTO vehicles (Make, Model, Color, VIN, Sold)
VALUES('Toyota', 'Camery','Silver','16626265463616203','No');

INSERT INTO vehicles (Make, Model, Color, VIN, Sold)
VALUES('Honda', 'Civic','Red','654526421616161616416136523','Yes');

INSERT INTO vehicles (Make, Model, Color, VIN, Sold)
VALUES('Nissan', 'Altima','Green','2345646464646646545','Yes');


#------------------------------------------------------------------#
#    TABLES                                                        #
#   Inserting Inventory                                            #
#------------------------------------------------------------------#

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE inventory;
SET FOREIGN_KEY_CHECKS = 1;


INSERT INTO inventory (dealership_id, VIN)
VALUES(1, '2345646464646646545');

INSERT INTO inventory (dealership_id, VIN)
VALUES(2, '4541515151345123');

INSERT INTO inventory (dealership_id, VIN)
VALUES(3, '21515432561664316161616');

INSERT INTO inventory (dealership_id, VIN)
VALUES(4, '16626265463616203');

INSERT INTO inventory (dealership_id, VIN)
VALUES(5, '654526421616161616416136523');

#------------------------------------------------------------------#
#    TABLES                                                        #
#   Inserting Sales Contract                                       #
#------------------------------------------------------------------#

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE sales_contract;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO sales_contract (Salescontract_id, VIN)
VALUES(1, '21515432561664316161616');

INSERT INTO sales_contract (Salescontract_id, VIN)
VALUES(3, '654526421616161616416136523');

INSERT INTO sales_contract (Salescontract_id, VIN)
VALUES(2, '2345646464646646545');


