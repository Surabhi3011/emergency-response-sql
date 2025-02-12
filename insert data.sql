-- Insert EmergencyFacilities Data
INSERT INTO EmergencyFacilities VALUES
(1, 'Fire Station 1', 19.0760, 72.8777, 'Fire', 50),
(2, 'Hospital 1', 19.1145, 72.8721, 'Medical', 100);

-- Insert PopulationZones Data
INSERT INTO PopulationZones VALUES
(1, 'Zone A', 19.0800, 72.8800, 20000),
(2, 'Zone B', 19.1120, 72.8690, 15000),
(3, 'Zone C', 19.0620, 72.8370, 10000);

-- Insert Incidents Data
INSERT INTO Incidents (IncidentType, Latitude, Longitude, Timestamp) VALUES
('Fire', 19.0820, 72.8810, '2025-01-01 14:00:00'),
('Medical', 19.1100, 72.8700, '2025-01-02 16:30:00'),
('Fire', 19.0700, 72.8760, '2025-01-03 12:45:00'),
('Medical', 19.1150, 72.8740, '2025-01-04 09:15:00');
