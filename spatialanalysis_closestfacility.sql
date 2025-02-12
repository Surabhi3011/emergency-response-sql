-- Calculate Distance to Closest Facility
SELECT 
    i.IncidentID,
    i.IncidentType,
    e.Name AS FacilityName,
    111.045 * DEGREES(ACOS(COS(RADIANS(i.Latitude))
         * COS(RADIANS(e.Latitude))
         * COS(RADIANS(i.Longitude - e.Longitude))
         + SIN(RADIANS(i.Latitude))
         * SIN(RADIANS(e.Latitude)))) AS DistanceKM
FROM Incidents i
JOIN EmergencyFacilities e ON i.IncidentType = e.Type
ORDER BY IncidentID, DistanceKM;
