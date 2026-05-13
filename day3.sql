HACKER RANK 

1.Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

The CITY table is described as follows:

query: select name from city where population>120000 AND countrycode='USA';

2.Query all columns (attributes) for every row in the CITY table.

The CITY table is described as follows:

query: select * from city;

3.Query all columns for a city in CITY with the ID 1661.

The CITY table is described as follows:

query:select * from city where id=1661;

4.Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

The CITY table is described as follows:

query: select * from city where countrycode='JPN';

5.Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows:

query: select name from city where countrycode='JPN';

6.Query a list of CITY and STATE from the STATION table.
The STATION table is described as follows:

query: select city,state from station;

7.Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described as follows:

query: select distinct city from station where mod(id,2)=0;

8.Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows:


query: SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS DIFFERENCE FROM STATION;

9.Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:

query:SELECT CITY, LEN
FROM (
    SELECT CITY, LENGTH(CITY) AS LEN
    FROM STATION
    ORDER BY LENGTH(CITY), CITY
    FETCH FIRST 1 ROW ONLY
) AS A

UNION ALL

SELECT CITY, LEN
FROM (
    SELECT CITY, LENGTH(CITY) AS LEN
    FROM STATION
    ORDER BY LENGTH(CITY) DESC, CITY
    FETCH FIRST 1 ROW ONLY
) AS B;


10.Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

query: SELECT Name FROM STUDENTS WHERE Marks > 75
ORDER BY SUBSTR(Name, LENGTH(Name) - 2, 3), ID;







