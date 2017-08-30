1.a SELECT employee.FirstName , employee.LastName , employee.Departmnet_Id ,dept.Departmnet_Name FROM Employees employee JOIN departments dept 
  ON employee.Departmnet_Id = dept.Departmnet_Id ;

  b SELECT emp.FirstName , emp.LastName ,emp.Departmnet_Id ,  dept.Departmnet_Name FROM Employees emp JOIN departments deptw 
  ON emp.Departmnet_Id = dept.Departmnet_Id  AND emp.Departmnet_Id IN (50 , 90) ORDER BY emp.LastName ;

2.a SELECT dept.Departmnet_Name , loc.Cities , loc.state_province FROM   departments dept JOIN locations loc ON  dept.location_id = loc.location_id;

  b SELECT emp.LastName + ' '+ emp.FirstName AS 'FULL_NAME', dept.Departmnet_Name , loc.Cities , loc.state_province FROM   Employees emp JOIN departments dept ON         emp.Departmnet_Id = dept.Departmnet_Id  
  JOIN locations loc ON dept.location_id = loc.location_id ;

  c SELECT emp.LastName + ' '+ emp.FirstName AS 'FULL_NAME',dept.Departmnet_Name , loc.Cities , loc.state_province FROM   Employees emp JOIN departments dept  
ON emp.Departmnet_Id = dept.Departmnet_Id  JOIN locations loc  ON  dep.location_id = loc.location_id WHERE emp.LastName LIKE  '%a%';

3.SELECT emp.LastName , emp.Salary , job_g.grade_level FROM   Employees emp JOIN job_grades job_g ON  emp.Salary BETWEEN job_g.lowest_sal AND job_g.highest_sal;

 4.a SELECT emp.FirstName , emp.LastName , emp.Departmnet_Id ,  dep.Departmnet_Name FROM Employees emp LEFT OUTER JOIN departments dep ON emp.Departmnet_Id = dep.Departmnet_Id;

   b SELECT emp.FirstName , emp.LastName , emp.Departmnet_Id ,  dep.Departmnet_Name FROM Employees emp RIGHT OUTER JOIN departments dep ON emp.Departmnet_Id = dep.Departmnet_Id ;

5.a SELECT emp.LastName AS 'EMPLOYEE_NAME',mng.LastName AS 'MANAGER_NAME' FROM  Employees emp JOIN Employees mng ON  emp.manager_id = mng.Employee_Id;

  b SELECT emp.LastName AS 'EMPLOYEE_NAME', mng.LastName AS 'MANAGER_NAME' FROM   Employees emp LEFT OUTER JOIN Employees mng ON  emp.manager_id = mng.Employee_Id;

 6.SELECT emp.LastName , emp.FirstName , emp.Departmnet_Id FROM   Employees emp JOIN Employees specific_employee ON  emp.Departmnet_Id = specific_employee.Departmnet_Id
AND specific_employee.LastName = 'King' AND emp.LastName = ‘King’;

7.SELECT emp.LastName , emp.Salary FROM   Employees emp JOIN Employees specific_emp ON  emp.Salary < specific_emp.Salary AND  specific_emp.Employee_Id = 103;
