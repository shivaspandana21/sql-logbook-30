SQL> create table friends(id int primary key,name varchar(10),age int,city varchar(10));

Table created.

SQL> insert into friends values(1,'spandy',21,'wg');

1 row created.

SQL> insert into friends values(2,'sony',19,'hnk');

1 row created.

SQL> insert into friends values(3,'sweety',20,'sdpt');

1 row created.

SQL> insert into friends values(4,'meka',21,'mumbai');

1 row created.

SQL> insert into friends values(5,'ashish',22,'hyd');

1 row created.

SQL> insert into friends values(6,'smithal',23,'hyd');

1 row created.

SQL> insert into friends values(7,'rohith',24,'pune');

1 row created.

SQL> insert into friends values(8,'hp',21,'mumbai');

1 row created.

SQL> insert into friends values(9,'praneeth',25,'bngl');

1 row created.

SQL> insert into friends values(10,'manmith',27,'knr');

1 row created.

SQL> insert into friends values(11,'goutham',28,'pune');

1 row created.

SQL> select *from friends;

        ID NAME              AGE CITY
---------- ---------- ---------- ----------
         1 spandy             21 wg
         2 sony               19 hnk
         3 sweety             20 sdpt
         4 meka               21 mumbai
         5 ashish             22 hyd
         6 smithal            23 hyd
         7 rohith             24 pune
         8 hp                 21 mumbai
         9 praneeth           25 bngl
        10 manmith            27 knr
        11 goutham            28 pune

11 rows selected.

SQL> select name,age from friends;

NAME              AGE
---------- ----------
spandy             21
sony               19
sweety             20
meka               21
ashish             22
smithal            23
rohith             24
hp                 21
praneeth           25
manmith            27
goutham            28

11 rows selected.

SQL> select Distinct city from friends;

CITY
----------
wg
hnk
sdpt
mumbai
hyd
pune
bngl
knr

8 rows selected.

SQL> select name,age from friends where age=20;

NAME              AGE
---------- ----------
sweety             20

SQL> select name from friends where city='hyd';

NAME
----------
ashish
smithal

SQL> select name,age from friends where age>20;

NAME              AGE
---------- ----------
spandy             21
meka               21
ashish             22
smithal            23
rohith             24
hp                 21
praneeth           25
manmith            27
goutham            28

9 rows selected.

SQL> select name,age,city from friends where age>20 AND city='pune';

NAME              AGE CITY
---------- ---------- ----------
rohith             24 pune
goutham            28 pune

SQL> select name,age,city from friends where city='mumbai' OR city='pune';

NAME              AGE CITY
---------- ---------- ----------
meka               21 mumbai
rohith             24 pune
hp                 21 mumbai
goutham            28 pune

SQL> select name,age,city from friends where age!=20;

NAME              AGE CITY
---------- ---------- ----------
spandy             21 wg
sony               19 hnk
meka               21 mumbai
ashish             22 hyd
smithal            23 hyd
rohith             24 pune
hp                 21 mumbai
praneeth           25 bngl
manmith            27 knr
goutham            28 pune

10 rows selected.

SQL> select name,age,city from friends where age 19 between 22;
select name,age,city from friends where age 19 between 22
                                            *
ERROR at line 1:
ORA-00920: invalid relational operator


SQL> select name,age,city from friends where age between 19 and 22;

NAME              AGE CITY
---------- ---------- ----------
spandy             21 wg
sony               19 hnk
sweety             20 sdpt
meka               21 mumbai
ashish             22 hyd
hp                 21 mumbai

6 rows selected.

SQL> select name,age from friends where age asc;
select name,age from friends where age asc
                                       *
ERROR at line 1:
ORA-00920: invalid relational operator


SQL> select name,age from friends order by age asc;

NAME              AGE
---------- ----------
sony               19
sweety             20
spandy             21
meka               21
hp                 21
ashish             22
smithal            23
rohith             24
praneeth           25
manmith            27
goutham            28

11 rows selected.

SQL> select name,age from friends order by age desc;

NAME              AGE
---------- ----------
goutham            28
manmith            27
praneeth           25
rohith             24
smithal            23
ashish             22
meka               21
hp                 21
spandy             21
sweety             20
sony               19

11 rows selected.

SQL> select name from friends order by age desc;

NAME
----------
goutham
manmith
praneeth
rohith
smithal
ashish
meka
hp
spandy
sweety
sony

11 rows selected.

SQL> select age from friends order by age desc;

       AGE
----------
        28
        27
        25
        24
        23
        22
        21
        21
        21
        20
        19

11 rows selected.

SQL> select * from friends limit 2;
select * from friends limit 2
                            *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select *from friends limit 2;
