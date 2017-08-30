1.SELECT LOWER(First_Name) , UPPER(Last_Name) 
FROM Employees 
WHERE Employee_Id BETWEEN 80 AND 150;
 
2.SELECT First_Name , Last_Name 
FROM Employees 
WHERE UPPER(Last_Name) = 'KING';

3. a)SELECT First_Name , Last_Name , STR(First_Name , 1 , 1) || SUBSTR(Last_Name , 1 , 3) || '@oracle.com' FROM Employees 
   b)SELECT First_Name , Last_Name , SUBSTR(First_Name , 1 , 1)|| SUBSTR(Last_Name , LENGTH(Last_Name)-2 , 3) || '@oracle.com' FROM Employees; 

4. a)SELECT CONCAT (First_Name , Last_Name) FROM Employees 
   b)SELECT CONCAT(First_Name , CONCAT(Last_Name , hire_date))FROM Employees;

 
5.SELECT Last_Name FROM Employees WHERE LENGTH(Last_Name) > 8 ;

6. a)SELECT First_Name , Last_Name , REPLACE(Phone_Number , '515', '815')
FROM Employees ;

b )SELECT First_Name , Last_Name , REPLACE(SUBSTR(Phone_Number , 1 ,3) , '515', '815') || SUBSTR(Phone_Number , 4)FROM Employees; 

7. SELECT First_Name , Salary , Salary * 1.12 , ROUND(Salary * 1.12 , 0) , TRUNC(Salary * 1.12 , 0) FROM Employees ;

8.SELECT First_Name , hire_date , hire_date - 10 , ADD_MONTHS(hire_date , 1) , sysdate - hire_date FROM Employees ;

9.SELECT First_Name , Last_Name , hire_Date ,MONTHS_BETWEEN(sysdate , hire_date ) ,MONTHS_BETWEEN(sysdate , hire_date ) /12 FROM Employees;

10. SELECT First_Name , hire_date ,  ADD_MONTHS(hire_date , 12)FROM Employees ;

11. SELECT First_Name , hire_date ,ROUND(hire_date , 'year'), ROUND(hire_date , 'month') FROM Employees; 

12.SELECT First_Name , TO_CHAR(hire_date , 'Day') , TO_CHAR(hire_date , ear')
FROM Employees;

13. SELECT UPPER(Last_Name) , TO_CHAR(Salary , '9,999.999') , TO_CHAR(hire_date , 'DD/MM/YYYY')FROM Employees 
WHERE SUBSTR(Last_Name , 1 , 1) IN ('D' , 'K');

14. a)SELECT First_Name , Last_Name , Salary , commission_pct , 
       NVL(commission_pct , 0) FROM Employees;
    b )SELECT First_Name , Last_Name , Salary , commission_pct , NVL(TO_CHAR(commission_pct) , 'No Commission') FROM Employees;
 
 15.SELECT First_Name , Last_Name , Salary , CASE WHEN Salary BETWEEN 0 AND 5000 THEN 'A'  WHEN Salary BETWEEN 5001 AND 15000 THEN 'B'  WHEN Salary BETWEEN 15001 AND 20000 THEN 'C'  ELSE 'D'   END AS "SAL_RANKS"
FROM Employees ;
