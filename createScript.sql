-- Create database statment
-- use statement

-- create new tables
CREATE TABLE Project (
    ID INT PRIMARY KEY NOT NULL,
    Description NVARCHAR(255) NOT NULL
);

CREATE TABLE Employee(
    SSN NVARCHAR(9) PRIMARY KEY NOT NULL,
    Salary DECIMAL(8,2) NOT NULL,                 -- Decimal(num digits, num decimal places) --> 999,999/99
    FirstName NVARCHAR(20) NOT NULL,
    MiddleName NVARCHAR(20),
    LastName NVARCHAR(20) NOT NULL
);

CREATE TABLE EmployeeProject(
    Hours INT NOT NULL,
    ID INT NOT NULL,
    SSN NVARCHAR(9) NOT NULL,
    
    FOREIGN KEY (SSN) REFERENCES Employee (SSN),
    FOREIGN KEY (ID) REFERENCES Project (ID)
);

-- forien key constraints

-- add tuples to database

-- insert Employee Table
INSERT INTO Employee(SSN, Salary, FirstName, LastName) VALUES ('123456789', 5400, 'Sam','Jones');
INSERT INTO Employee(SSN, Salary, FirstName, LastName) VALUES ('564838893', 50, 'Tim','Tar');
INSERT INTO Employee(SSN, Salary, FirstName, LastName) VALUES ('464684355', 9990.90, 'Mark','Mason');
INSERT INTO Employee(SSN, Salary, FirstName, LastName) VALUES ('156151566', 500, 'Bob','Boberson');

--insert Project Table
INSERT INTO Project(ID, Description) VALUES (1, 'A description');

-- insert Employee Project
INSERT INTO EmployeeProject(SSN, ID, Hours) VALUES ('123456789', 1, 42);

