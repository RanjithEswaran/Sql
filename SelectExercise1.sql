SELECT  CustomerId ,FirstName,LastName,PrimaryPhoneNumber,SecondaryPhoneNumber,PackageId FROM Customers;

SELECT FirstName,LastName,StartingDate,MonthlyDiscount*1.2 AS IncremntedDiscount,MonthlyDiscount*0.6 AS DecrementedDiscount FROM Customers;

SELECT PackageId,StartingDate,MonthlyPayment,MonthlyPayment*12 AS YearlyIncome FROM Packages;

SELECT FirstName + ' ' +LastName AS FullName,PrimaryPhoneNumber +' , '+ SecondaryPhoneNumber AS ContactDetails FROM Customers;

SELECT DISTINCT Cities FROM Customers;

SELECT DISTINCT States FROM Customers;

SELECT DISTINCT States,Cities FROM Customers;

SELECT LastName+ '  ' +States AS LastName_and_States FROM Customers;

SELECT FirstName AS FN ,LastName AS LN,States + ' ' +Street  AS FullAddress FROM Customers;

SELECT DISTINCT MonthlyDiscount FROM Customers;

SELECT DISTINCT PackageId FROM Customers;

