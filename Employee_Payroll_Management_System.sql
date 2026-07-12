/*CREATE database PayrollDB;
SHOW databases;
*/
USE PayrollDB;
/*CREATE TABLE Employees
(
EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
EmployeeCode CHAR(6) NOT NULL UNIQUE,
FullName VARCHAR(100) NOT NULL,
Gender ENUM("Male","Female","Other") NOT NULL,
Department ENUM("Sales", "Development", "Research", "Logistics", "Marketing", "Purchase","Support" )
NOT NULL,
City VARCHAR(40) NOT NULL DEFAULT "Mumbai",
Salary DECIMAL(10,2) NOT NULL,
HRA DECIMAL(10,2) NOT NULL,
DA DECIMAL(10,2) NOT NULL,
Bonus FLOAT DEFAULT 0,
TaxRate DECIMAL(5,2) DEFAULT 10.00,
Bio TEXT,
DateOfBirth DATE NOT NULL,
JoiningDate DATE NOT NULL,
LoginTime TIME,
Skills SET("Excel", "SQL", "Power BI", "Python", "Tableau", "R"),
IsActive BOOLEAN DEFAULT TRUE,
CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO Employees 
(EmployeeCode, FullName, Gender, Department, City, Salary, HRA, DA, Bonus, TaxRate, Bio, DateOfBirth, JoiningDate, LoginTime, Skills, IsActive)
VALUE
("EMP001", "Aarav Sharma", "Male", "Development", "Mumbai", 85000.00, 17000.00, 8500.00, 5000, 12.50, "Senior Backend Developer specializing in Python.", "1990-05-15", "2018-03-10", "09:15:00", "SQL,Python", TRUE);

select * from employees;*/
/*
INSERT INTO Employees 
(EmployeeCode, FullName, Gender, Department, City, Salary, HRA, DA, Bonus, TaxRate, Bio, DateOfBirth, JoiningDate, LoginTime, Skills, IsActive)
VALUES
("EMP002", "Ananya Iyer", "Female", "Research", "Bengaluru", 95000.00, 19000.00, 9500.00, 6000, 15.00, "Data Scientist with a passion for R and statistical modeling.", "1993-08-22", "2020-11-01", "10:00:00", "SQL,Python,R", TRUE),
("EMP003", "Vihaan Patel", "Male", "Sales", "Ahmedabad", 60000.00, 12000.00, 6000.00, 12000, 10.00, "Result-driven sales executive.", "1988-12-05", "2015-06-15", "09:00:00", "Excel", TRUE),
("EMP004", "Diya Naik", "Female", "Marketing", "Mumbai", 65000.00, 13000.00, 6500.00, 4000, 10.00, "Digital marketing specialist.", "1995-03-14", "2021-02-18", "09:30:00", "Excel,Power BI", TRUE),
("EMP005", "Arjun Verma", "Male", "Logistics", "Delhi", 55000.00, 11000.00, 5500.00, 2500, 10.00, "Supply chain coordinator.", "1991-07-19", "2019-08-24", "08:45:00", "Excel", TRUE),
("EMP006", "Ishaan Malhotra", "Male", "Development", "Pune", 78000.00, 15600.00, 7800.00, 4500, 12.50, "Full stack developer proficient in SQL databases.", "1994-01-30", "2021-07-12", "09:15:00", "SQL,Python", TRUE),
("EMP007", "Kavya Reddy", "Female", "Support", "Hyderabad", 48000.00, 9600.00, 4800.00, 1500, 5.00, "Customer support lead.", "1996-10-10", "2022-05-05", "14:00:00", "Excel", TRUE),
("EMP008", "Sai Kumar", "Male", "Purchase", "Chennai", 58000.00, 11600.00, 5800.00, 3000, 10.00, "Procurement specialist.", "1989-04-25", "2017-10-14", "09:00:00", "Excel,Tableau", TRUE),
("EMP009", "Zoya Khan", "Female", "Research", "Mumbai", 110000.00, 22000.00, 11000.00, 8000, 20.00, "AI researcher and analytics expert.", "1992-11-12", "2019-01-20", "10:30:00", "SQL,Python,Tableau,R", TRUE),
("EMP010", "Rohan Das", "Male", "Sales", "Kolkata", 62000.00, 12400.00, 6200.00, 15000, 10.00, "Corporate sales manager.", "1987-09-08", "2014-12-01", "09:10:00", "Excel,Power BI", TRUE),
("EMP011", "Anika Joshi", "Female", "Development", "Mumbai", 82000.00, 16400.00, 8200.00, 5000, 12.50, "Frontend developer exploring data visualization.", "1995-06-26", "2020-04-15", "09:20:00", "Excel,Tableau", TRUE),
("EMP012", "Aditya Mishra", "Male", "Marketing", "Noida", 67000.00, 13400.00, 6700.00, 3500, 10.00, "Brand strategist.", "1993-02-17", "2021-09-09", "09:45:00", "Power BI,Tableau", TRUE),
("EMP013", "Meera Nair", "Female", "Support", "Kochi", 45000.00, 9000.00, 4500.00, 2000, 5.00, "Technical support engineer.", "1997-05-29", "2023-01-10", "18:00:00", "SQL", TRUE),
("EMP014", "Kabir Choudhury", "Male", "Logistics", "Mumbai", 53000.00, 10600.00, 5300.00, 2000, 10.00, "Inventory manager.", "1990-12-14", "2018-06-22", "08:30:00", "Excel", FALSE),
("EMP015", "Riya Sen", "Female", "Purchase", "Kolkata", 59000.00, 11800.00, 5900.00, 4000, 10.00, "Vendor relations manager.", "1992-08-03", "2019-11-15", "09:15:00", "Excel,SQL", TRUE),
("EMP016", "Vivaan Saxena", "Male", "Development", "Bengaluru", 105000.00, 21000.00, 10500.00, 7000, 15.00, "Cloud architect and Python enthusiast.", "1986-03-21", "2016-05-19", "09:00:00", "SQL,Python", TRUE),
("EMP017", "Aadhya Gupta", "Female", "Sales", "Delhi", 61000.00, 12200.00, 6100.00, 11000, 10.00, "Retail sales lead.", "1994-07-07", "2021-10-01", "09:30:00", "Excel", TRUE),
("EMP018", "Yash Wardhan", "Male", "Research", "Pune", 88000.00, 17600.00, 8800.00, 5000, 12.50, "Quantitative analyst.", "1991-10-11", "2020-02-14", "10:00:00", "SQL,Python,R", TRUE),
("EMP019", "Anjali Desai", "Female", "Marketing", "Mumbai", 72000.00, 14400.00, 7200.00, 4500, 12.50, "SEO and SEM expert.", "1993-04-02", "2019-07-07", "09:15:00", "Excel,Power BI", TRUE),
("EMP020", "Darsh Shah", "Male", "Support", "Ahmedabad", 46000.00, 9200.00, 4600.00, 1500, 5.00, "Helpdesk technician.", "1996-12-25", "2022-08-18", "09:00:00", "Excel", TRUE),
("EMP021", "Isha Bose", "Female", "Development", "Mumbai", 79000.00, 15800.00, 7900.00, 4000, 12.50, "Software engineer focusing on data pipelines.", "1995-01-15", "2022-03-01", "09:30:00", "SQL,Power BI,Python", TRUE),
("EMP022", "Rudra Pratap", "Male", "Logistics", "Jaipur", 51000.00, 10200.00, 5100.00, 3000, 10.00, "Fleet supervisor.", "1989-09-18", "2017-04-23", "07:00:00", "Excel", TRUE),
("EMP023", "Sanya Malhotra", "Female", "Purchase", "Delhi", 64000.00, 12800.00, 6400.00, 3500, 10.00, "Buyer and negotiation specialist.", "1991-02-28", "2020-05-20", "09:00:00", "Excel,Power BI", TRUE),
("EMP024", "Devansh Bhatia", "Male", "Sales", "Mumbai", 63000.00, 12600.00, 6300.00, 14000, 10.00, "B2B sales executive.", "1994-11-05", "2021-11-11", "09:15:00", "Excel,Tableau", TRUE),
("EMP025", "Kiara Advani", "Female", "Research", "Bengaluru", 102000.00, 20400.00, 10200.00, 6500, 15.00, "Machine learning engineer.", "1993-06-12", "2021-01-15", "09:45:00", "SQL,Python,R", FALSE);




SELECT *FROM employees;
/*
SELECT * from employees 
where Gender = "Male";

SELECT FullName FROM employees
where city = "Mumbai";

SELECT * FROM employees;

SELECT * FROM employees
WHERE salary >= 100000;

SELECT FullName, Department, Salary 
FROM Employees
ORDER BY Salary; 


SELECT FullName, Department, Salary 
FROM Employees
ORDER BY Salary DESC;


SELECT * FROM employees;

SELECT EmployeeID,FullName,Salary,HRA,DA,Bonus,TaxRate,
(Salary+HRA+DA+Bonus) AS GrossSalary,
((Salary+HRA+DA+Bonus)*TaxRate/100) AS TaxAmount,
((Salary+HRA+DA+Bonus)-((Salary+HRA+DA+Bonus)*TaxRate/100)) AS NetSalary
FROM Employees;

SELECT * FROM employees;

UPDATE employees 
SET Salary =  100000
WHERE EmployeeCode = "EMP003";

SELECT * FROM employees;

UPDATE Employees
SET Salary=Salary+5000
WHERE Department="Sales";

SELECT * FROM employees;

UPDATE Employees
SET Bonus=Bonus+1000
WHERE Department="Support";

SELECT * FROM employees;

UPDATE Employees
SET IsActive=1
WHERE EmployeeID=10;

SELECT * FROM Employees;

SELECT * FROM Employees
WHERE Salary BETWEEN 70000 AND 80000;

SELECT * FROM Employees
WHERE FullName LIKE 'A%';

SELECT * FROM Employees
WHERE City IN ('Mumbai','Pune');

SELECT EmployeeID,FullName,
(Salary+HRA+DA+Bonus)-((Salary+HRA+DA+Bonus)*TaxRate/100) AS NetSalary
FROM Employees
ORDER BY NetSalary DESC
LIMIT 5;

SELECT * FROM employees;

ALTER TABLE Employees
ADD COLUMN Country VARCHAR(20) DEFAULT "India";

SELECT * FROM employees;

ALTER TABLE Employees
ADD COLUMN Experience INT (2) DEFAULT 1
AFTER Bio;

ALTER TABLE Employees
ADD COLUMN Gross_Salary DECIMAL(10,2)
GENERATED ALWAYS AS (Salary + HRA + DA + Bonus) STORED
AFTER TaxRate;

SELECT * FROM employees;

ALTER TABLE Employees
ADD COLUMN Net_Salary DECIMAL(10,2)
GENERATED ALWAYS AS(Gross_Salary-Gross_Salary*TaxRate/100) STORED
AFTER Gross_Salary;
SELECT * FROM employees;


ALTER TABLE Employees
RENAME COLUMN Net_Salary TO CTC;

ALTER TABLE Employees
ADD COLUMN Promotion BOOLEAN
GENERATED ALWAYS AS (
IF (CTC*12>=800000, TRUE, FALSE)
) STORED
AFTER Experience;	
*/
