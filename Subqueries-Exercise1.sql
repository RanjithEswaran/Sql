1.SELECT first_name , last_name , state, city FROM customers WHERE state = (SELECT state FROM customers WHERE customer_id = 170);
 
2.SELECT pack_id, speed , sector_id FROM packages WHERE sector_id = (SELECT sector_id FROM packages WHERE pack_id = 10);
 
3.SELECT first_name , last_name , join_date FROM customers WHERE join_date > (SELECT join_date FROM customers WHERE customer_id = 540);
 
4.SELECT first_name , last_name , join_date FROM customers WHERE year(join_date) = (SELECT year(join_date) FROM customers WHERE customer_id = 372) AND
   month(join_date) = (SELECT month(join_date) FROM customers WHERE customer_id = 372);
 
5.SELECT first_name , last_name , city , state, pack_id FROM customers WHERE pack_id IN (SELECT pack_id FROM packages WHERE speed = '5Mbps');

6.SELECT pack_id , speed , strt_date FROM packages WHERE year(strt_date) = (SELECT year(strt_date) FROM packages WHERE pack_id =   7);
 
7.SELECT first_name , monthly_discount , pack_id , main_phone_num , secondary_phone_num FROM customers WHERE pack_id IN (SELECT pack_id FROM packages
   WHERE sector_id IN  (   SELECT sector_id FROM sectors  WHERE sector_name = 'Business'));
 
8.SELECT first_name , monthly_discount, pack_id FROM customers WHERE pack_id IN (SELECT  pack_id FROM packages WHERE monthly_payment >
  (SELECT AVG(monthly_payment) FROM packages));
 
9.SELECT customer_id , first_name , city , state ,birth_date , monthly_discount FROM customers WHERE
 birth_date = (SELECT birth_date FROM customers WHERE customer_id = 179)
 AND monthly_discount >(SELECT monthly_discount FROM customers WHERE customer_id = 107);
 
10.SELECT * FROM packages WHERE speed =(SELECT speed FROM packages WHERE pack_id = 30) AND monthly_payment >(SELECT monthly_payment FROM packages WHERE pack_id = 7);
 
11.SELECT pack_id ,speed , monthly_payment FROM packages WHERE monthly_payment > ALL(SELECT monthly_payment FROM packages WHERE speed = '5Mbps');
 
12.SELECT pack_id ,speed , monthly_payment FROM packages WHERE monthly_payment > ANY (SELECT monthly_payment FROM packages WHERE speed = '5Mbps');
 
13.SELECT pack_id ,speed , monthly_payment FROM packages WHERE monthly_payment < ANY (SELECT monthly_payment FROM packages WHERE speed = '5Mbps');
 
14.SELECT first_name ,monthly_discount , pack_id FROM customers WHERE monthly_discount < (SELECT AVG(monthly_discount) FROM customers) AND
             pack_id IN (SELECT pack_id FROM customers WHERE first_name = 'Kevin');