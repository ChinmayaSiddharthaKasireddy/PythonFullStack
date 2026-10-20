
mysql> use collegepfs64;
Database changed
mysql> select * from sales;
+----+---------------+---------+----------+----------+---------+
| id | customer_name | product | quantity | price    | city    |
+----+---------------+---------+----------+----------+---------+
|  1 | Alice         | Laptop  |        1 | 50000.00 | Delhi   |
|  2 | Bob           | Mobile  |        2 | 15000.00 | Mumbai  |
|  3 | Charlie       | Laptop  |        1 | 52000.00 | Delhi   |
|  4 | David         | Tablet  |        3 | 12000.00 | Chennai |
|  5 | Eve           | Mobile  |        1 | 15000.00 | Mumbai  |
|  6 | Frank         | Laptop  |        2 | 50000.00 | Delhi   |
|  7 | Grace         | Tablet  |        1 | 12000.00 | Chennai |
+----+---------------+---------+----------+----------+---------+
7 rows in set (0.12 sec)

mysql> select id,customer_name,product,price from sales;
+----+---------------+---------+----------+
| id | customer_name | product | price    |
+----+---------------+---------+----------+
|  1 | Alice         | Laptop  | 50000.00 |
|  2 | Bob           | Mobile  | 15000.00 |
|  3 | Charlie       | Laptop  | 52000.00 |
|  4 | David         | Tablet  | 12000.00 |
|  5 | Eve           | Mobile  | 15000.00 |
|  6 | Frank         | Laptop  | 50000.00 |
|  7 | Grace         | Tablet  | 12000.00 |
+----+---------------+---------+----------+
7 rows in set (0.01 sec)

mysql> create view salesview as
    -> select id,customer_name,product,price from sales;
Query OK, 0 rows affected (0.05 sec)

mysql> select * from salesview;
+----+---------------+---------+----------+
| id | customer_name | product | price    |
+----+---------------+---------+----------+
|  1 | Alice         | Laptop  | 50000.00 |
|  2 | Bob           | Mobile  | 15000.00 |
|  3 | Charlie       | Laptop  | 52000.00 |
|  4 | David         | Tablet  | 12000.00 |
|  5 | Eve           | Mobile  | 15000.00 |
|  6 | Frank         | Laptop  | 50000.00 |
|  7 | Grace         | Tablet  | 12000.00 |
+----+---------------+---------+----------+
7 rows in set (0.01 sec)

mysql> show full tables
    -> where table_Type='VIEW';
+------------------------+------------+
| Tables_in_collegepfs64 | Table_type |
+------------------------+------------+
| emp_view               | VIEW       |
| salesview              | VIEW       |
+------------------------+------------+
2 rows in set (0.07 sec)

mysql> select * from emp_view;
+--------+------------+-----------+-----------------+----------+---------+
| emp_id | first_name | last_name | email           | salary   | bonus   |
+--------+------------+-----------+-----------------+----------+---------+
|      1 | Rahul      | Sharma    | rahul@gmail.com | 55000.00 | 5000.00 |
|      2 | Priya      | Reddy     | priya@gmail.com | 45000.00 | 4000.00 |
|      3 | Arjun      | Kumar     | arjun@gmail.com | 65000.00 | 7000.00 |
|      4 | Sneha      | Patel     | sneha@gmail.com | 52000.00 | 4500.00 |
|      5 | Kiran      | Rao       | kiran@gmail.com | 48000.00 | 3500.00 |
+--------+------------+-----------+-----------------+----------+---------+
5 rows in set (0.04 sec)

mysql> select * from salesview;
+----+---------------+---------+----------+
| id | customer_name | product | price    |
+----+---------------+---------+----------+
|  1 | Alice         | Laptop  | 50000.00 |
|  2 | Bob           | Mobile  | 15000.00 |
|  3 | Charlie       | Laptop  | 52000.00 |
|  4 | David         | Tablet  | 12000.00 |
|  5 | Eve           | Mobile  | 15000.00 |
|  6 | Frank         | Laptop  | 50000.00 |
|  7 | Grace         | Tablet  | 12000.00 |
+----+---------------+---------+----------+
7 rows in set (0.00 sec)

mysql> drop emp_view;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'emp_view' at line 1
mysql> drop view emp_view;
Query OK, 0 rows affected (0.02 sec)

mysql> alter view salesview as
    -> select id,customer_name,product from sales;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from salesview;
+----+---------------+---------+
| id | customer_name | product |
+----+---------------+---------+
|  1 | Alice         | Laptop  |
|  2 | Bob           | Mobile  |
|  3 | Charlie       | Laptop  |
|  4 | David         | Tablet  |
|  5 | Eve           | Mobile  |
|  6 | Frank         | Laptop  |
|  7 | Grace         | Tablet  |
+----+---------------+---------+
7 rows in set (0.00 sec)

mysql> create view salesabo30k as
    -> select id,customer_name,product,price from sales where price>=30000;
Query OK, 0 rows affected (0.03 sec)

mysql> show full tables
    -> where Table_Type='VIEW';
+------------------------+------------+
| Tables_in_collegepfs64 | Table_type |
+------------------------+------------+
| salesabo30k            | VIEW       |
| salesview              | VIEW       |
+------------------------+------------+
2 rows in set (0.01 sec)

