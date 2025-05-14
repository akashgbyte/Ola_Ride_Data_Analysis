
-- PROJECT --> OLA RIDES BOOKING ANALYSIS


-- < EXPLORATORY DATA ANALYSIS >


SELECT * FROM bookings

SELECT DISTINCT(booking_status) from bookings

SELECT DISTINCT(vehicle_type) from bookings

SELECT DISTINCT(pickup_location) from bookings
SELECT DISTINCT(drop_location) from bookings

SELECT COUNT(*) from bookings
WHERE canceled_rides_by_customer IS NULL

SELECT COUNT(booking_status )from bookings
WHERE booking_status IS NULL

-- booking status distribution 
SELECT booking_status , COUNT(*) FROM bookings
GROUP BY 1
ORDER BY 2 DESC

-- payment methos distribution

SELECT payment_method , COUNT(*) FROM bookings
GROUP BY 1
ORDER BY 2 DESC

-- customer rating distribution

SELECT customer_rating , COUNT(*) FROM bookings
GROUP BY 1
ORDER BY 1 DESC

-- most common reason for canceling ride by customer

SELECT DISTINCT(canceled_rides_by_customer) , COUNT(*)
FROM bookings
GROUP BY 1
ORDER BY 2 DESC
OFFSET 1
LIMIT 1

-- most common reason for canceling ride by driver


SELECT DISTINCT(canceled_rides_by_driver) , COUNT(*)
FROM bookings
GROUP BY 1
ORDER BY 2 DESC
OFFSET 1
LIMIT 1


-- peak hours

SELECT EXTRACT(HOUR FROM time) , COUNT(*) 
FROM bookings
GROUP BY 1
ORDER BY 2 DESC


-- < BUSINESS PROBLEMS >

/*
1. Retrieve all successful bookings:
2. Find the average ride distance for each vehicle type:
3. Get the total number of cancelled rides by customers:
4. List the top 5 customers who booked the highest number of rides:
5. Get the number of rides cancelled by drivers due to personal and car-related issues:
6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
7. Retrieve all rides where payment was made using UPI:
8. Find the average customer rating per vehicle type:
9. Calculate the total booking value of rides completed successfully:
10. List all incomplete rides along with the reason:
*/


-- Q1. Retrieve all successful bookings?


SELECT * FROM bookings
WHERE booking_status = 'Success'
;

-- Q2. Find the average ride distance for each vehicle type?

SELECT
vehicle_type ,
AVG(ride_distance) AS average_distance
FROM bookings
GROUP BY vehicle_type;


-- Q3. Get the total number of cancelled rides by customers:

SELECT 
COUNT(canceled_rides_by_customer) AS total_cancelled_rides_by_customers
FROM bookings 
;

-- Q4. List the top 5 customers who booked the highest number of rides?

SELECT customer_id, 
COUNT(*) AS rides_booked
FROM bookings
GROUP BY customer_id
ORDER BY rides_booked DESC
LIMIT 5;


-- Q5. Get the number of rides cancelled by drivers due to personal and car-related issues?


SELECT canceled_rides_by_driver , COUNT(*)
FROM bookings
GROUP BY 1
HAVING canceled_rides_by_driver = 'Personal & Car related issue'

-- Q6. Find the maximum and minimum driver ratings for Prime Sedan bookings?

SELECT MIN(driver_ratings) AS maximum_rated_by_driver,
MAX(driver_ratings) AS minimum_rated_by_driver
FROM bookings 
WHERE vehicle_type = 'Prime Sedan'
;

-- Q7. Retrieve all rides where payment was made using UPI:

SELECT * FROM bookings 
WHERE payment_method = 'UPI'
;


-- Q8. Find the average customer rating per vehicle type? 


SELECT vehicle_type,
       AVG(customer_rating) AS avg_of_customers_rating
FROM bookings
GROUP BY vehicle_type;

-- Q9. Calculate the total booking value of rides completed successfully?

SELECT SUM(booking_value) AS total_booking_value
FROM bookings
WHERE booking_status = 'Success';


-- Q10. List all incomplete rides along with the reason?

SELECT incomplete_rides_reason 
FROM bookings
WHERE incomplete_rides = 'Yes'
;

--  < END OF PROJECT >
-- AUTHER = Akash Kumar Gupta



