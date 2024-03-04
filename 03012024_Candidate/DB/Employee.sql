USE [myCompany]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 2/26/2024 2:03:11 PM ******/
SET ANSI_NULLS ON
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
	[JobTitle] [varchar](50) NOT NULL,
	[DepartmentId] [int] NULL,
	[ManagerId] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

