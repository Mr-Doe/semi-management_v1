CREATE TABLE class (
class int not null,
e_name  varchar(40) not null,
k_name  varchar(40) not null,
primary key(class)
) default charset=utf8mb4 collate=utf8mb4_general_ci;

CREATE TABLE vendor (
vendor int not null,
vendor_name varchar(40) not null,
class int not null,
primary key(vendor)
) default charset=utf8mb4 collate=utf8mb4_general_ci;

CREATE TABLE grade (
grade int not null,
grade_name  varchar(40) not null,
primary key(grade)
) default charset=utf8mb4 collate=utf8mb4_general_ci;

CREATE TABLE account (
uid int not null auto_increment,
account varchar(40) not null,
pwd varchar(40) not null,
email varchar(40),
name varchar(40),
grade int(3) not null,
primary key(uid)
) default charset=utf8mb4 collate=utf8mb4_general_ci;

CREATE TABLE laptop (
lid int not null auto_increment,
serial varchar(40) not null,
class int not null,
vendor int not null,
model varchar(40),
naming varchar(40) not null,
reg_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
availd varchar(2) default "Y",
writer varchar(40) not null,
pid int not null,
mod_at datetime,
reason varchar(200),
primary key(lid)
) default charset=utf8mb4 collate=utf8mb4_general_ci;

CREATE TABLE server (
sid int not null auto_increment,
serial varchar(40) not null,
class int not null,
vendor int not null,
model varchar(40),
naming varchar(40) not null,
reg_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
availd varchar(2) default "Y",
writer varchar(40) not null,
pid int not null,
mod_at datetime,
reason varchar(200),
primary key(sid)
) default charset=utf8mb4 collate=utf8mb4_general_ci;

CREATE TABLE partner (
pid int not null auto_increment,
pnr_name varchar(40) not null,
addr varchar(100) not null,
pnr_tel varchar(16) not null,
c_mgr varchar(40),
c_tel int(12),
sales_mgr int,
reg_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
writer varchar(40) not null,
primary key(pid)
) default charset=utf8mb4 collate=utf8mb4_general_ci;

INSERT INTO class (class, e_name, k_name) VALUES (100, "LAPTOP", "노트북");
INSERT INTO class (class, e_name, k_name) VALUES (200, "SERVER", "서버");

INSERT INTO vendor (vendor, vendor_name, class) VALUES (110, "APPLE", 100);
INSERT INTO vendor (vendor, vendor_name, class) VALUES (120, "SAMSUNG", 100);
INSERT INTO vendor (vendor, vendor_name, class) VALUES (130, "LG", 100);
INSERT INTO vendor (vendor, vendor_name, class) VALUES (210, "HP", 200);
INSERT INTO vendor (vendor, vendor_name, class) VALUES (220, "IBM", 200);

INSERT INTO grade (grade, grade_name) VALUES (10, "관리자");
INSERT INTO grade (grade, grade_name) VALUES (20, "엔지니어");
INSERT INTO grade (grade, grade_name) VALUES (30, "영업");

INSERT INTO account (account, pwd, email, name, grade) VALUES ("admin", "admin", "admin@test_tech.com", "Operator Kim", 10);
INSERT INTO account (account, pwd, email, name, grade) VALUES ("eng", "eng", "eng@test_tech.com", "Engineer Lee", 20);
INSERT INTO account (account, pwd, email, name, grade) VALUES ("sale", "sale", "sale@test_tech.com", "Sales Park", 30);

INSERT INTO partner (pid, pnr_name, addr, pnr_tel, c_mgr, c_tel, writer)
VALUES (1, "test tech", "창고", "02-123-4567", "Engineer Lee", "010-1234-5678","Operator Kim");

INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("APPLE-2022-LAPTOP-0001", 100, 110, "M1", "Mac Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("APPLE-2022-LAPTOP-0002", 100, 110, "M1", "Mac Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("APPLE-2022-LAPTOP-0003", 100, 110, "M1", "Mac Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("APPLE-2022-LAPTOP-0004", 100, 110, "M1", "Mac Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("APPLE-2022-LAPTOP-0005", 100, 110, "M1", "Mac Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("APPLE-2022-LAPTOP-0006", 100, 110, "M1", "Mac Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("APPLE-2022-LAPTOP-0007", 100, 110, "M1", "Mac Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("APPLE-2022-LAPTOP-0008", 100, 110, "M1", "Mac Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("APPLE-2022-LAPTOP-0009", 100, 110, "M1", "Mac Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("APPLE-2022-LAPTOP-0010", 100, 110, "M1", "Mac Book", "Operator Kim", 1);

INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("SAMSUNG-2022-LAPTOP-0001", 100, 120, "GALAXY", "Galaxy Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("SAMSUNG-2022-LAPTOP-0002", 100, 120, "GALAXY", "Galaxy Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("SAMSUNG-2022-LAPTOP-0003", 100, 120, "GALAXY", "Galaxy Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("SAMSUNG-2022-LAPTOP-0004", 100, 120, "GALAXY", "Galaxy Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("SAMSUNG-2022-LAPTOP-0005", 100, 120, "GALAXY", "Galaxy Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("SAMSUNG-2022-LAPTOP-0006", 100, 120, "GALAXY", "Galaxy Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("SAMSUNG-2022-LAPTOP-0007", 100, 120, "GALAXY", "Galaxy Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("SAMSUNG-2022-LAPTOP-0008", 100, 120, "GALAXY", "Galaxy Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("SAMSUNG-2022-LAPTOP-0009", 100, 120, "GALAXY", "Galaxy Book", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("SAMSUNG-2022-LAPTOP-0010", 100, 120, "GALAXY", "Galaxy Book", "Operator Kim", 1);

INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("LG-2022-LAPTOP-0001", 100, 120, "GRAM", "15 Gram", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("LG-2022-LAPTOP-0002", 100, 120, "GRAM", "15 Gram", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("LG-2022-LAPTOP-0003", 100, 120, "GRAM", "15 Gram", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("LG-2022-LAPTOP-0004", 100, 120, "GRAM", "15 Gram", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("LG-2022-LAPTOP-0005", 100, 120, "GRAM", "15 Gram", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("LG-2022-LAPTOP-0006", 100, 120, "GRAM", "15 Gram", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("LG-2022-LAPTOP-0007", 100, 120, "GRAM", "15 Gram", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("LG-2022-LAPTOP-0008", 100, 120, "GRAM", "15 Gram", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("LG-2022-LAPTOP-0009", 100, 120, "GRAM", "15 Gram", "Operator Kim", 1);
INSERT INTO laptop (serial, class, vendor, model, naming, writer, pid)
VALUES ("LG-2022-LAPTOP-0010", 100, 120, "GRAM", "15 Gram", "Operator Kim", 1);

INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("HP-2022-LAPTOP-0001", 200, 210, "HPE ProLiant DL380 Gen10", "Gen10", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("HP-2022-LAPTOP-0002", 200, 210, "HPE ProLiant DL380 Gen10", "Gen10", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("HP-2022-LAPTOP-0003", 200, 210, "HPE ProLiant DL380 Gen10", "Gen10", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("HP-2022-LAPTOP-0004", 200, 210, "HPE ProLiant DL380 Gen10", "Gen10", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("HP-2022-LAPTOP-0005", 200, 210, "HPE ProLiant DL380 Gen10", "Gen10", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("HP-2022-LAPTOP-0006", 200, 210, "HPE ProLiant DL380 Gen10", "Gen10", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("HP-2022-LAPTOP-0007", 200, 210, "HPE ProLiant DL380 Gen10", "Gen10", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("HP-2022-LAPTOP-0008", 200, 210, "HPE ProLiant DL380 Gen10", "Gen10", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("HP-2022-LAPTOP-0009", 200, 210, "HPE ProLiant DL380 Gen10", "Gen10", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("HP-2022-LAPTOP-0010", 200, 210, "HPE ProLiant DL380 Gen10", "Gen10", "Operator Kim", 1);

INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("IBM-2022-LAPTOP-0001", 200, 220, "IBM Power System E980", "E980", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("IBM-2022-LAPTOP-0002", 200, 220, "IBM Power System E980", "E980", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("IBM-2022-LAPTOP-0003", 200, 220, "IBM Power System E980", "E980", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("IBM-2022-LAPTOP-0004", 200, 220, "IBM Power System E980", "E980", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("IBM-2022-LAPTOP-0005", 200, 220, "IBM Power System E980", "E980", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("IBM-2022-LAPTOP-0006", 200, 220, "IBM Power System E980", "E980", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("IBM-2022-LAPTOP-0007", 200, 220, "IBM Power System E980", "E980", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("IBM-2022-LAPTOP-0008", 200, 220, "IBM Power System E980", "E980", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("IBM-2022-LAPTOP-0009", 200, 220, "IBM Power System E980", "E980", "Operator Kim", 1);
INSERT INTO server (serial, class, vendor, model, naming, writer, pid)
VALUES ("IBM-2022-LAPTOP-0010", 200, 220, "IBM Power System E980", "E980", "Operator Kim", 1);

