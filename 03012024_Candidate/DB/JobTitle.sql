USE [myCompany]
GO

/****** Object:  Table [dbo].[JobTitle]    Script Date: 2/26/2024 2:11:17 PM ******/
SET ANSI_NULLS ON
GO


IF OBJECT_ID(N'dbo.JobTitle',N'U') IS NOT NULL
DROP TABLE [dbo].[JobTitle]
GO


SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JobTitle](
	[JobTitleId] [int] IDENTITY(1,1) NOT NULL,
	[JobTitle] varchar(50) NOT NULL,
 CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED 
(
	[JobTitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
