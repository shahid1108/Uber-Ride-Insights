create database uber;


select * from uber1;
select * from uber2;
select * from uber3;


#1
select distinct pickup_location from uber1;
select distinct count(pickup_location) from uber1;

#2
select count(ride_id) from uber1;


#3
select avg(ride_duration) from uber1;

#4
select earnings from uber2 u 
order by earnings desc 
limit 5;


#5
select payment_method, count(*) total_rides from uber1
group by payment_method ;


#6
select * from uber1 u 
where fare_amount >20;


#7
select pickup_location, count(*) as pickup_count from uber1 u 
group by pickup_location 
order by count(*) desc
limit 1;



#8
select avg(fare_amount) from uber1;

#9
select driver_id , avg(rating) from uber2 u 
group by driver_id
order by avg(rating)
limit 10;

#10

select sum(earnings) from uber2 u ;


#11
select count(*) as cash_rides_count from uber1 u 
where payment_method ="cash";


#12
select count(*) as number_of_rides, avg(ride_distance) as average_ride_distance from uber1
where pickup_location = "dhanbad";


#13
select * from uber1 u 
where ride_duration <10;


#14
select passenger_id, count(*) as ride_id  from uber1 u 
group by passenger_id 
order by ride_id desc
limit 1;

#15
select driver_id , count(*) as total_rides from uber1 u
group by driver_id 
order by total_rides desc;

#16
select distinct payment_method from uber1 u 
where pickup_location ="gandhinagar"

#17
select avg(fare_amount) as average_fare from uber1 u 
where ride_distance >10;


#18
select driver_id, count(*) as total_rides from uber2 u 
group by driver_id 
order by total_rides desc;

#19
select pickup_location, count(distinct pickup_location) *100 /count(*) from uber1
group by pickup_location;

#20
select * from uber1 u 
where pickup_location = dropoff_location;






##intermiadate
select * from uber1;
select * from uber2;
select * from uber3;


#1
 select passenger_id ,count(distinct pickup_location) as unique_pickup_location from uber1 u 
 group by passenger_id 
 having count(distinct pickup_location) >= 300;



#2
select avg(fare_amount)  from uber1 u
where  weekday (ride_timestamp) ;


#3
select distinct driver_id from uber1 u 
where ride_distance >19;

#4
select driver_ID , sum(fare_amount) as total_earnings from uber1 u 
group by driver_id 
having count(ride_id) >100;

#5
select * from uber1 u 
where fare_amount <(select avg(fare_amount) from uber1 u2 );


#6
select d.driver_id, avg(rating), r.payment_method
from uber2 inner join uber1 u2 
on d.passenger_id = r.passenger_id
where r.payment_method in ("credit_card" and "cash")
group by d.driver_id;

#7
select passenger_id, sum(fare_amount) as total_spending from uber1 u
group by passenger_id 
order by total_spending 
limit 3;

#8
select  avg(fare_amount), month (ride_timestamp) as m_month from uber1 u 
group by m_month;

#9
select pickup_location,dropoff_location, count(*) from uber1 u
group by pickup_location ,dropoff_location 
order by count(*) desc
limit 1;

#10
select driver_id , sum(fare_amount) as total_earnings from uber1 u 
group by driver_id 
order by total_earnings desc;

#11
select  p.passenger_name,p.signup_date,r.ride_timestamp
from uber3 p inner join uber1 r 
on p.passenger_id = r.passenger_id 
where p.signup_date =r.ride_timestamp ;

#12
select driver_id, avg(fare_amount) as average_earnings from uber1 u 
group by driver_id 
order by average_earnings desc;

#13
select * from uber1 u 
where  ride_distance <(select avg(ride_distance) from uber1 u2 );

#14
select driver_id, count(ride_id) as total_rides from uber1 u 
group by driver_id 
order by total_rides
limit 1;

#15
select passenger_id, avg(fare_amount) as average_fare from uber1 
where passenger_id in(select passenger_id from uber1 
group by passenger_id
having count(ride_id) >=20)
group by passenger_id ;

#16
select pickup_location, avg(fare_amount) as average_fare from uber1 u 
group by pickup_location 
order by average_fare
limit 1;

#17
select driver_name, avg(rating) from uber2
where total_rides >=100
group by driver_name ;

#18
select passenger_id , count(distinct pickup_location) from uber1 u 
group by passenger_id 
having count(pickup_location) >5;

#19
select passenger_name, avg(rating) from uber3 u 
where rating >=4
group by passenger_name ;

#20
select ride_id,ride_duration, pickup_location from uber1 u 
order by ride_duration desc
limit 1;



