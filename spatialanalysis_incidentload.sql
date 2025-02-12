-- Calculate Incident Load for Each Facility
SELECT 
    f.Name AS FacilityName,
    f.Type AS FacilityType,
    COUNT(i.IncidentID) AS IncidentLoad
FROM EmergencyFacilities f
LEFT JOIN Incidents i ON 
    f.Type = i.IncidentType AND
    111.045 * DEGREES(ACOS(COS(RADIANS(i.Latitude))
         * COS(RADIANS(f.Latitude))
         * COS(RADIANS(i.Longitude - f.Longitude))
         + SIN(RADIANS(i.Latitude))
         * SIN(RADIANS(f.Latitude)))) <= 5 -- Facilities within 5 km
GROUP BY f.Name, f.Type;
