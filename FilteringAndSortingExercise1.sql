1.SELECT FirstName,LastName,PackageId FROM Customers WHERE LastName="King";

2.SELECT * FROM packages WHERE speed="5Mbps";

3.SELECT FirstName,LastName,MonthlyDiscount,PackageId FROM Customers WHERE MonthlyDiscount>30;

4.SELECT * FROM Customers WHERE StartingDate < "11-11-1996";

5.SELECT CustomerId,FirstName,PackageId,States,Cities FROM Customers WHERE PackageId IN (12,13);

6.SELECT LastName,PrimaryPhoneNumber,MonthlyDiscount,PackageId FROM Customers WHERE CustomerId IN (1,2);

7.SELECT FirstName ,MonthlyDiscount FROM Customers WHERE FirstName LIKE '%E';

8.SELECT CustomerId,FirstName,PackageId,States,Cities FROM Customers WHERE PackageId NOT IN (12,13);

9.SELECT LastName ,PackageId FROM Customers WHERE LastName LIKE '_u%';

10.SELECT * FROM Customers WHERE LastName LIKE '%a%' OR LastName LIKE '%b%' OR LastName LIKE '%c%' ORDER BY MonthlyDiscount DESC;

11.SELECT FirstName,StartingDate,PackageId FROM Customers WHERE FirstName NOT LIKE '%A%' ORDER BY PackageID;

12.SELECT *FROM Customers WHERE PackageID IS NULL;

13.SELECT FirstName || LastName AS FULL_NAME,MonthlyDiscount FROM Customers WHERE MonthlyDiscount NOT BETWEEN 20 AND 30 ORDER BY FirstName||LastName;
 
14.SELECT FirstName || LastName AS FULL_NAME ,PrimaryPhoneNumber|| Street AS CONTACTS ,MonthlyDiscount AS DC FROM Customers WHERE MonthlyDiscount BETWEEN !! AND 27; 

15.SELECT * FROM Customers WHERE MonthlyDiscount BETWEEN 30 AND 40 AND States = 'New York' OR PackageID NOT IN (30,19,8) AND StartingDate <'01-01-2007' ORDER BY PackageId,MonthlyDicount;

16.SELECT LastName,PackageId FROM Customers WHERE StartingDate Between '12-12-2007' AND '17-04-17' ORDER BY DateOfBirth;

17.SELECT PackageId,StartingDate,Speed FROM Packages WHERE StartingDate<'01-01-2007';

18.SELECT PakageId,Speed,SectorId FROM Packages WHERE SectorId=1;

19.SELECT PakageId,Speed,SectorId FROM Packages WHERE Speed IN ('5Mbps','10Mbps');

20.SELECT LastName,MonthlyDiscount FROM Customers WHERE Cities = 'Orlando';

21.SELECT PackageId,LastName FROM Customers WHERE PackageId IN (9,18);

22.SELECT FirstName,PrimaryPhoneNumber ,SecondaryPhoneNumber FROM Customers WHERE SecondaryPhoneNumber IS NULL;

23.SELECT FirstName,MonthlyDiscount,PackageId FROM Customers WHERE MonthlyDiscount IS NULL;