select *from friends limit 2
                           *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select *from friends order by id fetch first 2 rows only;

        ID NAME              AGE CITY
---------- ---------- ---------- ----------
         1 spandy             21 wg
         2 sony               19 hnk

SQL> select *from friends order by age desc fetch first 1 row only;

        ID NAME              AGE CITY
---------- ---------- ---------- ----------
        11 goutham            28 pune

SQL> select *from friends order by age asc fetch first 1 row only;

        ID NAME              AGE CITY
---------- ---------- ---------- ----------
         2 sony               19 hnk

SQL> select avg(age) from friends;

  AVG(AGE)
----------
22.8181818

SQL> select count(*) from friends;

  COUNT(*)
----------
        11

SQL> select count(city) from friends;

COUNT(CITY)
-----------
         11

SQL> select city, count(*) from friends group by city;

CITY         COUNT(*)
---------- ----------
wg                  1
hnk                 1
sdpt                1
mumbai              2
hyd                 2
pune                2
bngl                1
knr                 1

8 rows selected.

SQL> select city, count(*) from friends group by city having count(*)>1;

CITY         COUNT(*)
---------- ----------
mumbai              2
hyd                 2
pune                2

SQL> select city,name, count(*) from friends group by city having count(*)>1;
select city,name, count(*) from friends group by city having count(*)>1
            *
ERROR at line 1:
ORA-00979: not a GROUP BY expression


SQL> select city, count(*) from friends group by city having count(*)>1;

CITY         COUNT(*)
---------- ----------
mumbai              2
hyd                 2
pune                2

SQL> commit;

Commit complete.

SQL> create table employee(id int ,name varchar(50),dept varchar(50),salary int,age int);
create table employee(id int ,name varchar(50),dept varchar(50),salary int,age int)
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> DROP TABLE employee;

Table dropped.

SQL> create table employee(id int ,name varchar(50),dept varchar(50),salary int,age int);

Table created.

SQL> insert into employee values(1,'amit','IT',50000,25);

1 row created.

SQL> insert into employee values(2,'priya','HR',40000,30);

1 row created.

SQL> insert into employee values(3,'rahul','IT',60000,28);

1 row created.

SQL> insert into employee values(4,'sneha','Sales',35000,26);

1 row created.

SQL> insert into employee values(5,'vikram','HR',45000,32);

1 row created.

SQL> insert into employee values(6,'Anjali','IT',70000,29);

1 row created.

SQL> insert into employee values(7,'rohit','Sales',30000,24);

1 row created.

SQL> insert into employee values(8,'kavya','finance',55000,31);

1 row created.

SQL> insert into employee values(9,'arjun','finance',65000,27);

1 row created.

SQL> insert into employee values(10,'neha','HR',48000,29);

1 row created.

SQL> select * from employee;

        ID NAME
---------- --------------------------------------------------
DEPT                                                   SALARY        AGE
-------------------------------------------------- ---------- ----------
         1 amit
IT                                                      50000         25

         2 priya
HR                                                      40000         30

         3 rahul
IT                                                      60000         28


        ID NAME
---------- --------------------------------------------------
DEPT                                                   SALARY        AGE
-------------------------------------------------- ---------- ----------
         4 sneha
Sales                                                   35000         26

         5 vikram
HR                                                      45000         32

         6 Anjali
IT                                                      70000         29


        ID NAME
---------- --------------------------------------------------
DEPT                                                   SALARY        AGE
-------------------------------------------------- ---------- ----------
         7 rohit
Sales                                                   30000         24

         8 kavya
finance                                                 55000         31

         9 arjun
finance                                                 65000         27


        ID NAME
---------- --------------------------------------------------
DEPT                                                   SALARY        AGE
-------------------------------------------------- ---------- ----------
        10 neha
HR                                                      48000         29


10 rows selected.

SQL> COLUMN name FORMAT A10
SQL> COLUMN dept FORMAT A10
SQL> SET LINESIZE 80
SQL> SELECT * FROM employee;

        ID NAME       DEPT           SALARY        AGE
---------- ---------- ---------- ---------- ----------
         1 amit       IT              50000         25
         2 priya      HR              40000         30
         3 rahul      IT              60000         28
         4 sneha      Sales           35000         26
         5 vikram     HR              45000         32
         6 Anjali     IT              70000         29
         7 rohit      Sales           30000         24
         8 kavya      finance         55000         31
         9 arjun      finance         65000         27
        10 neha       HR              48000         29

10 rows selected.

SQL> update employee set salary=540000 where id=1;

1 row updated.

SQL> SELECT * FROM employee;

        ID NAME       DEPT           SALARY        AGE
