USE [master]
GO
/****** Object:  Database [Students]    Script Date: 8/6/2020 1:37:31 PM ******/
CREATE DATABASE [Students]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\test.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\test_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Students] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Students].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Students] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Students] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Students] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Students] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Students] SET ARITHABORT OFF 
GO
ALTER DATABASE [Students] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Students] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Students] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Students] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Students] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Students] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Students] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Students] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Students] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Students] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Students] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Students] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Students] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Students] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Students] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Students] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Students] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Students] SET RECOVERY FULL 
GO
ALTER DATABASE [Students] SET  MULTI_USER 
GO
ALTER DATABASE [Students] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Students] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Students] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Students] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Students] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Students', N'ON'
GO
USE [Students]
GO
/****** Object:  Table [dbo].[StudentNames]    Script Date: 8/6/2020 1:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentNames](
	[StudentID] [varchar](50) NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[Class] [varchar](50) NOT NULL,
	[MotherName] [varchar](50) NOT NULL,
	[Age] [numeric](18, 0) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Mobile] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StudentNames] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/6/2020 1:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [varchar](50) NOT NULL,
	[Password] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[StudentNames] ([StudentID], [FullName], [Class], [MotherName], [Age], [Address], [Mobile], [Email]) VALUES (N'1', N'Ahmed Amin Ali', N'form four', N'Halima hilowle nuur', CAST(19 AS Numeric(18, 0)), N'marka', N'252613441122', N'Halima@gmail.com')
INSERT [dbo].[StudentNames] ([StudentID], [FullName], [Class], [MotherName], [Age], [Address], [Mobile], [Email]) VALUES (N'2', N'Mahad Farah Geedi', N'form two', N'Halima hilowle nuur', CAST(22 AS Numeric(18, 0)), N'Muqdisho', N'252613441122', N'Halima@gmail.com')
INSERT [dbo].[StudentNames] ([StudentID], [FullName], [Class], [MotherName], [Age], [Address], [Mobile], [Email]) VALUES (N'3', N'Mahad Farah Geedi', N'form two', N'Halima hilowle nuur', CAST(22 AS Numeric(18, 0)), N'Muqdisho', N'252613441122', N'Halima@gmail.com')
INSERT [dbo].[StudentNames] ([StudentID], [FullName], [Class], [MotherName], [Age], [Address], [Mobile], [Email]) VALUES (N'4', N'Mahad Farah Geedi', N'form two', N'Halima hilowle nuur', CAST(22 AS Numeric(18, 0)), N'Muqdisho', N'252613441122', N'Halima@gmail.com')
INSERT [dbo].[StudentNames] ([StudentID], [FullName], [Class], [MotherName], [Age], [Address], [Mobile], [Email]) VALUES (N'5', N'Mahad Farah Geedi', N'form two', N'Halima hilowle nuur', CAST(22 AS Numeric(18, 0)), N'Muqdisho', N'252613441122', N'Halima@gmail.com')
INSERT [dbo].[StudentNames] ([StudentID], [FullName], [Class], [MotherName], [Age], [Address], [Mobile], [Email]) VALUES (N'6', N'Mahad Farah Geedi', N'form two', N'Halima hilowle nuur', CAST(22 AS Numeric(18, 0)), N'Muqdisho', N'252613441122', N'Halima@gmail.com')
INSERT [dbo].[StudentNames] ([StudentID], [FullName], [Class], [MotherName], [Age], [Address], [Mobile], [Email]) VALUES (N'7', N'Mahad Farah Geedi', N'form two', N'Halima hilowle nuur', CAST(22 AS Numeric(18, 0)), N'Muqdisho', N'252613441122', N'Halima@gmail.com')
INSERT [dbo].[StudentNames] ([StudentID], [FullName], [Class], [MotherName], [Age], [Address], [Mobile], [Email]) VALUES (N'8', N'Mahad Farah Geedi', N'form two', N'Halima hilowle nuur', CAST(22 AS Numeric(18, 0)), N'Muqdisho', N'252613441122', N'Halima@gmail.com')
INSERT [dbo].[StudentNames] ([StudentID], [FullName], [Class], [MotherName], [Age], [Address], [Mobile], [Email]) VALUES (N'9', N'Mahad Farah Geedi', N'form two', N'Halima hilowle nuur', CAST(22 AS Numeric(18, 0)), N'Muqdisho', N'252613441122', N'Halima@gmail.com')
INSERT [dbo].[Users] ([Username], [Password]) VALUES (N'Mohamed', CAST(12345 AS Numeric(18, 0)))
USE [master]
GO
ALTER DATABASE [Students] SET  READ_WRITE 
GO
