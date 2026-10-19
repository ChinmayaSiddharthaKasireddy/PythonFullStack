 use collegepfs64;
Database changed
mysql> show tables;
+------------------------+
| Tables_in_collegepfs64 |
+------------------------+
| cars                   |
| course                 |
| customers              |
| emp                    |
| emp1                   |
| emp_view               |
| employee               |
| employees              |
| employees_2024         |
| employees_2025         |
| logs                   |
| orders                 |
| orderss                |
| product                |
| sales                  |
| stu                    |
| stu1                   |
| stu3                   |
| stu4                   |
| stu5                   |
| stu6                   |
| stu7                   |
| stucourse              |
| student                |
| students               |
| users                  |
| voters                 |
+------------------------+
27 rows in set (0.11 sec)

mysql> CREATE TABLE empp (
    ->     eid INT PRIMARY KEY,
    ->     ename VARCHAR(50),
    ->     salary DECIMAL(10,2),
    ->     dept VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> INSERT INTO empp VALUES
    -> (1, 'John', 5000.00, 'HR'),
    -> (2, 'Alice', 12000.00, 'IT'),
    -> (3, 'Bob', 20000.00, 'IT'),
    -> (4, 'David', 35000.00, 'Finance'),
    -> (5, 'Emma', 25000.00, 'Finance'),
    -> (6, 'raj', 15000.00, 'HR'),
    -> (7, 'bob', 30000.00, 'admin');
Query OK, 7 rows affected (0.03 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM empp;
+-----+-------+----------+---------+
| eid | ename | salary   | dept    |
+-----+-------+----------+---------+
|   1 | John  |  5000.00 | HR      |
|   2 | Alice | 12000.00 | IT      |
|   3 | Bob   | 20000.00 | IT      |
|   4 | David | 35000.00 | Finance |
|   5 | Emma  | 25000.00 | Finance |
|   6 | raj   | 15000.00 | HR      |
|   7 | bob   | 30000.00 | admin   |
+-----+-------+----------+---------+
7 rows in set (0.01 sec)

mysql> select ename,salary from empp
    -> where salary=(select max(salary) from empp);
+-------+----------+
| ename | salary   |
+-------+----------+
| David | 35000.00 |
+-------+----------+
1 row in set (0.02 sec)

mysql> select ename,salary from empp
    -> where salary>(select salary from empp where ename='alice');
+-------+----------+
| ename | salary   |
+-------+----------+
| Bob   | 20000.00 |
| David | 35000.00 |
| Emma  | 25000.00 |
| raj   | 15000.00 |
| bob   | 30000.00 |
+-------+----------+
5 rows in set (0.01 sec)

mysql> select ename from empp
    -> where salary>(select avg(salary) from empp);
+-------+
| ename |
+-------+
| David |
| Emma  |
| bob   |
+-------+
3 rows in set (0.00 sec)

mysql> select ename from empp
    -> where dept=(select dept from empp where ename='raj') and ename<>'raj';
+-------+
| ename |
+-------+
| John  |
+-------+
1 row in set (0.01 sec)

mysql> select ename from empp
    -> where dept in (select dept from empp where ename='bob');
+-------+
| ename |
+-------+
| Alice |
| Bob   |
| bob   |
+-------+
3 rows in set (0.01 sec)

mysql> select ename from empp
    -> where salary in(select salary from empp where dept='it');
+-------+
| ename |
+-------+
| Alice |
| Bob   |
+-------+
2 rows in set (0.01 sec)

mysql> select ename from empp
    -> where salary>any(select salary from empp where dept='hr');
+-------+
| ename |
+-------+
| Alice |
| Bob   |
| David |
| Emma  |
| raj   |
| bob   |
+-------+
6 rows in set (0.01 sec)

mysql> select ename,salary from empp
    -> where salary>all(select salary from empp where dept='hr');
+-------+----------+
| ename | salary   |
+-------+----------+
| Bob   | 20000.00 |
| David | 35000.00 |
| Emma  | 25000.00 |
| bob   | 30000.00 |
+-------+----------+
4 rows in set (0.00 sec)

mysql> select ename,salary from empp
    -> where salary=(select max(salary) from empp
    -> where salary<(select max(salary) from empp));
+-------+----------+
| ename | salary   |
+-------+----------+
| bob   | 30000.00 |
+-------+----------+
1 row in set (0.01 sec)

mysql> select ename,salary,dept
    -> from empp
    -> where dept in(select dept from empp where dept in
    -> (select dept from empp where salary>30000));
+-------+----------+---------+
| ename | salary   | dept    |
+-------+----------+---------+
| David | 35000.00 | Finance |
| Emma  | 25000.00 | Finance |
+-------+----------+---------+
2 rows in set (0.02 sec)