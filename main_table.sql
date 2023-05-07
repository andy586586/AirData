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

