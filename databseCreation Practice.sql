
--1
create table HeadOffice(name nchar(20) primary key,City nchar(20),Country nchar(20),Address nchar(20),phoneNum int, directorName nchar(20))
create table Project(Code int primary key,Totle nchar(20),startTime datetime,endTime datetime,budget int,Nameofperson nchar(20))
create table office_project(OfficeName nchar(20) foreign key references HeadOffice(name),ProjectCode int foreign key references Project(Code),roles nchar(20))
create table Project_Operation(ProjectCode int foreign key references Project(Code),OperationDescrption nchar(50),AffectCity nchar(20))


--2
create table lender(ID int primary key,Name nchar(20) not null,amount int not null)
create table borrower(ID int primary key, company nchar(20) not null,riskvalue int not null)
create table loanrecord(LoanCode int primary key, totalamount int not null, deadline datetime, interestrate decimal, purpose nchar(20), 
				lenderID int foreign key references lender(ID),borrowerID int foreign key references borrower(ID))

--3
create table course(name nchar(20) primary key,description nchar(20) unique,photo nchar(500),finalPrice int)
create table categories(name nchar(20) foreign key references course(name),EmployeeName nchar(20))
create table ingredient(ingredientID int primary key, unitsofmeasurements int, currentamount int)
create table recipes(recipeID int primary key, IngredientID int foreign key references ingredient(IngredientID), requiredamount int)
