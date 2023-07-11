
1. Revising the Select Query I
    SELECT * FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000;


2. Revising the Select Query II
    SELECT NAME FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;


3. Select All
    SELECT * FROM CITY;


4. Select By ID
    SELECT * FROM CITY WHERE ID = 1661;

5. Japanese Cities Attributes
    SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

6. Japanese Cities Names
    SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';

7. Weather Observation Station 1
    SELECT CITY,STATE FROM STATION;

8. Weather Observation Station 3
    SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)=0 ORDER BY CITY ASC;

9. Weather Observation Station 4
    SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

10. Weather Observation Station 5
    select city, length(city) from station order by length(city) DESC,city ASC fetch first row only;
    select city, length(city) from station order by length(city) asc ,city asc fetch first row only;

11. Weather Observation Station 6
    SELECT DISTINCT(CITY) FROM STATION WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%'
    OR CITY LIKE 'U%' ORDER BY CITY ASC;

12. Weather Observation Station 7
    SELECT DISTINCT(CITY) FROM STATION WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o'
    OR CITY LIKE '%u';

13. Weather Observation Station 8
    SELECT DISTINCT CITY FROM STATION WHERE (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%') AND (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u') order by city;

14. Weather Observation Station 9
    SELECT DISTINCT CITY FROM STATION WHERE upper(SUBSTR(CITY,1,1)) NOT IN ('A','E','I','O','U')
    AND lower(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u');

15. Weather Observation Station 10
    SELECT DISTINCT CITY FROM STATION WHERE UPPER(SUBSTR(CITY, LENGTH(CITY), 1)) NOT IN ('A','E','I','O','U')
    AND LOWER(SUBSTR(CITY, LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');

16. Weather Observation Station 11
    SELECT DISTINCT CITY FROM STATION WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') OR LOWER(SUBSTR(CITY, LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');

17. Weather Observation Station 11
    SELECT DISTINCT CITY FROM STATION WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') AND LOWER(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');

18. Higher Than 75 Marks
    SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY SUBSTR(NAME, LENGTH(NAME)-2, 3), ID;

19. Employee Names
    SELECT NAME FROM EMPLOYEE ORDER BY NAME;

20. Employee Salaries
    SELECT NAME FROM EMPLOYEE WHERE SALARY > 2000  AND MONTHS < 10 ORDER BY EMPLOYEE_ID;

