USE [myCompany]
GO

IF EXISTS(SELECT 1 FROM [dbo].[Employee])
    BEGIN
		Delete from [dbo].[JobTitle]
		Delete from [dbo].[Department]
		Delete from  [dbo].[Manager]
		Delete from  [dbo].[Country]
		Delete from [dbo].[State]
		Delete from [dbo].[Employee]
	

		DBCC CHECKIDENT ('[JobTitle]', RESEED, 0);
		DBCC CHECKIDENT ('[Department]', RESEED, 0);
		DBCC CHECKIDENT ('[State]', RESEED, 0);
		DBCC CHECKIDENT ('[Country]', RESEED, 0);
		DBCC CHECKIDENT ('[Employee]', RESEED, 0);
		DBCC CHECKIDENT ('[Manager]', RESEED, 0);

	END
GO
INSERT INTO [dbo].[JobTitle] ([JobTitle]) VALUES
('TeamLead') ,('Architect') , ('Developer');
GO
INSERT INTO [dbo].[Department] ([Department]) VALUES
('IT') ;
GO
INSERT INTO [dbo].[Country] ([Country]) VALUES
('INDIA'),('USA'),('UK')
GO
INSERT INTO [dbo].[State] ([State]) VALUES
('Mumbai'),('New York'),('London')

GO
INSERT INTO [dbo].[Manager] (ManagerFirstName,ManagerLastName) VALUES
('Keith','Kobel'),('Vadim','Selster')

