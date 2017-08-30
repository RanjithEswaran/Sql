1.SELECT job_Id,FirstName,LastName,Phone_Number,Dept_Id FROM Employees;

2.SELECT job_Id,FirstName,LastName,Hire_Date,Salary*12 AS AnnualSalary FROM Employees;

3.SELECT FirstName || ' ' || LastName AS FullName,Phone_Number || ' ' || email AS FullAddress FROM Employees;

4.SELECT DISTINCT Manager_Id FROM Employees;

5.SELECT LastName || ' ' || Job_Id AS JobTitle FROM Employees;

6.SELECT FirstName AS FN ,LastName AS LN ,Salary AS Sal,"HD : " || Hire_Date AS HD FROM Employees;

7.SELECT DISTINCT Salary FROM Employees;

8.SELECT DISTINCT Dept_Id,Job_Id FROM Employees;

9.SELECT * FROM Employees;

10.SELECT * FROM Department;