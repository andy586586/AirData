CREATE TABLE Aircraft (
    Manufacturer varchar(200),
    AircraftName varchar(200),
    ICAOCode varchar(255),
    MaximumTakeoffWeight varchar(255),
    MaxRampMaxTaxiWeight varchar(255),
    WakeCategory varchar(255)
);

INSERT INTO Aircraft (Manufacturer, AircraftName, ICAOCode, MaximumTakeoffWeight, MaxRampMaxTaxiWeight, WakeCategory)
VALUES ('Boeing', '737-100', 'B731', '1100000', '111000', 'M');




/* joining a table and adding more aircraft */

-- Creating the AircraftModels table (a different table)
CREATE TABLE AircraftModels (
    Manufacturer varchar(200),
    AircraftName varchar(200)
);

-- Insert some data into the AircraftModels table
INSERT INTO AircraftModels (Manufacturer, AircraftName)
VALUES ('Boeing', '737-100'),
       ('Boeing', '747-400'),
       ('Airbus', 'A320'),
       ('Airbus', 'A380');

-- Join the two Aircraft and AircraftModels tables using inner join
SELECT Aircraft.Manufacturer, Aircraft.AircraftName, AircraftModels.AircraftName
FROM Aircraft
INNER JOIN AircraftModels ON Aircraft.Manufacturer = AircraftModels.Manufacturer AND Aircraft.AircraftName = AircraftModels.AircraftName;

