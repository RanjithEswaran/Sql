1. SELECT Last_Name , Salary FROM Employees WHERE Salary > (SELECT Salary FROM Employees  WHERE employee_id = 103);

2.SELECT Department_Id , DepartmentName FROM departments WHERE location_id = (SELECT location_id FROM  departments WHERE Department_Id = 90);
                     
3.SELECT Last_Name , hire_date FROM Employees WHERE hire_date > (SELECT hire_date FROM Employees  WHERE employee_id = 101);

4.SELECT First_Name , Last_Name , Department_Id FROM Employees WHERE Department_Id = (SELECT Department_Id FROM departments WHERE DepartmentName = 'Sales');

5.SELECT Department_Id , DepartmentName FROM departments WHERE location_id = (SELECT location_id FROM locations WHERE city = 'Toronto');

6.SELECT First_Name , Last_Name , Salary , Department_Id FROM Employees WHERE Department_Id = (SELECT Department_Id  FROM Employees  WHERE employee_id = 124) AND employee_id = 124;

7. SELECT First_Name , Last_Name , Salary , Department_Id FROM Employees WHERE Salary > (SELECT AVG(Salary) FROM Employees );

8.SELECT First_Name , Last_Name , Salary , Department_Id FROM Employees WHERE Salary IN (SELECT Salary FROM Employees WHERE Department_Id = 20);

9.SELECT First_Name , Last_Name , Salary , Department_Id FROM Employees WHERE Salary > ALL (SELECT Salary FROM Employees WHERE Department_Id = 50);

10.SELECT First_Name , Last_Name , Salary , Department_Id FROM Employees WHERE Salary > ANY (SELECT Salary FROM Employees WHERE Department_Id = 60);

11.SELECT First_Name , Last_Name , Salary , Department_Id FROM Employees WHERE Salary < ALL (SELECT Salary FROM Employees WHERE Department_Id = 90);

12.SELECT First_Name , Last_Name , Salary , Department_Id FROM Employees WHERE Department_Id IN (SELECT Department_Id FROM departments 
WHERE location_id = (SELECT location_id FROM locations WHERE city = 'Seattle'));

13.SELECT First_Name , Last_Name , Salary , Department_Id FROM Employees WHERE Salary < (SELECT AVG(Salary) FROM Employees )
 AND Department_Id = (SELECT Department_Id FROM Employees WHERE First_Name = 'Kevin');
