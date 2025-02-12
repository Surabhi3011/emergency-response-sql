-- Create EmergencyFacilities Table
CREATE TABLE EmergencyFacilities (
    FacilityID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Latitude FLOAT,
    Longitude FLOAT,
    Type NVARCHAR(50), -- e.g., Fire, Medical
    Capacity INT
);

-- Create PopulationZones Table
CREATE TABLE PopulationZones (
    ZoneID INT PRIMARY KEY,
    ZoneName NVARCHAR(100),
    Latitude FLOAT,
    Longitude FLOAT,
    PopulationDensity INT -- Population per square km
);

-- Create Incidents Table
CREATE TABLE Incidents (
    IncidentID INT PRIMARY KEY IDENTITY,
    IncidentType NVARCHAR(50), -- e.g., Fire, Medical
    Latitude FLOAT,
    Longitude FLOAT,
    Timestamp DATETIME
);
