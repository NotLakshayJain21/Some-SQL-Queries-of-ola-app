CREATE DATABASE ola;
USE ola;

-- Retrieve all successful bookings
Create View Successful_Booking As
Select * From bookings Where Booking_Status="Success";
Select * From Successful_Booking;

-- Find the Average ride distance for each vehicle type
Create View Ride_Distance_Vehcile_type As
Select Vehicle_type, AVG(ride_distance) as Avg_Distance From bookings Group by Vehicle_type;
Select * From Ride_Distance_Vehcile_type;

-- Total number of rides cancelled by customer 
Create View Cancelled_By_Customer As
Select COUNT(*) From bookings Where booking_status=("cancelled_by_customer"); 
Select * From Cancelled_By_Customer;

-- Top 5 Customer Who Booked The Highest Number Of Rides
Create view Highest_Number_of_Rides As
Select customer_id,COUNT(booking_id) as Total_Rides FROM bookings GROUP BY customer_id ORDER BY Total_Rides DESC LIMIT 5;
Select * From Highest_Number_of_Rides;

-- Get the number of rides cancelled by driver due to personal and car related issue 
Create view Rides_cancelled_by_drivers_P_C_Issue As
Select COUNT(*) FROM bookings Where cancellation_reason="personal & car related issue";
Select * From Rides_cancelled_by_drivers_P_C_Issue;
-- Find the maximum and minimum driver ratings for Prime Sedan bookings
Select max(driver_rating ) as max_ratings ,
min(driver_rating) as min_ratings
 From bookings WHERE  vehicle_type="prime sedan";

-- Retrieve all rides where payment was made using UPI
Create View payment_made_using_UPI As
SELECT COUNT(*) from bookings WHERE payment_status="UPI";
Select * From payment_made_using_UPI;

-- Find the average customer rating per vehicle type
Create View average_customer_rating_per_vehucile_type As
Select vehicle_type,AVG(customer_rating) as Customer_Ratings
From bookings GROUP BY Vehicle_type;
Select * From average_customer_rating_per_vehucile_type;

-- calculate the total booking value of rides completed successfully 
Create View  total_successful_rides_value  As
Select SUM(booking_value) as total_successful_rides_value From bookings  Where booking_status="success"; 
Select * From  total_successful_rides_value ;






 



































