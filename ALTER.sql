DROP TABLE IF EXISTS employee_03;
CREATE TABLE employee_03(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
age INT NOT NULL,
department VARCHAR(50),
email VARCHAR(100) UNIQUE,
salary INT
)

INSERT INTO employee_03(employee_id,employee_name,age,department,email,salary)
VALUES
(101, 'Arsh Mansuri', 22, 'IT', 'arsh.mansuri@gmail.com', 50000),
(102, 'Rahul Sharma', 25, 'HR', 'rahul.sharma@gmail.com', 45000),
(103, 'Priya Patel', 24, 'Finance', 'priya.patel@gmail.com', 55000),
(104, 'Amit Verma', 28, 'Marketing', 'amit.verma@gmail.com', 48000),
(105, 'Neha Shah', 26, 'IT', 'neha.shah@gmail.com', 60000),
(106, 'Rohan Mehta', 29, 'Sales', 'rohan.mehta@gmail.com', 47000),
(107, 'Sneha Joshi', 23, 'Finance', 'sneha.joshi@gmail.com', 52000),
(108, 'Vikram Singh', 30, 'HR', 'vikram.singh@gmail.com', 65000),
(109, 'Kavya Desai', 27, 'Marketing', 'kavya.desai@gmail.com', 51000),
(110, 'Harsh Patel', 24, 'IT', 'harsh.patel@gmail.com', 58000),
(111, 'Pooja Nair', 26, 'Sales', 'pooja.nair@gmail.com', 49000),
(112, 'Ankit Gupta', 31, 'Finance', 'ankit.gupta@gmail.com', 70000),
(113, 'Meera Iyer', 28, 'HR', 'meera.iyer@gmail.com', 56000),
(114, 'Jay Shah', 25, 'IT', 'jay.shah@gmail.com', 53000),
(115, 'Riya Patel', 23, 'Marketing', 'riya.patel@gmail.com', 46000),
(116, 'Karan Malhotra', 32, 'Sales', 'karan.malhotra@gmail.com', 72000),
(117, 'Nisha Gupta', 27, 'Finance', 'nisha.gupta@gmail.com', 59000),
(118, 'Sahil Jain', 29, 'IT', 'sahil.jain@gmail.com', 68000),
(119, 'Ayesha Khan', 24, 'HR', 'ayesha.khan@gmail.com', 50000),
(120, 'Manish Kumar', 30, 'Marketing', 'manish.kumar@gmail.com', 62000);

-- the alter command is a DDL(Data Definition Language) command used to modify the structure of an existing table without deleting the table or its data

--add a new colunm
ALTER TABLE employee_03
ADD times TIME;

--DROP A COLUMN 
ALTER TABLE employee_03
DROP COLUMN age;

DROP TABLE IF EXISTS employee_003;
--rename table 
ALTER TABLE employee_03
RENAME TO employee_003

--change a column data type 
ALTER TABLE employee_003
ALTER COLUMN salary TYPE DECIMAL(10,2);

--set a NOT NULL constraint
ALTER TABLE employee_003
ALTER COLUMN email SET NOT NULL;

--add a default value 
ALTER TABLE employee_003
ALTER COLUMN department
SET DEFAULT 'IT';

--remove  default value 
ALTER TABLE employee_003
ALTER COLUMN department
DROP DEFAULT;

--ADDING CHECK CONSTRAINT TO SALARY COLUMN 
ALTER TABLE employee_003
ADD CONSTRAINT salary CHECK(salary>=50000);



SELECT*FROM employee_003;