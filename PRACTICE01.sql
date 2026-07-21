DROP TABLE IF EXISTS employee;
--1.Create an Employee Table
CREATE TABLE employee(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
age INT,
city VARCHAR(50),
joining_date DATE
);

--2. Insert Data

INSERT INTO employee(emp_id,emp_name,department,salary,age,city,joining_date)
VALUES 
(101, 'Arjun Patel', 'HR', 35000.00, 24, 'Ahmedabad', '2022-01-15'),
(102, 'Priya Sharma', 'IT', 62000.00, 27, 'Surat', '2021-05-20'),
(103, 'Rahul Verma', 'Finance', 55000.00, 30, 'Vadodara', '2020-08-10'),
(104, 'Sneha Reddy', 'Marketing', 48000.00, 26, 'Rajkot', '2023-02-14'),
(105, 'Karan Mehta', 'Sales', 45000.00, 29, 'Mumbai', '2022-11-01'),
(106, 'Neha Singh', 'IT', 70000.00, 31, 'Pune', '2019-06-25'),
(107, 'Amit Kumar', 'HR', 39000.00, 25, 'Delhi', '2024-01-10'),
(108, 'Riya Shah', 'Finance', 58000.00, 28, 'Ahmedabad', '2021-09-18'),
(109, 'Vikram Joshi', 'IT', 80000.00, 35, 'Bengaluru', '2018-04-30'),
(110, 'Pooja Nair', 'Marketing', 51000.00, 27, 'Kochi', '2022-07-12'),
(111, 'Harsh Patel', 'Sales', 47000.00, 26, 'Surat', '2023-03-09'),
(112, 'Anjali Gupta', 'Finance', 60000.00, 32, 'Jaipur', '2020-10-05'),
(113, 'Rohit Yadav', 'IT', 75000.00, 29, 'Lucknow', '2019-12-11'),
(114, 'Meera Iyer', 'HR', 42000.00, 28, 'Chennai', '2021-06-22'),
(115, 'Sanjay Rao', 'Sales', 46000.00, 33, 'Hyderabad', '2020-01-19'),
(116, 'Komal Desai', 'Marketing', 52000.00, 24, 'Ahmedabad', '2024-04-01'),
(117, 'Nitin Agarwal', 'Finance', 61000.00, 34, 'Indore', '2018-09-15'),
(118, 'Simran Kaur', 'IT', 85000.00, 30, 'Chandigarh', '2019-11-08'),
(119, 'Deepak Mishra', 'HR', 40000.00, 27, 'Bhopal', '2022-12-20'),
(120, 'Aisha Khan', 'Marketing', 54000.00, 25, 'Nagpur', '2023-05-16'),
(121, 'Manish Jain', 'Sales', 49000.00, 31, 'Ahmedabad', '2021-03-28'),
(122, 'Divya Kapoor', 'Finance', 63000.00, 29, 'Delhi', '2020-07-14'),
(123, 'Saurabh Das', 'IT', 90000.00, 36, 'Kolkata', '2017-08-21'),
(124, 'Ishita Roy', 'HR', 43000.00, 26, 'Kolkata', '2023-09-12'),
(125, 'Yash Thakur', 'Sales', 50000.00, 28, 'Pune', '2022-02-03'),
(126, 'Tanvi Joshi', 'Marketing', 56000.00, 27, 'Jaipur', '2021-11-17'),
(127, 'Mohit Saxena', 'Finance', 67000.00, 33, 'Noida', '2019-05-09'),
(128, 'Kavya Menon', 'IT', 95000.00, 32, 'Chennai', '2018-01-29'),
(129, 'Rakesh Solanki', 'HR', 41000.00, 30, 'Rajkot', '2020-06-13'),
(130, 'Bhavna Modi', 'Sales', 53000.00, 29, 'Vadodara', '2024-02-27');

--1.DISPLAY ALL RECORDS 
SELECT * FROM employee;

--2.show only employee names
SELECT emp_name FROM employee;

--3.Display IT employees.
SELECT * FROM employee WHERE department='IT';

--4.Employees whose salary is greater than 70000.
SELECT * FROM employee WHERE salary>=70000; 

--5.Employees between age 25 and 30.
SELECT * FROM employee WHERE age BETWEEN 25 AND 30;

--6.Employees from Ahmedabad.
SELECT * FROM employee WHERE city='Ahmedabad';

--7.Salary between 40000 and 60000.
SELECT * FROM employee WHERE salary BETWEEN 40000 AND 60000;

--8.Employees not from Ahmedabad.
SELECT * FROM employee WHERE city <> 'Ahmedabad';

--9.Show employee names in ascending order.
SELECT *FROM employee ORDER BY emp_name ASC;

--10.Highest salary.
SELECT MAX(salary) FROM employee;

--11.Second Highest Salary
SELECT MAX(salary) FROM employee WHERE salary < (SELECT MAX(salary) FROM employee);

--12.Lowest Salary
SELECT MIN(salary) FROM employee;

--13.Average Salary
SELECT AVG(salary) FROM employee;

--14.Total Salary
SELECT SUM(salary) FROM employee;

--15.Count Employees
SELECT COUNT(*) FROM employee;

--16 Count Employees Department Wise
SELECT department,
COUNT(*) AS total
FROM employee
GROUP BY department;

--SELECT department → Displays the department name.
--COUNT(*) → Counts the number of employees in each department.
--AS total → Renames the count column to total.
--GROUP BY department → Groups all rows by department before counting.

--17.Highest Salary Department Wise
SELECT department,
MAX(salary) 
FROM employee
GROUP BY department;

--18.Departments Having More Than One Employee
SELECT department,
COUNT(*) 
FROM employee
GROUP BY department
HAVING COUNT(*)>1;

-- GROUP BY department → Groups employees by department.
-- COUNT(*) → Counts the number of employees in each department.
-- HAVING COUNT(*) > 1 → Returns only departments that have more than 1 employee

--19.Employees Whose Name Starts With 'A'
SELECT * FROM employee
WHERE emp_name LIKE'A%';

