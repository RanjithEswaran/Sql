1 SELECT MIN(last_name) FROM Customers ;
 
 2 SELECT AVG(monthly_payment) FROM Packages;
 
 3 SELECT MAX(last_name) FROM Customers;
 
 4 SELECT COUNT(*) FROM Packages ;
 
 5 SELECT COUNT(*) FROM Customers ;
 
 6 SELECT COUNT(DISTINCT state) FROM Customers ;
 
 7 SELECT COUNT(DISTINCT Speed) FROM Packages ;
 
 8 SELECT COUNT(fax) FROM Customers ;
 
 9 SELECT COUNT(*) FROM Customers WHERE fax IS NOT NULL;

 10 SELECT  MIN(MonthlyDiscount) , MAX(MonthlyDiscount) , AVG(MonthlyDiscount) FROM Customers ;
 
 11 SELECT COUNT(*) , state FROM Customers GROUP BY state ;
 
 12 SELECT AVG(monthly_payment) , Speed FROM Packages GROUP BY Speed;
 
 13 SELECT COUNT(DISTINCT city) , state FROM Customers GROUP BY state ;
 
 14 SELECT MAX(monthly_payment) , sector_id FROM Packages GROUP BY sector_id ;
 
 15 A  SELECT Package_Id , AVG(MonthlyDiscount) FROM Customers GROUP BY Package_Id ;
 
    B  SELECT Package_Id , AVG(MonthlyDiscount) FROM Customers WHERE Package_Id IN (13, 22) GROUP BY Package_Id ;
 
    C  SELECT AVG(MonthlyDiscount)  FROM Customers  WHERE Package_Id = 18;
 
 16 SELECT Speed , MIN(monthly_payment) , MAX(monthly_payment) , AVG(monthly_payment) FROM   Packages GROUP BY Speed;
 
 17 A SELECT Package_Id , COUNT(*) FROM Customers GROUP BY Package_Id;
 
    B SELECT Package_Id , COUNT(*) FROM Customers WHERE MonthlyDiscount > 20 GROUP BY Package_Id ;
 
    C SELECT Package_Id , COUNT(*) FROM Customers GROUP BY Package_Id HAVING COUNT(*) > 100 ;
 
18  SELECT state, city, COUNT(*) FROM Customers GROUP BY state, city ORDER BY state, city;

19 A SELECT AVG(MonthlyDiscount) , city FROM Customers GROUP BY city;
 
   B SELECT AVG(MonthlyDiscount) , city FROM Customers WHERE MonthlyDiscount > 20 GROUP BY city;
 
20 A SELECT MIN(MonthlyDiscount) , state FROM Customers GROUP BY state ;
 
    B SELECT MIN(MonthlyDiscount) , state FROM Customers GROUP BY state HAVING min(MonthlyDiscount) > 10;
 
21 SELECT COUNT(*) , Speed FROM Packages GROUP BY Speed HAVING COUNT(*) > 8;
