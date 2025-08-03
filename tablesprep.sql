use Prep
-- Table for Employee table
create table Employee(
Fname nvarchar(50),
Minit char(1),
Lname nvarchar(50),
Ssn nvarchar(20) primary key,
Bdate Date,
Address nvarchar(100),
Sex nvarchar(1),
Salary Decimal(10,2),
Super_ssn nvarchar(20),
Dno int
);
-- Table for Department
create table Department(
Dname nvarchar(50),
Dnumber int primary key,
Mgr_ssn nvarchar(20),
Mgr_start_date date,
foreign key (Mgr_ssn) references Employee(Ssn)
);
-- Table for Department_Locations
create table Department_Locations(
Dnumber int,
Dlocation nvarchar(50),
primary key(Dnumber,Dlocation),
foreign key (Dnumber) references Department(Dnumber)
);