GO
INSERT INTO [dbo].[Employee] (FirstName,LastName,[Address],City,[State],Country,JobTitleId,DepartmentId,ManagerId) VALUES
('John','Smith','5th Street','New York','New York','USA',1,1,1),('Nancy','Brown','6th Avenue','London','London','UK',1,1,1 ),('Amit','Jain','Broadway Street','Andheri','Mumbai','India',1,1,1),
('Marc','Johnson','125th Road','Brooklyn','New York','USA',1,1,1),('Merry','Simon','18th Ave','London','London','UK',1,1,1 ),('Ajit','Patel','Second Street','Thane','Mumbai','India',1,1,1),
('Robert','Gibson','125th Road','Brooklyn','New York','USA',1,1,1),('July','White','18th Ave','London','London','UK',1,1,1),('Akash','Sexena','MG Road','Dadar','Mumbai','India',1,1,1),
('Anish','Patil','Gandhi Road','Juhu','Mumbai','India',1,1,1),
('John','Smith','5th Street','New York','New York','USA',1,1,1),('Nancy','Brown','6th Avenue','London','London','UK',1,1,1),('Amit','Jain','Broadway Street','Andheri','Mumbai','India',1,1,1),
('Marc','Johnson','125th Road','Brooklyn','New York','USA',1,1,1),('Merry','Simon','18th Ave','London','London','UK',1,1,1),('Ajit','Patel','Second Street','Thane','Mumbai','India',1,1,1),
('Robert','Gibson','125th Road','Brooklyn','New York','USA',1,1,1),('July','White','18th Ave','London','London','UK',1,1,1),('Akash','Sexena','MG Road','Dadar','Mumbai','India',1,1,1),
('Anish','Patil','Gandhi Road','Juhu','Mumbai','India',1,1,1),
('John','Smith','5th Street','New York','New York','USA',1,1,1),
('Nancy','Brown','6th Avenue','London','London','UK',1,1,1 ),
('Amit','Jain','Broadway Street','Andheri','Mumbai','India',1,1,1),
('Marc','Johnson','125th Road','Brooklyn','New York','USA',1,1,1),('Merry','Simon','18th Ave','London','London','UK',1,1,1 ),('Ajit','Patel','Second Street','Thane','Mumbai','India',1,1,1),
('Robert','Gibson','125th Road','Brooklyn','New York','USA',1,1,1),('July','White','18th Ave','London','London','UK',1,1,1 ),('Akash','Sexena','MG Road','Dadar','Mumbai','India',1,1,1),('Anish','Patil','Gandhi Road','Juhu','Mumbai','India',1,1,1),
('John','Smith','5th Street','New York','New York','USA',1,1,1),('Nancy','Brown','6th Avenue','London','London','UK',1,1,1),('Amit','Jain','Broadway Street','Andheri','Mumbai','India',1,1,1),
('Marc','Johnson','125th Road','Brooklyn','New York','USA',1,1,1),('Merry','Simon','18th Ave','London','London','UK',1,1,1 ),('Ajit','Patel','Second Street','Thane','Mumbai','India',1,1,1),
('Robert','Gibson','125th Road','Brooklyn','New York','USA',1,1,1),('July','White','18th Ave','London','London','UK',1,1,1 ),('Akash','Sexena','MG Road','Dadar','Mumbai','India',1,1,1),('Anish','Patil','Gandhi Road','Juhu','Mumbai','India',1,1,1),
('John','Smith','5th Street','New York','New York','USA',1,1,1),('Nancy','Brown','6th Avenue','London','London','UK',1,1,1 ),('Amit','Jain','Broadway Street','Andheri','Mumbai','India',1,1,1),
('Marc','Johnson','125th Road','Brooklyn','New York','USA',1,1,1),('Merry','Simon','18th Ave','London','London','UK',1,1,1 ),('Ajit','Patel','Second Street','Thane','Mumbai','India',1,1,1),
('Robert','Gibson','125th Road','Brooklyn','New York','USA',1,1,1),('July','White','18th Ave','London','London','UK',1,1,1 ),('Akash','Sexena','MG Road','Dadar','Mumbai','India',1,1,1 ),('Anish','Patil','Gandhi Road','Juhu','Mumbai','India',1,1,1),
('John','Smith','5th Street','New York','New York','USA',1,1,1),('Nancy','Brown','6th Avenue','London','London','UK',1,1,1 ),('Amit','Jain','Broadway Street','Andheri','Mumbai','India',1,1,1),
('Marc','Johnson','125th Road','Brooklyn','New York','USA',1,1,1),('Merry','Simon','18th Ave','London','London','UK',1,1,1 ),('Ajit','Patel','Second Street','Thane','Mumbai','India',1,1,1),
('Robert','Gibson','125th Road','Brooklyn','New York','USA',1,1,1),('July','White','18th Ave','London','London','UK',1,1,1),('Akash','Sexena','MG Road','Dadar','Mumbai','India',1,1,1 ),('Anish','Patil','Gandhi Road','Juhu','Mumbai','India',1,1,1),
('John','Smith','5th Street','New York','New York','USA',1,1,1),('Nancy','Brown','6th Avenue','London','London','UK',1,1,1 ),('Amit','Jain','Broadway Street','Andheri','Mumbai','India',1,1,1),
('Marc','Johnson','125th Road','Brooklyn','New York','USA',1,1,1),('Merry','Simon','18th Ave','London','London','UK',1,1,1 ),('Ajit','Patel','Second Street','Thane','Mumbai','India',1,1,1),
('Robert','Gibson','125th Road','Brooklyn','New York','USA',1,1,1),('July','White','18th Ave','London','London','UK',1,1,1),('Akash','Sexena','MG Road','Dadar','Mumbai','India',1,1,1 ),('Anish','Patil','Gandhi Road','Juhu','Mumbai','India',1,1,1),
('John','Smith','5th Street','New York','New York','USA',1,1,1),('Nancy','Brown','6th Avenue','London','London','UK',1,1,1 ),('Amit','Jain','Broadway Street','Andheri','Mumbai','India',1,1,1),
('Marc','Johnson','125th Road','Brooklyn','New York','USA',1,1,1),('Merry','Simon','18th Ave','London','London','UK',1,1,1 ),('Ajit','Patel','Second Street','Thane','Mumbai','India',1,1,1),
('Robert','Gibson','125th Road','Brooklyn','New York','USA',1,1,1),('July','White','18th Ave','London','London','UK',1,1,1),('Akash','Sexena','MG Road','Dadar','Mumbai','India',1,1,1 ),('Anish','Patil','Gandhi Road','Juhu','Mumbai','India',1,1,1),
('John','Smith','5th Street','New York','New York','USA',1,1,1),('Nancy','Brown','6th Avenue','London','London','UK',1,1,1 ),('Amit','Jain','Broadway Street','Andheri','Mumbai','India',1,1,1),
('Marc','Johnson','125th Road','Brooklyn','New York','USA',1,1,1),('Merry','Simon','18th Ave','London','London','UK',1,1,1 ),('Ajit','Patel','Second Street','Thane','Mumbai','India',1,1,1),
('Robert','Gibson','125th Road','Brooklyn','New York','USA',1,1,1),('July','White','18th Ave','London','London','UK',1,1,1),('Akash','Sexena','MG Road','Dadar','Mumbai','India',1,1,1 ),('Anish','Patil','Gandhi Road','Juhu','Mumbai','India',1,1,1),
('John','Smith','5th Street','New York','New York','USA',1,1,1),('Nancy','Brown','6th Avenue','London','London','UK',1,1,1 ),('Amit','Jain','Broadway Street','Andheri','Mumbai','India',1,1,1),
('Marc','Johnson','125th Road','Brooklyn','New York','USA',1,1,1),('Merry','Simon','18th Ave','London','London','UK',1,1,1 ),('Ajit','Patel','Second Street','Thane','Mumbai','India',1,1,1),
('Robert','Gibson','125th Road','Brooklyn','New York','USA',1,1,1),('July','White','18th Ave','London','London','UK',1,1,1),('Akash','Sexena','MG Road','Dadar','Mumbai','India',1,1,1 ),('Anish','Patil','Gandhi Road','Juhu','Mumbai','India',1,1,1)

GO
