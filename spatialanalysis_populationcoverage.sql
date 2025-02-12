-- Find Population Zones Covered by Each Facility
SELECT 
    f.Name AS FacilityName,
    COUNT(DISTINCT p.ZoneID) AS ZonesCovered,
    SUM(p.PopulationDensity) AS TotalPopulationCovered
FROM EmergencyFacilities f
JOIN PopulationZones p ON
    111.045 * DEGREES(ACOS(COS(RADIANS(p.Latitude))
         * COS(RADIANS(f.Latitude))
         * COS(RADIANS(p.Longitude - f.Longitude))
         + SIN(RADIANS(p.Latitude))
         * SIN(RADIANS(f.Latitude)))) <= 5 -- Coverage radius 5 km
GROUP BY f.Name;
