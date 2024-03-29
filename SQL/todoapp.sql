USE [ToDoApp]
GO
/****** Object:  User [Z36-13\AKSAM]    Script Date: 2.11.2022 14:53:51 ******/
CREATE USER [Z36-13\AKSAM] FOR LOGIN [Z36-13\AKSAM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Z36-13\ISKUR]    Script Date: 2.11.2022 14:53:51 ******/
CREATE USER [Z36-13\ISKUR] FOR LOGIN [Z36-13\ISKUR] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 2.11.2022 14:53:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Guid] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_AppUsers_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_AppUsers_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_AppUsers_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_AppUsers_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_AppUsers_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[AppUsers] ADD  CONSTRAINT [DF_AppUsers_DateModified]  DEFAULT (getdate()) FOR [DateModified]
GO
