-- Population Zones Covered by Emergency Facilities
SELECT 
    f.Name AS FacilityName,
    p.ZoneName AS PopulationZone,
    p.PopulationDensity AS ZonePopulation,
    111.045 * DEGREES(ACOS(COS(RADIANS(p.Latitude))
         * COS(RADIANS(f.Latitude))
         * COS(RADIANS(p.Longitude - f.Longitude))
         + SIN(RADIANS(p.Latitude))
         * SIN(RADIANS(f.Latitude)))) AS DistanceKM
FROM EmergencyFacilities f
JOIN PopulationZones p ON
    111.045 * DEGREES(ACOS(COS(RADIANS(p.Latitude))
         * COS(RADIANS(f.Latitude))
         * COS(RADIANS(p.Longitude - f.Longitude))
         + SIN(RADIANS(p.Latitude))
         * SIN(RADIANS(f.Latitude)))) <= 5 -- Coverage radius 5 km
ORDER BY f.Name, DistanceKM;