---------- ---------- ---------- ---------- ----------
         1 amit       IT             540000         25
         2 priya      HR              40000         30
         3 rahul      IT              60000         28
         4 sneha      Sales           35000         26
         5 vikram     HR              45000         32
         6 Anjali     IT              70000         29
         7 rohit      Sales           30000         24
         8 kavya      finance         55000         31
         9 arjun      finance         65000         27
        10 neha       HR              48000         29

10 rows selected.

SQL> --Increase salary by 10% for all employees
SQL> update salary set salary=salary+(salary*0.10);;
update salary set salary=salary+(salary*0.10);
                                             *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> update employee set salary=salary+(salary*0.10);

10 rows updated.

SQL> SELECT * FROM employee;

        ID NAME       DEPT           SALARY        AGE
---------- ---------- ---------- ---------- ----------
         1 amit       IT             594000         25
         2 priya      HR              44000         30
         3 rahul      IT              66000         28
         4 sneha      Sales           38500         26
         5 vikram     HR              49500         32
         6 Anjali     IT              77000         29
         7 rohit      Sales           33000         24
         8 kavya      finance         60500         31
         9 arjun      finance         71500         27
        10 neha       HR              52800         29

10 rows selected.

SQL> --Increase salary by 10% for all employeesChange department 'HR' → 'Human Resources'

SQL> update employee set dep='Human Resources' where dept='HR';
update employee set dep='Human Resources' where dept='HR'
                    *
ERROR at line 1:
ORA-00904: "DEP": invalid identifier


SQL> update employee set dept='Human Resources' where dept='HR';

3 rows updated.

SQL> SELECT * FROM employee;

        ID NAME       DEPT           SALARY        AGE
---------- ---------- ---------- ---------- ----------
         1 amit       IT             594000         25
         2 priya      Human Reso      44000         30
                      urces

         3 rahul      IT              66000         28
         4 sneha      Sales           38500         26
         5 vikram     Human Reso      49500         32
                      urces

         6 Anjali     IT              77000         29
         7 rohit      Sales           33000         24

        ID NAME       DEPT           SALARY        AGE
---------- ---------- ---------- ---------- ----------
         8 kavya      finance         60500         31
         9 arjun      finance         71500         27
        10 neha       Human Reso      52800         29
                      urces


10 rows selected.

SQL> SET LINESIZE 90
SQL> SELECT * FROM employee;

        ID NAME       DEPT           SALARY        AGE
---------- ---------- ---------- ---------- ----------
         1 amit       IT             594000         25
         2 priya      Human Reso      44000         30
                      urces

         3 rahul      IT              66000         28
         4 sneha      Sales           38500         26
         5 vikram     Human Reso      49500         32
                      urces

         6 Anjali     IT              77000         29
         7 rohit      Sales           33000         24

        ID NAME       DEPT           SALARY        AGE
---------- ---------- ---------- ---------- ----------
         8 kavya      finance         60500         31
         9 arjun      finance         71500         27
        10 neha       Human Reso      52800         29
                      urces


10 rows selected.

SQL> COLUMN dept FORMAT A15
SQL> SELECT * FROM employee;

        ID NAME       DEPT                SALARY        AGE
---------- ---------- --------------- ---------- ----------
         1 amit       IT                  594000         25
         2 priya      Human Resources      44000         30
         3 rahul      IT                   66000         28
         4 sneha      Sales                38500         26
         5 vikram     Human Resources      49500         32
         6 Anjali     IT                   77000         29
         7 rohit      Sales                33000         24
         8 kavya      finance              60500         31
         9 arjun      finance              71500         27
        10 neha       Human Resources      52800         29

10 rows selected.

SQL> update employee set age=30 where name='rohit';

1 row updated.

SQL> SELECT * FROM employee;

        ID NAME       DEPT                SALARY        AGE
---------- ---------- --------------- ---------- ----------
         1 amit       IT                  594000         25
         2 priya      Human Resources      44000         30
         3 rahul      IT                   66000         28
         4 sneha      Sales                38500         26
         5 vikram     Human Resources      49500         32
         6 Anjali     IT                   77000         29
         7 rohit      Sales                33000         30
         8 kavya      finance              60500         31
         9 arjun      finance              71500         27
        10 neha       Human Resources      52800         29

10 rows selected.

SQL> --Delete employee with id = 5
SQL> delete from employee where id=5;

1 row deleted.

SQL> SELECT * FROM employee;

        ID NAME       DEPT                SALARY        AGE
---------- ---------- --------------- ---------- ----------
         1 amit       IT                  594000         25
         2 priya      Human Resources      44000         30
         3 rahul      IT                   66000         28
         4 sneha      Sales                38500         26
         6 Anjali     IT                   77000         29
         7 rohit      Sales                33000         30
         8 kavya      finance              60500         31
         9 arjun      finance              71500         27
        10 neha       Human Resources      52800         29

