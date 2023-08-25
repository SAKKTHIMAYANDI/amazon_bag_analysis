#1
create database ecommerce;
#3
use ecommerce;
desc users_data; 
#4
use ecommerce;
select * from users_data;
select * from users_data limit 100;
#5
select * from users_data;
select count( distinct(country)),count(distinct(language)) from users_data;
#6
use ecommerce;
select * from users_data;
SELECT SUM(socialNbFollowers),gender FROM users_data GROUP BY gender;
#7 (a)
use ecommerce;
select * from users_data;
select count(hasProfilePicture)  Total_Profile_Picture from users_data where hasProfilePicture = 'True';
#7 (b)
use ecommerce;
select * from users_data;
select count(hasAnyApp)  Total_Any_App from users_data where hasAnyApp = 'True';
#7 (c)
use ecommerce;
select * from users_data;
select count(hasAndroidApp)  Total_Android_App from users_data where hasAndroidApp = 'True';
#7 (d)
use ecommerce;
select * from users_data;
select count(hasIosApp)  Total_Ios_App from users_data where hasIosApp = 'True';
#8
use ecommerce;
select * from users_data;
select country,sum(productsSold)  from  users_data group by country order  by sum(productsSold) desc;
#9
use ecommerce;
select * from users_data;
select country,sum(productsBought)  from  users_data group by country order  by sum(productsBought) asc;
#10
use ecommerce;
select * from users_data;
select country,sum(productsPassRate) from users_data group by country order by sum(productsPassRate) desc limit 10;
#11
use ecommerce;
select * from users_data;
select count(*) the_number_of_users from users_data group by language;
#12
use ecommerce;
select * from users_data;
select sum(productsWished) sum_of_products_wished,sum(socialProductsLiked) sum_of_products_Liked from users_data group by gender='f';
#13
use ecommerce;
select *from users_data;
select sum(productsBought) total_buyer,sum(productsSold) tota_seller from users_data where gender= 'm';
#14
use ecommerce;
select *from users_data;
select country,sum(productsBought) from users_data group by  country  order by sum(productsBought) desc;
#15
use ecommerce;
select *from users_data;
select country,productsSold from users_data where productsSold = '0'limit 10;
#16
use ecommerce;
select *from users_data;
select *from users_data order by daysSinceLastLogin limit 110;
#17
use ecommerce;
select *from users_data;
SELECT gender,COUNT(daysSinceLastLogin) number_of_femal_user_not_logged FROM users_data WHERE gender='F' AND daysSinceLastLogin >100;
#18
use ecommerce;
select *from users_data;
select count(*) number_of_female from users_data where gender ='f';
#19
use ecommerce;
select *from users_data;
select count(*) number_of_male from users_data where gender ='m';
#20
use ecommerce;
select *from users_data;
select avg(productsSold) average_number_of_products_sold ,avg(productsBought) average_number_of_products_bought,country from users_data where gender='m' group by country ;