mysql> select * from salesabo30k;
+----+---------------+---------+----------+
| id | customer_name | product | price    |
+----+---------------+---------+----------+
|  1 | Alice         | Laptop  | 50000.00 |
|  3 | Charlie       | Laptop  | 52000.00 |
|  6 | Frank         | Laptop  | 50000.00 |
+----+---------------+---------+----------+
3 rows in set (0.00 sec)

mysql> select * from customers;
+-----+-------+--------+
| cid | cname | city   |
+-----+-------+--------+
|   1 | John  | London |
|   2 | Alice | Paris  |
|   3 | Raj   | Delhi  |
|   4 | Sara  | Mumbai |
+-----+-------+--------+
4 rows in set (0.04 sec)

mysql> select * from ord;
ERROR 1146 (42S02): Table 'collegepfs64.ord' doesn't exist
mysql> select * from orders;
+------+---------+
| oid  | status  |
+------+---------+
|    1 | s       |
|    2 | pending |
| NULL | pending |
| NULL | pending |
+------+---------+
4 rows in set (0.02 sec)

mysql> select * from ords;
ERROR 1146 (42S02): Table 'collegepfs64.ords' doesn't exist
mysql> select * from orderss;
+-----+------+--------+
| oid | cid  | amount |
+-----+------+--------+
| 101 |    1 |    200 |
| 102 |    2 |    300 |
| 103 |    2 |    250 |
| 104 |    3 |    500 |
| 105 |    5 |    400 |
+-----+------+--------+
5 rows in set (0.03 sec)

mysql> select * from customers;
+-----+-------+--------+
| cid | cname | city   |
+-----+-------+--------+
|   1 | John  | London |
|   2 | Alice | Paris  |
|   3 | Raj   | Delhi  |
|   4 | Sara  | Mumbai |
+-----+-------+--------+
4 rows in set (0.00 sec)

mysql> select cname,amount from customerss as c
    -> inner join ord as o on c.cid=o.cid;
ERROR 1146 (42S02): Table 'collegepfs64.customerss' doesn't exist
mysql> select cname,amount from customers as c
    -> inner join orderss as o on c.cid=o.cid;
+-------+--------+
| cname | amount |
+-------+--------+
| John  |    200 |
| Alice |    300 |
| Alice |    250 |
| Raj   |    500 |
+-------+--------+
4 rows in set (0.00 sec)

mysql> create view custordss as
    -> select cname,amount from customers as c
    -> inner join orderss as o on c.cid=o.cid;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from custordss;
+-------+--------+
| cname | amount |
+-------+--------+
| John  |    200 |
| Alice |    300 |
| Alice |    250 |
| Raj   |    500 |
+-------+--------+
4 rows in set (0.00 sec)

mysql>mysql> select * from students;
+----+-------+------+-------+-----------+
| id | name  | age  | marks | city      |
+----+-------+------+-------+-----------+
|  1 | Amit  |   18 |    85 | Delhi     |
|  2 | Sara  |   19 |    72 | Mumbai    |
|  3 | John  |   18 |    90 | Delhi     |
|  4 | Ravi  |   20 |    60 | Chennai   |
|  5 | Meena |   21 |  NULL | Hyderabad |
+----+-------+------+-------+-----------+
5 rows in set (0.05 sec)

mysql> select user,host from mysql.user;
+------------------+-----------+
| user             | host      |
+------------------+-----------+
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
+------------------+-----------+
4 rows in set (0.01 sec)

mysql> create user 'admin'@'localhost' identified by 'admin';
Query OK, 0 rows affected (0.19 sec)

mysql> select user,host from mysql.user;
+------------------+-----------+
| user             | host      |
+------------------+-----------+
| admin            | localhost |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
+------------------+-----------+
5 rows in set (0.00 sec)

mysql> grant all privileges on students to 'admin'@'localhost' with grant option;
Query OK, 0 rows affected (0.01 sec)

mysql> create user 'faculty'@'localhost' identified by 'faculty';
Query OK, 0 rows affected (0.02 sec)

mysql> select * from students;
+----+-------+------+-------+-----------+
| id | name  | age  | marks | city      |
+----+-------+------+-------+-----------+
|  1 | Amit  |   18 |    85 | Delhi     |
|  2 | Sara  |   19 |    72 | Mumbai    |
|  3 | John  |   18 |    90 | Delhi     |
|  4 | Ravi  |   20 |    60 | Chennai   |
|  5 | Meena |   21 |  NULL | Hyderabad |
+----+-------+------+-------+-----------+
5 rows in set (0.00 sec)

mysql> create view studentsview as
    -> select id,name,age,marks from students;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from studentsview;
+----+-------+------+-------+
| id | name  | age  | marks |
+----+-------+------+-------+
|  1 | Amit  |   18 |    85 |
|  2 | Sara  |   19 |    72 |
|  3 | John  |   18 |    90 |
|  4 | Ravi  |   20 |    60 |
|  5 | Meena |   21 |  NULL |
+----+-------+------+-------+
5 rows in set (0.00 sec)

mysql> grant select on studentsview to 'faculty'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> revoke select on studentsview to 'faculty'@'localhost';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to 'faculty'@'localhost'' at line 1
mysql> revoke select on studentsview from 'faculty'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select,delete,update on studentsview to 'faculty'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql>