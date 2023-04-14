USE [master]
GO
/****** Object:  Database [AutoService]    Script Date: 24.10.2022 14:47:44 ******/
CREATE DATABASE [AutoService]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AutoService', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AutoService.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AutoService_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AutoService_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AutoService] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AutoService].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AutoService] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AutoService] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AutoService] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AutoService] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AutoService] SET ARITHABORT OFF 
GO
ALTER DATABASE [AutoService] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AutoService] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AutoService] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AutoService] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AutoService] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AutoService] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AutoService] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AutoService] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AutoService] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AutoService] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AutoService] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AutoService] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AutoService] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AutoService] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AutoService] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AutoService] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AutoService] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AutoService] SET RECOVERY FULL 
GO
ALTER DATABASE [AutoService] SET  MULTI_USER 
GO
ALTER DATABASE [AutoService] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AutoService] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AutoService] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AutoService] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AutoService] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AutoService] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AutoService', N'ON'
GO
ALTER DATABASE [AutoService] SET QUERY_STORE = OFF
GO
USE [AutoService]
GO
/****** Object:  Table [dbo].[ACL]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACL](
	[AclID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ModuleID] [int] NOT NULL,
	[Read] [bit] NULL,
	[Write] [bit] NULL,
	[Delete] [bit] NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_ACL] PRIMARY KEY CLUSTERED 
(
	[AclID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerGenders]    Script Date: 24.10.2022 14:47:44 ******/
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
/****** Object:  Table [dbo].[CustomerPersonalInfo]    Script Date: 24.10.2022 14:47:44 ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Guid] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
	[CustomerTypeID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[UserID] [int] NULL,
	[DateModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomersBusinessInfo]    Script Date: 24.10.2022 14:47:44 ******/
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
/****** Object:  Table [dbo].[CustomerTypes]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTypes](
	[CustomerTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CustomerTypes] PRIMARY KEY CLUSTERED 
(
	[CustomerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[ModuleID] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[ServiceOrders]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceOrders](
	[ServiceOrderID] [int] NOT NULL,
	[VehicleID] [int] NULL,
	[ServiceStatusID] [int] NULL,
	[ServiceReasonID] [int] NULL,
	[CurrentOdo] [int] NULL,
	[Complaint] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[UserID] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_ServiceOrders] PRIMARY KEY CLUSTERED 
(
	[ServiceOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceReasons]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceReasons](
	[ServiceReasonID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_ServiceReasons] PRIMARY KEY CLUSTERED 
(
	[ServiceReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 24.10.2022 14:47:44 ******/
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
/****** Object:  Table [dbo].[ServicesServiceOrdersRel]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicesServiceOrdersRel](
	[ServiceOrderID] [int] NULL,
	[ServiceID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceStatuses]    Script Date: 24.10.2022 14:47:44 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 24.10.2022 14:47:44 ******/
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
/****** Object:  Table [dbo].[VehicleBrands]    Script Date: 24.10.2022 14:47:44 ******/
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
/****** Object:  Table [dbo].[VehicleColors]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleColors](
	[VehicleColorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_VehicleColors] PRIMARY KEY CLUSTERED 
(
	[VehicleColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleFuelTypes]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleFuelTypes](
	[VehicleFuelTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_VehicleFuelTypes] PRIMARY KEY CLUSTERED 
(
	[VehicleFuelTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleModels]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleModels](
	[VehicleModelID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleBrandID] [int] NOT NULL,
	[Name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_VehicleModels] PRIMARY KEY CLUSTERED 
(
	[VehicleModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[VehicleID] [int] IDENTITY(1,1) NOT NULL,
	[Guid] [nvarchar](50) NOT NULL,
	[LicenseNumber] [nvarchar](50) NOT NULL,
	[Made] [int] NOT NULL,
	[ChassisNo] [nvarchar](50) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[VehicleModelID] [int] NOT NULL,
	[VehicleColorID] [int] NOT NULL,
	[VehicleTypeID] [int] NOT NULL,
	[VehicleTransmissionTypeID] [int] NOT NULL,
	[VehicleFuelTypeID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[VehicleTransmissionTypes]    Script Date: 24.10.2022 14:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleTransmissionTypes](
	[VehicleTransmissionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_VehicleTransmissionTypes] PRIMARY KEY CLUSTERED 
(
	[VehicleTransmissionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleTypes]    Script Date: 24.10.2022 14:47:44 ******/
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
SET IDENTITY_INSERT [dbo].[CustomerTypes] ON 

INSERT [dbo].[CustomerTypes] ([CustomerTypeID], [Name]) VALUES (1, N'Bireysel')
INSERT [dbo].[CustomerTypes] ([CustomerTypeID], [Name]) VALUES (2, N'Kurumsal')
SET IDENTITY_INSERT [dbo].[CustomerTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiceReasons] ON 

INSERT [dbo].[ServiceReasons] ([ServiceReasonID], [Name]) VALUES (1, N'Bakım')
INSERT [dbo].[ServiceReasons] ([ServiceReasonID], [Name]) VALUES (2, N'Onarım')
INSERT [dbo].[ServiceReasons] ([ServiceReasonID], [Name]) VALUES (3, N'Restorasyon')
INSERT [dbo].[ServiceReasons] ([ServiceReasonID], [Name]) VALUES (4, N'Expertiz')
INSERT [dbo].[ServiceReasons] ([ServiceReasonID], [Name]) VALUES (5, N'Boya')
INSERT [dbo].[ServiceReasons] ([ServiceReasonID], [Name]) VALUES (6, N'Kuaför')
INSERT [dbo].[ServiceReasons] ([ServiceReasonID], [Name]) VALUES (7, N'Lastik')
SET IDENTITY_INSERT [dbo].[ServiceReasons] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleBrands] ON 

INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (1, N'Audi')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (2, N'Mercedes')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (3, N'BMW')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (4, N'Fiat')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (5, N'Renault')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (6, N'Alfa Romeo')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (7, N'Aston Martin')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (8, N'Bugatti')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (9, N'Toyota')
INSERT [dbo].[VehicleBrands] ([VehicleBrandID], [Name]) VALUES (10, N'Nissan')
SET IDENTITY_INSERT [dbo].[VehicleBrands] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleColors] ON 

INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (1, N'Kırmızı')
INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (2, N'Beyaz')
INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (3, N'Siyah')
INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (4, N'Sarı')
INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (5, N'Gri')
INSERT [dbo].[VehicleColors] ([VehicleColorID], [Name]) VALUES (6, N'Mavi')
SET IDENTITY_INSERT [dbo].[VehicleColors] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleFuelTypes] ON 

INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (1, N'Benzin')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (2, N'Dizel')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (3, N'LPG')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (4, N'CNG')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (5, N'Elektrik')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (6, N'Hybrid')
INSERT [dbo].[VehicleFuelTypes] ([VehicleFuelTypeID], [Name]) VALUES (7, N'Hidrojen')
SET IDENTITY_INSERT [dbo].[VehicleFuelTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleModels] ON 

INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (1, 1, N'A3 Sedan  ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (2, 1, N'A6 Long   ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (3, 1, N'A8        ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (4, 2, N'A180      ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (5, 2, N'A200 Sedan')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (6, 2, N'A200 AMG  ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (7, 2, N'A180 AMG  ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (9, 3, N'IX3       ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (10, 3, N'IX1       ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (11, 3, N'I4        ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (13, 3, N'I7        ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (17, 4, N'500       ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (18, 4, N'500C      ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (19, 5, N'Clio      ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (21, 5, N'Megane    ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (22, 5, N'Talisman  ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (23, 6, N'Giulietta ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (24, 6, N'159       ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (25, 7, N'DB7       ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (26, 7, N'DB9       ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (30, 9, N'Yaris     ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (31, 9, N'Corolla   ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (32, 9, N'C-HR      ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (33, 9, N'RAV4      ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (34, 10, N'GTR 34    ')
INSERT [dbo].[VehicleModels] ([VehicleModelID], [VehicleBrandID], [Name]) VALUES (35, 10, N'GTR 35    ')
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
ALTER TABLE [dbo].[CustomerPersonalInfo] ADD  CONSTRAINT [DF_CustomerPersonalInfo_IdentityNumber]  DEFAULT ((11111111111.)) FOR [IdentityNumber]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_CustomerTypeID]  DEFAULT ((1)) FOR [CustomerTypeID]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_DateModified]  DEFAULT (getdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[Modules] ADD  CONSTRAINT [DF_Modules_Guid]  DEFAULT (newid()) FOR [Guid]
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
ALTER TABLE [dbo].[Vehicles] ADD  CONSTRAINT [DF_Vehicles_Guid]  DEFAULT (newid()) FOR [Guid]
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
ALTER TABLE [dbo].[CustomerPersonalInfo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerPersonalInfo_CustomerGenders] FOREIGN KEY([CustomerGenderID])
REFERENCES [dbo].[CustomerGenders] ([CustomerGenderID])
GO
ALTER TABLE [dbo].[CustomerPersonalInfo] CHECK CONSTRAINT [FK_CustomerPersonalInfo_CustomerGenders]
GO
ALTER TABLE [dbo].[CustomerPersonalInfo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerPersonalInfo_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerPersonalInfo] CHECK CONSTRAINT [FK_CustomerPersonalInfo_Customers]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_CustomerTypes] FOREIGN KEY([CustomerTypeID])
REFERENCES [dbo].[CustomerTypes] ([CustomerTypeID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_CustomerTypes]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Users]
GO
ALTER TABLE [dbo].[CustomersBusinessInfo]  WITH CHECK ADD  CONSTRAINT [FK_CustomersBusinessInfo_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomersBusinessInfo] CHECK CONSTRAINT [FK_CustomersBusinessInfo_Customers]
GO
ALTER TABLE [dbo].[ServiceOrders]  WITH CHECK ADD  CONSTRAINT [FK_ServiceOrders_ServiceReasons] FOREIGN KEY([ServiceReasonID])
REFERENCES [dbo].[ServiceReasons] ([ServiceReasonID])
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
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Customers]
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
USE [master]
GO
ALTER DATABASE [AutoService] SET  READ_WRITE 
GO
