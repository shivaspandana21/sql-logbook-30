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