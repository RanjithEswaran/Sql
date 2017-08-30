1 A SELECT cust.LastName , cust.FirstName , cust.Package_Id , pack.Speed FROM Customers cust JOIN packages pack ON cust.Package_Id = pack.Package_Id ;
 
  B SELECT cust.LastName , cust.FirstName , cust.Package_Id , pack.Speed FROM Customers cust JOIN packages pack ON cust.Package_Id = pack.Package_Id
   WHERE cust.Package_Id IN (27, 22) ORDER BY cust.LastName;  
 
2 A SELECT pack.Package_Id , pack.Speed, pack.Monthly_Payment, sect.sector_name FROM packages pack JOIN sectors sect ON pack.sector_id = sect.sector_id;
 
  B SELECT cust.LastName , cust.FirstName , pack.Package_Id , pack.Speed, pack.Monthly_Payment, sect.sector_name FROM packages pack JOIN sectors sect
    ON pack.sector_id = sect.sector_id JOIN Customers cust ON cust.Package_Id = pack.Package_Id;
 
  C SELECT cust.LastName , cust.FirstName , pack.Package_Id , pack.Speed, pack.Monthly_Payment, sect.sector_name FROM packages pack JOIN sectors sect
    ON pack.sector_id = sect.sector_id JOIN Customers cust ON cust.Package_Id = pack.Package_Id WHERE sect.sector_name = 'Business';

3.SELECT cust.LastName , cust.FirstName , cust.join_date, pack.Package_Id , pack.Speed ,sect.sector_name FROM packages pack JOIN sectors sect ON pack.sector_id = sect.sector_id
    JOIN Customers cust ON cust.Package_Id = pack.Package_Id WHERE sect.sector_name = 'Private' AND year(cust.join_date) = 2006 ;
 
4.SELECT pack.Package_Id ,  pack.Speed, pack.Monthly_Payment , grd.grade_name FROM packages pack JOIN pack_grades grd ON pack.Monthly_Payment BETWEEN grd.min_price AND grd.max_price ;
 
5.A SELECT cust.LastName , cust.FirstName ,  pack.Speed , pack.Monthly_Payment FROM Customers cust JOIN packages pack ON cust.Package_Id = pack.Package_Id ;
 
  B SELECT cust.LastName , cust.FirstName ,  pack.Speed , pack.Monthly_Payment FROM Customers cust LEFT OUTER JOIN packages pack ON cust.Package_Id = pack.Package_Id; 
 
  C SELECT cust.LastName , cust.FirstName ,  pack.Speed , pack.Monthly_Payment FROM Customers cust RIGHT OUTER JOIN packages pack ON cust.Package_Id = pack.Package_Id; 
 
  D SELECT cust.LastName , cust.FirstName ,  pack.Speed , pack.Monthly_Payment FROM Customers cust FULL OUTER JOIN packages pack ON cust.Package_Id = pack.Package_Id; 
 
6.SELECT cust1.LastName , cust1.FirstName , cust1.Package_Id FROM Customers cust1 JOIN Customers cust2 ON cust2.LastName = 'Taylor' 
AND cust2.FirstName = 'Amado' AND cust2.Package_Id = cust1.Package_Id;
 
7.SELECT cust1.LastName , cust1.FirstName , cust1.Package_Id , cust1.monthly_discount FROM Customers cust1 JOIN Customers cust2 ON cust2.Customer_Id = 103 
AND cust1.monthly_discount < cust2.monthly_discount;
 
8.SELECT pack1.Package_Id , pack2.Speed FROM packages pack1 JOIN packages pack2 ON pack2.Package_Id = 10 AND pack1.Speed = pack2.Speed;