9 rows selected.

SQL> --Delete employees with salary < 20000
SQL> delete from employee where salary<20000;

0 rows deleted.

SQL> --Delete employees with salary < 40000
SQL> delete from employee where salary<40000;

2 rows deleted.

SQL> SELECT * FROM employee;

        ID NAME       DEPT                SALARY        AGE
---------- ---------- --------------- ---------- ----------
         1 amit       IT                  594000         25
         2 priya      Human Resources      44000         30
         3 rahul      IT                   66000         28
         6 Anjali     IT                   77000         29
         8 kavya      finance              60500         31
         9 arjun      finance              71500         27
        10 neha       Human Resources      52800         29

7 rows selected.

SQL> --Delete all employees from 'Sales'
SQL> delete from employee where dept='sales';

0 rows deleted.

SQL> --Delete all employees from 'Human Resources'
SQL> delete from employee where dept='Human Resources';

2 rows deleted.

SQL> SELECT * FROM employee;

        ID NAME       DEPT                SALARY        AGE
---------- ---------- --------------- ---------- ----------
         1 amit       IT                  594000         25
         3 rahul      IT                   66000         28
         6 Anjali     IT                   77000         29
         8 kavya      finance              60500         31
         9 arjun      finance              71500         27

SQL> --Delete all records (but keep table)
SQL> delete from employee;

5 rows deleted.

SQL> SELECT * FROM employee;

no rows selected

SQL> select * from friends;

        ID NAME              AGE CITY
---------- ---------- ---------- ----------
         1 spandy             21 wg
         2 sony               19 hnk
         3 sweety             20 sdpt
         4 meka               21 mumbai
         5 ashish             22 hyd
         6 smithal            23 hyd
         7 rohith             24 pune
         8 hp                 21 mumbai
         9 praneeth           25 bngl
        10 manmith            27 knr
        11 goutham            28 pune

11 rows selected.

SQL> --count total names
SQL> select count(*) from friends;

  COUNT(*)
----------
        11

SQL> --find total age of ppl
SQL> select count(age) from friends;

COUNT(AGE)
----------
        11

SQL> --find total age of ppl
SQL> select sum(age) as total_age from friends;

 TOTAL_AGE
----------
       251

SQL> --find avg age of friends
SQL> select avg(age) from friends;

  AVG(AGE)
----------
22.8181818

SQL> --Count friends in 'hyd' city
SQL> select city,count(*) from friends group by city;

CITY         COUNT(*)
---------- ----------
wg                  1
hnk                 1
sdpt                1
mumbai              2
hyd                 2
pune                2
bngl                1
knr                 1

8 rows selected.

SQL> select city,count(*) from friends group by city='hyd';
select city,count(*) from friends group by city='hyd'
                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select city,count(*) from friends group by city having city='hyd';

CITY         COUNT(*)
---------- ----------
hyd                 2

SQL> --Count age in each city
SQL> select city,count(*) from friends group by city;

CITY         COUNT(*)
---------- ----------
wg                  1
hnk                 1
sdpt                1
mumbai              2
hyd                 2
pune                2
bngl                1
knr                 1

8 rows selected.

SQL> --Find average age per city
SQL> select city,avg(age) from friends group by city;

CITY         AVG(AGE)
---------- ----------
wg                 21
hnk                19
sdpt               20
mumbai             21
hyd              22.5
pune               26
bngl               25
knr                27

8 rows selected.

SQL> --total salary per city
SQL> select city,sum(age) from friends group by city;

CITY         SUM(AGE)
---------- ----------
wg                 21
hnk                19
sdpt               20
mumbai             42
hyd                45
pune               52
bngl               25
knr                27

8 rows selected.

SQL> --names living more than 2 cities
SQL> select city,count(*) from friends group by city having count(*)>=2;

CITY         COUNT(*)
---------- ----------
mumbai              2
hyd                 2
pune                2

SQL> --avg age more than 22
SQL> select name,avg(age) from friends group by name having avg(age)>=22;

NAME         AVG(AGE)
---------- ----------
ashish             22
smithal            23
rohith             24
praneeth           25
manmith            27
goutham            28

6 rows selected.

SQL> --total age more than 25
SQL> select name,sum(age) from friends group by name having sum(age)>25;

NAME         SUM(AGE)
---------- ----------
manmith            27
goutham            28

SQL> commit
  2  commit;
commit
*
ERROR at line 2:
ORA-02185: a token other than WORK follows COMMIT


SQL> commit;

Commit complete.