USE [myCompany]
GO

/****** Object:  Table [dbo].[Title]    Script Date: 2/26/2024 2:11:17 PM ******/
SET ANSI_NULLS ON
GO


IF OBJECT_ID(N'dbo.JobTitle',N'U') IS NOT NULL
DROP TABLE [dbo].[Employee]
DROP TABLE [dbo].[JobTitle]
DROP TABLE [dbo].[Department]
DROP TABLE [dbo].[Manager]
DROP TABLE [dbo].[Country]
DROP TABLE [dbo].[State]

GO


SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JobTitle](
	[JobTitleId] [int] IDENTITY(1,1) NOT NULL,
	[JobTitle] varchar (50) NOT NULL,
 CONSTRAINT [PK_JobTitle] PRIMARY KEY CLUSTERED 
(
	[JobTitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Department]    Script Date: 2/26/2024 2:11:17 PM ******/
SET ANSI_NULLS ON
GO


IF OBJECT_ID(N'dbo.Department',N'U') IS NOT NULL
DROP TABLE [dbo].[Department]
GO


SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[Department] varchar(50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 2/26/2024 2:10:57 PM ******/
SET ANSI_NULLS ON
GO

IF OBJECT_ID(N'dbo.State',N'U') IS NOT NULL
DROP TABLE [dbo].[State]
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[State] [varchar](50) NULL
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Country]    Script Date: 2/26/2024 2:14:29 PM ******/
SET ANSI_NULLS ON
GO

IF OBJECT_ID(N'dbo.Country',N'U') IS NOT NULL
DROP TABLE [dbo].[Country]
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Manager]    Script Date: 2/26/2024 2:07:17 PM ******/
SET ANSI_NULLS ON
GO


IF OBJECT_ID(N'dbo.Manager',N'U') IS NOT NULL
DROP TABLE [dbo].[Manager]
GO


SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Manager](
	[ManagerId] [int] IDENTITY(1,1) NOT NULL,
	[ManagerFirstName] [varchar](50) NOT NULL,
	[ManagerLastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

IF OBJECT_ID(N'dbo.Employee',N'U') IS NOT NULL
DROP TABLE [dbo].[Employee]
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[JobTitleId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[ManagerId] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_JobTitle] FOREIGN KEY([JobTitleId])
REFERENCES [dbo].[JobTitle] ([JobTitleId])
GO

ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_JobTitle]
GO

ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO

ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO

ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Manager] FOREIGN KEY([ManagerId])
REFERENCES [dbo].[Manager] ([ManagerId])
GO

ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Manager]
GO




