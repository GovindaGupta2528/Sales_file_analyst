create database if not exists swiggy;
use swiggy;
select * from swiggy_rest;

 ----   which number restaurant of abohar visited by least number of customers?
SELECT * FROM swiggy_rest WHERE city = 'abohar' AND rating_count = (SELECT MIN(rating_count) FROM swiggy_rest WHERE city = 'abohar');

---- which restaurant has genreted maximum revenu from all over India?
SELECT * FROM swiggy_rest where cost*rating_count=(select max(rating_count * cost)from swiggy_rest);

----- how many restaurant are having more then avg rating?
SELECT * FROM swiggy_rest where rating>(select avg (rating) from swiggy_rest);

----- how many restaurant are having least then avg rating?
SELECT * FROM swiggy_rest where rating<(select avg (rating) from swiggy_rest);

------ which restaurant has genreted more revenu In Delhi?
SELECT * FROM swiggy_rest where city='delhi'and rating_count * cost=(select max(rating_count * cost)from swiggy_rest where city='delhi');

------ Which restaurant chain has maximum number of Restaurent ?
select name , count(name) as 'chain_rest' from swiggy_rest group by name order by chain_rest desc;

------ which restaurant chain has genreted maximum Revenu ?
select name , sum(rating_count * cost) as 'Revenu' from swiggy_rest group by name order by Revenu desc limit 1;

------ Which city has maximum number of Restaurent ?
select city, count(*) as "Number_Rest" from swiggy_rest group by city order by Number_Rest desc Limit 1;

------ which city has genreted maximum revenu in India ?
select city, sum(rating_count * cost) as 'Revenu' from swiggy_rest group by city order by Revenu desc limit 1;

------ top 10 most expensive cusisine.
select cuisine, Avg(cost) as 'avg_price' from swiggy_rest group by cuisine order by avg_price desc limit 10;

------ which city having maximum order of biryani
select city, avg(Rating_count) as 'Max_ord'from swiggy_rest where cuisine='Biryani' group by city order by Max_ord desc limit 10;

------- List top 10 unique restaurant with unique name only throughout the dataset as per genreted maximum revenu (single restaurant with that name)?
select name, sum(rating_count * cost) as 'ravenu' from swiggy_rest group by name having count(name)= 1 order by ravenu desc limit 10;