USE [AutoService]
GO
/****** Object:  User [Z36-13\AKSAM]    Script Date: 2.11.2022 14:56:48 ******/
CREATE USER [Z36-13\AKSAM] FOR LOGIN [Z36-13\AKSAM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Z36-13\ISKUR]    Script Date: 2.11.2022 14:56:48 ******/
CREATE USER [Z36-13\ISKUR] FOR LOGIN [Z36-13\ISKUR] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ACL]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACL](
	[AclID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ModuleID] [int] NOT NULL,
	[Read] [bit] NOT NULL,
	[Write] [bit] NOT NULL,
	[Delete] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_ACL] PRIMARY KEY CLUSTERED 
(
	[AclID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerGenders]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerGenders](
	[CustomerGenderID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CustomerGenders] PRIMARY KEY CLUSTERED 
(
	[CustomerGenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerPersonalInfo]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerPersonalInfo](
	[CustomerID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[IdentityNumber] [nvarchar](11) NULL,
	[CustomerGenderID] [smallint] NULL,
	[BirthDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Guid] [nchar](50) NOT NULL,
	[Address] [nchar](250) NULL,
	[Email] [nchar](150) NULL,
	[Phone] [nchar](50) NULL,
	[CustomerTypeID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomersBusinessInfo]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomersBusinessInfo](
	[CustomerID] [int] NOT NULL,
	[CompanyName] [nvarchar](250) NULL,
	[TaxOffice] [nvarchar](50) NULL,
	[TaxNumber] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerTypes]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTypes](
	[CustomerTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CustomerTypes] PRIMARY KEY CLUSTERED 
(
	[CustomerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Module] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[ModuleID] [int] NOT NULL,
	[Guid] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_Modules] PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceOrders]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceOrders](
	[ServiceOrderID] [int] NOT NULL,
	[VehicleID] [int] NOT NULL,
	[CurrentOdo] [int] NULL,
	[ServiceReasonID] [int] NULL,
	[Complaint] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ServiceStatusID] [int] NULL,
	[Date] [datetime] NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_ServiceOrder] PRIMARY KEY CLUSTERED 
