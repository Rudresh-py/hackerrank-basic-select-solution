1. Revising Aggregations - The Count Function
    select count(name) from city
    where population>100000

2. Revising Aggregations - The Sum Function
    select sum(population) from city
    where district="California"

3. Average Population
    select round(avg(population)) from city

4. Population Density Difference
    select max(population)-min(population) from city


5. Revising Aggregations - Averages
    select avg(population) from city
    where district="California"

6. The Blunder
    SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0','')))
    FROM EMPLOYEES;

7. Top Earners
    SELECT MAX(SALARY*MONTHS), COUNT(*) FROM EMPLOYEE
    WHERE (SALARY*MONTHS) = (SELECT MAX(SALARY*MONTHS)
    FROM EMPLOYEE);

8. Weather Observation Station 2
    SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
    FROM STATION;

9. Weather Observation Station 13
    select round(sum(lat_n), 4) from station
    where lat_n>38.7880 and lat_n<137.2345

10. Weather Observation Station 14
    select round(max(lat_n),4) from station
    where lat_n<137.2345

11. Weather Observation Station 15
    select round(long_w,4) from station
    where lat_n = (select max(lat_n) from station where lat_n<137.2345)

12. Weather Observation Station 16
    select round(min(lat_n), 4) from station
    where lat_n>38.7780

13. Weather Observation Station 17
    select round(long_w, 4) from station
    where lat_n = (select min(lat_n) from station
    where lat_n>38.7780)

14. Weather Observation Station 18
    select round(abs(min(lat_n)-max(lat_n))+abs(min(long_w)-max(long_w)),4) from station

15. Weather Observation Station 19
SELECT ROUND(SQRT(POWER(MIN(LAT_N)-MAX(LAT_N),2)+POWER(MIN(LONG_W)-MAX(LONG_W),2)),4)
FROM STATION;

16. Weather Observation Station 20
    Select round(S.LAT_N,4) from station AS S where (select count(Lat_N) from station where Lat_N < S.LAT_N ) =
    (select count(Lat_N) from station where Lat_N > S.LAT_N);