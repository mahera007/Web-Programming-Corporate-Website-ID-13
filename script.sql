USE [master]
GO
/****** Object:  Database [Technetwork]    Script Date: 3/25/2020 9:30:01 PM ******/
CREATE DATABASE [Technetwork]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Technetwork', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Technetwork.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Technetwork_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Technetwork_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Technetwork] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Technetwork].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Technetwork] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Technetwork] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Technetwork] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Technetwork] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Technetwork] SET ARITHABORT OFF 
GO
ALTER DATABASE [Technetwork] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Technetwork] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Technetwork] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Technetwork] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Technetwork] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Technetwork] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Technetwork] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Technetwork] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Technetwork] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Technetwork] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Technetwork] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Technetwork] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Technetwork] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Technetwork] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Technetwork] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Technetwork] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Technetwork] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Technetwork] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Technetwork] SET  MULTI_USER 
GO
ALTER DATABASE [Technetwork] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Technetwork] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Technetwork] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Technetwork] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Technetwork] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Technetwork] SET QUERY_STORE = OFF
GO
USE [Technetwork]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/25/2020 9:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[EmailId] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone number] [nvarchar](10) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Developer]    Script Date: 3/25/2020 9:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Developer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Developer name] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Developer code] [nvarchar](10) NULL,
	[Email id] [nvarchar](50) NULL,
	[Phone number] [nvarchar](50) NULL,
	[Details] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Developer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/25/2020 9:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[EmailId] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone number] [nvarchar](10) NULL,
	[Address] [nvarchar](250) NULL,
	[Designation] [nvarchar](50) NULL,
	[Details] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/25/2020 9:30:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Product id] [int] IDENTITY(1,1) NOT NULL,
	[Product name] [nvarchar](250) NULL,
	[Price] [numeric](18, 2) NULL,
	[Storage require] [nvarchar](50) NULL,
	[Details] [nvarchar](250) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Product id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 3/25/2020 9:30:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Service no] [int] IDENTITY(1,1) NOT NULL,
	[Service name] [nvarchar](250) NULL,
	[Service provider name] [nvarchar](250) NULL,
	[Servicing last date] [date] NULL,
	[Service cost] [numeric](18, 2) NULL,
	[Details] [nvarchar](250) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Service no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Technetwork] SET  READ_WRITE 
GO
