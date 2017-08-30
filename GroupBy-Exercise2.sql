1.SELECT MIN(last_name) FROM Employees ;

 2.SELECT MAX(last_name) FROM Employees ;

 3.SELECT COUNT(*) FROM Employees ;

 4.SELECT COUNT(commission_pct) FROM Employees ;

 5.SELECT COUNT(*) - COUNT(commission_pct) FROM Employees;

 6.SELECT MIN(Salary) , MAX(Salary) , AVG(Salary) FROM Employees;
 
 7. a SELECT Department_Id , AVG(Salary) FROM Employees GROUP BY Department_Id ;

    b SELECT Department_Id , AVG(Salary) FROM Employees WHERE Department_Id IN (50, 80) GROUP BY Department_Id;

 8. a SELECT job_id , COUNT(*) FROM Employees GROUP BY job_id ;

    b SELECT job_id , COUNT(*) FROM Employees WHERE Salary > 10000 GROUP BY job_id ;

    c SELECT job_id , COUNT(*) FROM Employees WHERE Salary > 10000 GROUP BY job_id HAVING count(*) > 2 ;

 9. SELECT AVG(Salary) , Department_Id , job_id FROM Employees GROUP BY Department_Id , job_id ;

 10.a SELECT MAX(Salary) , manager_id FROM Employees GROUP BY manager_id ;

    b SELECT MAX(Salary) , manager_id FROM Employees GROUP BY manager_id HAVING MAX(Salary) > 10000;

 11.SELECT MIN(Salary) , job_id FROM Employees GROUP BY job_id HAVING MIN(Salary) > 7000 ;
  
 12.SELECT AVG(Salary) , Department_Id FROM Employees WHERE Department_Id BETWEEN 20 AND 80 GROUP BY Department_Id HAVING AVG(Salary) > 9000;
