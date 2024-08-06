mysql> use office;
Database changed
mysql> create table student(name varchar(50),id int(10),branch varchar(11));
Query OK, 0 rows affected, 1 warning (0.10 sec)

mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| name   | varchar(50) | YES  |     | NULL    |       |
| id     | int         | YES  |     | NULL    |       |
| branch | varchar(11) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql> insert into student values('karan', 45,'cs'),('ravi',567,'it'),('kiran',78,'ml');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select* from student;
+-------+------+--------+
| name  | id   | branch |
+-------+------+--------+
| karan |   45 | cs     |
| ravi  |  567 | it     |
| kiran |   78 | ml     |
+-------+------+--------+
3 rows in set (0.00 sec)

mysql> select* from student where id=45;
+-------+------+--------+
| name  | id   | branch |
+-------+------+--------+
| karan |   45 | cs     |
+-------+------+--------+
1 row in set (0.00 sec)

mysql> update student set branch='cs' where id=45;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> select * from student;
+-------+------+--------+
| name  | id   | branch |
+-------+------+--------+
| karan |   45 | cs     |
| ravi  |  567 | it     |
| kiran |   78 | ml     |
+-------+------+--------+
3 rows in set (0.00 sec)

mysql> update student set branch='it' where id=45;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+-------+------+--------+
| name  | id   | branch |
+-------+------+--------+
| karan |   45 | it     |
| ravi  |  567 | it     |
| kiran |   78 | ml     |
+-------+------+--------+
3 rows in set (0.00 sec)

mysql> alter table student add phonenumber int(11);
Query OK, 0 rows affected, 1 warning (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> select * from student;
+-------+------+--------+-------------+
| name  | id   | branch | phonenumber |
+-------+------+--------+-------------+
| karan |   45 | it     |        NULL |
| ravi  |  567 | it     |        NULL |
| kiran |   78 | ml     |        NULL |
+-------+------+--------+-------------+
3 rows in set (0.00 sec)

mysql> update student set phonenumber=123 where id=45;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from student;
+-------+------+--------+-------------+
| name  | id   | branch | phonenumber |
+-------+------+--------+-------------+
| karan |   45 | it     |         123 |
| ravi  |  567 | it     |        NULL |
| kiran |   78 | ml     |        NULL |
+-------+------+--------+-------------+
3 rows in set (0.00 sec)

mysql> delete from student where id=45;
Query OK, 1 row affected (0.01 sec)

mysql> select*from student;
+-------+------+--------+-------------+
| name  | id   | branch | phonenumber |
+-------+------+--------+-------------+
| ravi  |  567 | it     |        NULL |
| kiran |   78 | ml     |        NULL |
+-------+------+--------+-------------+
2 rows in set (0.00 sec)
