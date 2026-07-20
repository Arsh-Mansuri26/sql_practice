--drope the tabel if it alredy exists
DROP TABLE IF EXISTS user2;

--create the user table 
CREATE TABLE IF NOT EXISTS user2(
user_id SERIAL PRIMARY KEY,
username VARCHAR(40) NOT NULL,
email VARCHAR(60) NOT NULL,
age INT,
city VARCHAR(20)

);

--insert user into the user table 

INSERT INTO user2(username,email,age,city)
VALUES 
('Arsh Mansuri', 'arsh@gmail.com', 21, 'Ahmedabad'),
('Rahul Patel', 'rahul@com.com', 25, 'Surat'),
('Priya Shah', 'priya@mic.com', 23, 'Vadodara'),
('Amit Kumar', 'amit@gmail.com', 28, 'Rajkot'),
('Sneha Verma', 'sneha@gmail.com', 22, 'Mumbai'),
('Rohan Mehta', 'rohan@gmail.com', 30, 'Pune'),
('Neha Singh', 'neha@mic.com', 26, 'Delhi'),
('Vikram Joshi', 'vikram@gmail.com', 29, 'Jaipur'),
('Pooja Patel', 'pooja@gmail.com', 24, 'Ahmedabad'),
('Karan Sharma', 'karan@gmail.com', 27, 'Indore'),
('Anjali Desai', 'anjali@gmail.com', 20, 'Surat'),
('Mohit Gupta', 'mohit@gmail.com', 31, 'Noida'),
('Nisha Patel', 'nisha@gmail.com', 22, 'Rajkot'),
('Harsh Trivedi', 'harsh@gmail.com', 24, 'Vadodara'),
('Riya Kapoor', 'riya@gmail.com', 23, 'Chandigarh'),
('Dev Shah', 'dev@gmail.com', 26, 'Ahmedabad'),
('Kajal Yadav', 'kajal@gmail.com', 27, 'Lucknow'),
('Yash Patel', 'yash@gmail.com', 21, 'Surat'),
('Meera Joshi', 'meera@gmail.com', 25, 'Udaipur'),
('Sahil Khan', 'sahil@gmail.com', 28, 'Bhopal');

--update data in a database
UPDATE user2
SET age=22
WHERE username='Arsh Mansuri';

UPDATE user2
SET city='chennai'
WHERE age>=25;

UPDATE user2
SET age=29,city='kolkata'
WHERE username='Arsh Mansuri'

UPDATE user2
SET age=age+1
WHERE email LIKE '%@gmail.com';

--delete data in a database (row)
DELETE FROM user2
WHERE user_id=14;

--delet a column from a table 
ALTER TABLE user2
DROP COLUMN age;


-- SELECT → Retrieves data from a table.
-- * (asterisk) → Selects all columns.
-- FROM Customers → Specifies the table named Customers.
SELECT * FROM user2;

SELECT * FROM user2 ORDER BY user_id ASC;

SELECT username FROM user2;
SELECT email FROM user2;
SELECT age,city FROM user2