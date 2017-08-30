1.SELECT First_Name , Department_Id FROM Employees WHERE Last_Name = 'De Haan';

2.SELECT * FROM  Departments WHERE department_name = 'Sales';

3.SELECT First_Name , Last_Name , Department_Id , Salary FROM Employees WHERE Salary > 9700;
 
4.SELECT * FROM Employees WHERE hire_date < '01-JAN-1992';

5.SELECT employee_id , First_Name , job_id, Department_Id FROM Employees WHERE Department_Id IN (20 , 60 , 80); 

6.SELECT employee_id , First_Name , job_id, Department_Id FROM Employees WHERE Department_Id NOT IN (20 , 60 , 80); 

7.SELECT Last_Name , Phone_Number , Salary , Manager_Id FROM Employees WHERE Manager_Id IN (103 , 102 , 100) ;

8.SELECT First_Name , Salary FROM Employees WHERE First_Name LIKE '%e';

9.SELECT Last_Name , Department_Id FROM Employees WHERE Last_Name LIKE '_i%';

10.SELECT * FROM Employees WHERE Last_Name LIKE '%L%' OR Last_Name LIKE '%J%' OR Last_Name LIKE '%H%' ORDER BY Salary DESC;

11.SELECT First_Name , hire_date , Salary , Department_Id FROM Employees WHERE First_Name NOT LIKE '%A%' ORDER BY Department_Id;

12.SELECT * FROM Employees WHERE Department_Id IS NULL;

13.SELECT First_Name || ' '|| Last_Name , Salary FROM  Employees WHERE Salary NOT BETWEEN 7000 AND 15000 ORDER BY First_Name || ' '|| Last_Name;

14.SELECT First_Name || ' '|| Last_Name AS "FULL_NAME" , Phone_Number || ' - ' || email AS "CONTACTS", Salary  AS "SAL" FROM Employees WHERE Salary BETWEEN 5000 AND 10000;

15.SELECT * FROM Employees WHERE Salary BETWEEN 6000 AND 8000 AND commission_pct IS NOT NULL OR Department_Id NOT IN (80 , 90 , 110) AND  hire_date < '01-JAN-1990';
 
16.SELECT Last_Name , job_id , hire_date FROM Employees WHERE hire_date BETWEEN '12-DEC-1995' AND '17-APR-1998' ORDER BY hire_date ;

17. SELECT First_Name || ' '|| Last_Name , hire_date , commission_pct , Phone_Number , Salary FROM Employees WHERE Salary > 10000 OR Phone_Number LIKE '__5%' ORDER BY First_Name DESC;

18.SELECT Last_Name , Salary FROM Employees WHERE Salary > 12000;

19.SELECT  Last_Name, Department_Id FROM Employees WHERE Department_Id IN (50 , 80);

20.SELECT First_Name , Salary FROM  Employees WHERE commission_pct IS NULL;

21.SELECT First_Name , Salary , Manager_Id FROM Employees WHERE Manager_Id IS NOT NULL;
