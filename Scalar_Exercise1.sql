1.SELECT customer_id,LOWER(First_Name),UPPER(Last_Name) FROM Customers WHERE customer_id BETWEEN 0 AND 150 ;
 
2.A SELECT First_Name , Last_Name , LEFT(First_Name , 1) + LEFT(Last_Name , 3) + '@mymail.com' FROM Customers ;
  B SELECT First_Name , Last_Name ,LEFT(First_Name , 1) + RIGHT(Last_Name , 3) + '@mymail.com' FROM Customers ;

3.SELECT Last_Name , LEN(Last_Name) FROM Customers WHERE LEN(Last_Name) > 9 ;
 
4.A SELECT First_Name , Last_Name , PrimaryPhoneNumber , REPLACE(PrimaryPhoneNumber , '515' , '$$$') AS 'New_Phone_Number' 
FROM Customers WHERE PrimaryPhoneNumber LIKE '%515%';
  B SELECT First_Name , Last_Name , PrimaryPhoneNumber ,REPLACE(LEFT(PrimaryPhoneNumber, 3) , '515' , '$$$') + SUBSTRING(PrimaryPhoneNumber , 4 , 12) AS 'New_Phone_Number' 
FROM Customers WHERE PrimaryPhoneNumber LIKE '%515%';
 
5.SELECT  First_Name , MonthlyDiscount, MonthlyDiscount * 1.197 , ROUND(MonthlyDiscount * 1.197 , 2), FLOOR(MonthlyDiscount * 1.197 ), 
CEILING(MonthlyDiscount * 1.197 ) FROM Customers ;
 
6.SELECT  First_Name ,join_date,DATEADD(dd, -10 , join_date),DATEADD(mm , 1 , join_date),DATEDIFF(dd , join_date , getdate()) FROM Customers; 

7.SELECT First_Name , birth_date , DATEDIFF(yy , birth_date , getdate()) FROM Customers WHERE DATEDIFF(yy , birth_date , getdate()) > 50 ;
 
8.SELECT First_Name , birth_date FROM Customers WHERE MONTH(birth_date) = MONTH(getdate()) AND DAY(birth_date) = DAY(getdate());
 
9. SELECT First_Name , join_date , DATEDIFF(yy , join_date , getdate()) FROM Customers WHERE DATEDIFF(yy , join_date , getdate()) = 5 
AND MONTH(join_date) = MONTH(getdate()) AND DAY(join_date) = DAY(getdate())
 
10.SELECT First_Name ||  ' / '  || CAST(DAY(join_date) AS VARCHAR) ,
              Last_Name ||  ' / '   || CAST(MonthlyDiscount AS VARCHAR) FROM Customers;
 
11.SELECT  Last_Name,UPPER(state) || ' / ' || CONVERT(varchar , customer_id , 102) , CONVERT(varchar , birth_date , 103) || ' / ' 
|| CONVERT(varchar , join_date ,  103) FROM Customers WHERE SUBSTRING(Last_Name , 1 , 1) IN ('D' , 'K');
  
12.A SELECT  First_Name ,Last_Name ,ISNULL(PrimaryPhoneNumber , 'N / A'),ISNULL(SecondaryPhoneNumber, 'N / A'), ISNULL(fax, 'N / A')
FROM Customers WHERE pack_id = 27 
   B SELECT  First_Name , Last_Name , birth_date , ISNULL(PrimaryPhoneNumber , 'N / A'), ISNULL(SecondaryPhoneNumber, 'N / A'), ISNULL(fax, 'N / A') 
FROM Customers WHERE pack_id = 27 AND year(birth_date) = 1972;
 
13.SELECT First_Name , Last_Name , MonthlyDiscount ,
CASE WHEN MonthlyDiscount BETWEEN 0 AND 10 THEN 'A' 
WHEN MonthlyDiscount BETWEEN 11 AND 20 THEN 'B' 
WHEN MonthlyDiscount BETWEEN 21 AND 30 THEN 'C'
 ELSE 'D'
 END 
AS 'Grades' FROM Customers ;
