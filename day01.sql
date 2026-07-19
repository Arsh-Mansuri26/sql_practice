CREATE TABLE student2(
           rool_number INT PRIMARY KEY,
           student_name VARCHAR(50) NOT NULL,
           concet_number NUMERIC(10) ,
           student_address VARCHAR,
          mother_name VARCHAR(20),
          father_name VARCHAR(20),
		  time_of_school VARCHAR(10)
);

INSERT INTO student2
(rool_number, student_name, concet_number, student_address, mother_name, father_name, time_of_school)
VALUES
(101, 'Arsh Mansuri', 9876543210, 'Ahmedabad', 'Shabana Mansuri', 'yunusbhai Mansuri', 'Morning'),
(102, 'Rahul Patel', 9123456780, 'Surat', 'Neeta Patel', 'Rakesh Patel', 'Morning'),
(103, 'Priya Shah', 9988776655, 'Vadodara', 'Kiran Shah', 'Mahesh Shah', 'Afternoon'),
(104, 'Amit Kumar', 9012345678, 'Rajkot', 'Sunita Kumar', 'Suresh Kumar', 'Evening'),
(105, 'Neha Joshi', 9090909090, 'Gandhinagar', 'Pooja Joshi', 'Rajesh Joshi', 'Morning'),
(106, 'Rohan Mehta', 9871234567, 'Bhavnagar', 'Anita Mehta', 'Deepak Mehta', 'Afternoon'),
(107, 'Sneha Verma', 8765432109, 'Junagadh', 'Rekha Verma', 'Sanjay Verma', 'Morning'),
(108, 'Vivek Singh', 7894561230, 'Anand', 'Meena Singh', 'Ramesh Singh', 'Evening'),
(109, 'Pooja Desai', 9988123456, 'Mehsana', 'Kalpana Desai', 'Nilesh Desai', 'Afternoon'),
(110, 'Karan Sharma', 9876501234, 'Palanpur', 'Anjali Sharma', 'Mukesh Sharma', 'Morning');
DELETE FROM student2
WHERE time_of_school='Evening';

ALTER TABLE student2
DROP COLUMN student_address;


SELECT*FROM student2;