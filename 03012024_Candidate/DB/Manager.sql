USE [myCompany]
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

