# Emergency Response Optimization 🚒🏥

## 📌 Objective  
Optimize emergency response facility placement (fire stations, hospitals) by analyzing **population density, historical incidents, and spatial proximity**.  

## 📂 Project Structure  
- *create database.sql* → Database creation
- *create tables.sql* → Database Schema 
- *insert data.sql* → Add sample data
- *spatialanalysis_closestfacility.sql* → SQL query to run spatial analyis for finding the closest facility for each incident
- *spatialanalysis_incidentload.sql* → SQL query to find the facility load based on incidents
- *spatialanalysis_populationcoverage.sql* → SQL query to find the population coverage by each facility
- *Coverage Report by Population Zone.sql* → SQL query to create report on population zones covered by emergency facilities
- *Emergency Facility Utilization Report.sql* → SQL query to create report on emergency facility utilization
- *EmergencyResponseSample.bak* → SQL Server backup file of the database

## 🔧 Setup Instructions  
1. **Restore Database**  
   - Use `create database.sql and create tables.sql` to create tables  
   - Run `insert data.sql` to insert sample data  
   - Or restore `EmergencyResponseSample.bak`  

2. **Run Spatial Queries**  
  - *spatialanalysis_closestfacility.sql* → To run spatial analyis for finding the closest facility for each incident
  - *spatialanalysis_incidentload.sql* → To find the facility load based on incidents
  - *spatialanalysis_populationcoverage.sql* → To find the population coverage by each facility

3. **Create reports**  
  -*Coverage Report by Population Zone.sql* → To create report on population zones covered by emergency facilities
  - *Emergency Facility Utilization Report.sql* → To create report on emergency facility utilization
4. **Software requirements**
  - To run these queries you can use any Microsoft SQL Server license. This one is created using the Express Edition which is free of cost.
  - To use any other database platform you can change the query syntax accordingly.
    
## 👥 Contributors  
- **Surabhi Gupta** (@Surabhi3011)
  