(
	[ServiceOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceReasons]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceReasons](
	[ServisReasonID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_ServiceReasons] PRIMARY KEY CLUSTERED 
(
	[ServisReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Works] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicesServiceOrdersRel]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicesServiceOrdersRel](
	[ServiceOrderID] [int] NULL,
	[ServiceID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceStatuses]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceStatuses](
	[ServiceStatusID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ServiceStatuses] PRIMARY KEY CLUSTERED 
(
	[ServiceStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Guid] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleBrands]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleBrands](
	[VehicleBrandID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VehicleBrands] PRIMARY KEY CLUSTERED 
(
	[VehicleBrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleColors]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleColors](
	[VehicleColorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VehicleColors] PRIMARY KEY CLUSTERED 
(
	[VehicleColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleFuelTypes]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleFuelTypes](
	[VehicleFuelTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VehicleFuelTypes] PRIMARY KEY CLUSTERED 
(
	[VehicleFuelTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleModels]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleModels](
	[VehicleModelID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleBrandID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VehicleModels] PRIMARY KEY CLUSTERED 
(
	[VehicleModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[VehicleID] [int] IDENTITY(1,1) NOT NULL,
	[Guid] [nvarchar](50) NOT NULL,
	[LicenseNumber] [nvarchar](50) NOT NULL,
	[Made] [int] NOT NULL,
	[CahsisNo] [nvarchar](50) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[VehicleModelID] [int] NOT NULL,
	[VehicleColorID] [int] NOT NULL,
	[VehicleFuelTypeID] [int] NOT NULL,
	[VehicleTransmissionTypeID] [int] NOT NULL,
	[VehicleTypeID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleTransmissionTypes]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleTransmissionTypes](
	[VehicleTransmissionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VehicleTransmissionTypes] PRIMARY KEY CLUSTERED 
(
	[VehicleTransmissionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleTypes]    Script Date: 2.11.2022 14:56:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleTypes](
	[VehicleTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VehicleTypes] PRIMARY KEY CLUSTERED 
(
	[VehicleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomerGenders] ON 

INSERT [dbo].[CustomerGenders] ([CustomerGenderID], [Name]) VALUES (1, N'Kadın')
INSERT [dbo].[CustomerGenders] ([CustomerGenderID], [Name]) VALUES (2, N'Erkek')
INSERT [dbo].[CustomerGenders] ([CustomerGenderID], [Name]) VALUES (3, N'Diğer')
SET IDENTITY_INSERT [dbo].[CustomerGenders] OFF
GO
SET IDENTITY_INSERT [dbo].[Logs] ON 

INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (1, N'User', N'Yeni Kullanıcı Kaydı YapıldıAhmet', CAST(N'2022-10-25T10:22:02.063' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (2, N'Users', NULL, CAST(N'2022-10-25T10:26:04.200' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (3, N'Users', NULL, CAST(N'2022-10-25T11:31:57.550' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (4, N'Users', NULL, CAST(N'2022-10-25T11:32:38.970' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (5, N'Users', NULL, CAST(N'2022-10-25T11:33:27.473' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (6, N'Users', NULL, CAST(N'2022-10-25T11:36:48.350' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (7, N'Users', NULL, CAST(N'2022-10-25T11:39:28.110' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (8, N'Users', NULL, CAST(N'2022-10-25T11:39:53.600' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (9, N'Users', NULL, CAST(N'2022-10-25T11:40:05.430' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (10, N'Users', NULL, CAST(N'2022-10-25T11:40:51.820' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (11, N'Users', NULL, CAST(N'2022-10-25T11:43:22.990' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (12, N'Users', NULL, CAST(N'2022-10-25T11:45:31.450' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (13, N'Users', NULL, CAST(N'2022-10-25T11:45:41.460' AS DateTime))
INSERT [dbo].[Logs] ([ID], [Module], [Description], [Date]) VALUES (14, N'Users', NULL, CAST(N'2022-10-25T11:55:19.093' AS DateTime))
SET IDENTITY_INSERT [dbo].[Logs] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiceReasons] ON 

INSERT [dbo].[ServiceReasons] ([ServisReasonID], [Name]) VALUES (1, N'Bakım')
INSERT [dbo].[ServiceReasons] ([ServisReasonID], [Name]) VALUES (2, N'Onarım')
INSERT [dbo].[ServiceReasons] ([ServisReasonID], [Name]) VALUES (3, N'Boya')
INSERT [dbo].[ServiceReasons] ([ServisReasonID], [Name]) VALUES (4, N'Yıkama')
INSERT [dbo].[ServiceReasons] ([ServisReasonID], [Name]) VALUES (5, N'Yağ Değişim')
SET IDENTITY_INSERT [dbo].[ServiceReasons] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleBrands] ON 

INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (1, N'Mercedes')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (2, N'Audi')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (3, N'BMW')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (4, N'Fiat')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (5, N'Ford')
SET IDENTITY_INSERT [dbo].[VehicleBrands] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleColors] ON 

INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (1, N'Kırmızı')
INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (2, N'Beyaz')
INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (3, N'Siyah')
INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (4, N'Sarı')
INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (5, N'Lacivert')
INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (6, N'Gri')
INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (7, N'Mor')
SET IDENTITY_INSERT [dbo].[VehicleColors] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleFuelTypes] ON 

INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (1, N'Benzin')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (2, N'Dizel')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (3, N'LPG')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (4, N'CNG')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (5, N'Hyprid')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (6, N'Hidrojen')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (7, N'Elektrik')
SET IDENTITY_INSERT [dbo].[VehicleFuelTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleModels] ON 

INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (1, 1, N'A180')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (2, 1, N'S400 L')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (3, 2, N'A8')
SET IDENTITY_INSERT [dbo].[VehicleModels] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleTransmissionTypes] ON 

INSERT [dbo].[VehicleTransmissionTypes] ([VehicleTransmissionTypeID], [Name]) VALUES (1, N'Düz')
INSERT [dbo].[VehicleTransmissionTypes] ([VehicleTransmissionTypeID], [Name]) VALUES (2, N'Otomatik')
INSERT [dbo].[VehicleTransmissionTypes] ([VehicleTransmissionTypeID], [Name]) VALUES (3, N'Yarı Otomatik')
SET IDENTITY_INSERT [dbo].[VehicleTransmissionTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleTypes] ON 

INSERT [dbo].[VehicleTypes] ([VehicleTypeID], [Name]) VALUES (1, N'Sedan')
INSERT [dbo].[VehicleTypes] ([VehicleTypeID], [Name]) VALUES (2, N'Hatchback')
INSERT [dbo].[VehicleTypes] ([VehicleTypeID], [Name]) VALUES (3, N'Cabriolet')
INSERT [dbo].[VehicleTypes] ([VehicleTypeID], [Name]) VALUES (4, N'Station')
INSERT [dbo].[VehicleTypes] ([VehicleTypeID], [Name]) VALUES (5, N'Coupe')
INSERT [dbo].[VehicleTypes] ([VehicleTypeID], [Name]) VALUES (6, N'SUV')
SET IDENTITY_INSERT [dbo].[VehicleTypes] OFF
GO
ALTER TABLE [dbo].[ACL] ADD  CONSTRAINT [DF_ACL_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[ACL] ADD  CONSTRAINT [DF_ACL_DateModified]  DEFAULT (getdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[CustomerPersonalInfo] ADD  CONSTRAINT [DF_CustomerPersonalInfo_IdentityNumber]  DEFAULT ((11111111111.)) FOR [IdentityNumber]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customer_CustomerTypeID]  DEFAULT ((1)) FOR [CustomerTypeID]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customer_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customer_DateModified]  DEFAULT (getdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[Modules] ADD  CONSTRAINT [DF_Modules_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Modules] ADD  CONSTRAINT [DF_Modules_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Modules] ADD  CONSTRAINT [DF_Modules_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Vehicles] ADD  CONSTRAINT [DF_Vehicles_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Vehicles] ADD  CONSTRAINT [DF_Vehicles_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Vehicles] ADD  CONSTRAINT [DF_Vehicles_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Vehicles] ADD  CONSTRAINT [DF_Vehicles_DateModified]  DEFAULT (getdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[ACL]  WITH CHECK ADD  CONSTRAINT [FK_ACL_Modules] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[Modules] ([ModuleID])
GO
ALTER TABLE [dbo].[ACL] CHECK CONSTRAINT [FK_ACL_Modules]
GO
ALTER TABLE [dbo].[ACL]  WITH CHECK ADD  CONSTRAINT [FK_ACL_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[ACL] CHECK CONSTRAINT [FK_ACL_Users]
GO
ALTER TABLE [dbo].[CustomerPersonalInfo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerPersonalInfo_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerPersonalInfo] CHECK CONSTRAINT [FK_CustomerPersonalInfo_Customer]
GO
ALTER TABLE [dbo].[CustomerPersonalInfo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerPersonalInfo_CustomerGenders] FOREIGN KEY([CustomerGenderID])
REFERENCES [dbo].[CustomerGenders] ([CustomerGenderID])
GO
ALTER TABLE [dbo].[CustomerPersonalInfo] CHECK CONSTRAINT [FK_CustomerPersonalInfo_CustomerGenders]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customer_CustomerTypes] FOREIGN KEY([CustomerTypeID])
REFERENCES [dbo].[CustomerTypes] ([CustomerTypeID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customer_CustomerTypes]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Users]
GO
ALTER TABLE [dbo].[CustomersBusinessInfo]  WITH CHECK ADD  CONSTRAINT [FK_CustomersBusinessInfo_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomersBusinessInfo] CHECK CONSTRAINT [FK_CustomersBusinessInfo_Customer]
GO
ALTER TABLE [dbo].[ServiceOrders]  WITH CHECK ADD  CONSTRAINT [FK_ServiceOrders_ServiceReasons] FOREIGN KEY([ServiceReasonID])
REFERENCES [dbo].[ServiceReasons] ([ServisReasonID])
GO
ALTER TABLE [dbo].[ServiceOrders] CHECK CONSTRAINT [FK_ServiceOrders_ServiceReasons]
GO
ALTER TABLE [dbo].[ServiceOrders]  WITH CHECK ADD  CONSTRAINT [FK_ServiceOrders_ServiceStatuses] FOREIGN KEY([ServiceStatusID])
REFERENCES [dbo].[ServiceStatuses] ([ServiceStatusID])
GO
ALTER TABLE [dbo].[ServiceOrders] CHECK CONSTRAINT [FK_ServiceOrders_ServiceStatuses]
GO
ALTER TABLE [dbo].[ServiceOrders]  WITH CHECK ADD  CONSTRAINT [FK_ServiceOrders_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[ServiceOrders] CHECK CONSTRAINT [FK_ServiceOrders_Users]
GO
ALTER TABLE [dbo].[ServiceOrders]  WITH CHECK ADD  CONSTRAINT [FK_ServiceOrders_Vehicles] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicles] ([VehicleID])
GO
ALTER TABLE [dbo].[ServiceOrders] CHECK CONSTRAINT [FK_ServiceOrders_Vehicles]
GO
ALTER TABLE [dbo].[ServicesServiceOrdersRel]  WITH CHECK ADD  CONSTRAINT [FK_ServicesServiceOrdersRel_ServiceOrders] FOREIGN KEY([ServiceOrderID])
REFERENCES [dbo].[ServiceOrders] ([ServiceOrderID])
GO
ALTER TABLE [dbo].[ServicesServiceOrdersRel] CHECK CONSTRAINT [FK_ServicesServiceOrdersRel_ServiceOrders]
GO
ALTER TABLE [dbo].[ServicesServiceOrdersRel]  WITH CHECK ADD  CONSTRAINT [FK_ServicesServiceOrdersRel_Services] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Services] ([ServiceID])
GO
ALTER TABLE [dbo].[ServicesServiceOrdersRel] CHECK CONSTRAINT [FK_ServicesServiceOrdersRel_Services]
GO
ALTER TABLE [dbo].[VehicleModels]  WITH CHECK ADD  CONSTRAINT [FK_VehicleModels_VehicleBrands] FOREIGN KEY([VehicleBrandID])
REFERENCES [dbo].[VehicleBrands] ([VehicleBrandID])
GO
ALTER TABLE [dbo].[VehicleModels] CHECK CONSTRAINT [FK_VehicleModels_VehicleBrands]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Customer]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_VehicleColors] FOREIGN KEY([VehicleColorID])
REFERENCES [dbo].[VehicleColors] ([VehicleColorID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_VehicleColors]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_VehicleFuelTypes] FOREIGN KEY([VehicleFuelTypeID])
REFERENCES [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_VehicleFuelTypes]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_VehicleModels] FOREIGN KEY([VehicleModelID])
REFERENCES [dbo].[VehicleModels] ([VehicleModelID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_VehicleModels]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_VehicleTransmissionTypes] FOREIGN KEY([VehicleTransmissionTypeID])
REFERENCES [dbo].[VehicleTransmissionTypes] ([VehicleTransmissionTypeID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_VehicleTransmissionTypes]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_VehicleTypes] FOREIGN KEY([VehicleTypeID])
REFERENCES [dbo].[VehicleTypes] ([VehicleTypeID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_VehicleTypes]
GO
