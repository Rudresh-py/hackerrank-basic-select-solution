1. The Blunder
    SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0','')))
    FROM EMPLOYEES;

2. Top Earners
    SELECT MAX(SALARY*MONTHS), COUNT(*) FROM EMPLOYEE
    WHERE (SALARY*MONTHS) = (SELECT MAX(SALARY*MONTHS)
    FROM EMPLOYEE);

3. Weather Observation Station 2
    SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
    FROM STATION;

4. Weather Observation Station 13
    select round(sum(lat_n), 4) from station
    where lat_n>38.7880 and lat_n<137.2345

5. Weather Observation Station 14
    select round(max(lat_n),4) from station
    where lat_n<137.2345

6. Weather Observation Station 15
    select round(long_w,4) from station
    where lat_n = (select max(lat_n) from station where lat_n<137.2345)

7. Weather Observation Station 16
    select round(min(lat_n), 4) from station
    where lat_n>38.7780

8. Weather Observation Station 17
    select round(long_w, 4) from station
    where lat_n = (select min(lat_n) from station
    where lat_n>38.7780)

8. Weather Observation Station 18
    select round(abs(min(lat_n)-max(lat_n))+abs(min(long_w)-max(long_w)),4) from station


SELECT ROUND(SQRT(POWER(MIN(LAT_N)-MAX(LAT_N),2)+POWER(MIN(LONG_W)-MAX(LONG_W),2)),4)
FROM STATION;