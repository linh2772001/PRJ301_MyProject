USE [master]
GO
/****** Object:  Database [Assigment]    Script Date: 6/27/2022 11:30:46 PM ******/
CREATE DATABASE [Assigment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assigment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assigment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assigment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assigment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assigment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assigment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assigment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assigment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assigment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assigment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assigment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assigment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assigment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assigment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assigment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assigment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assigment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assigment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assigment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assigment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assigment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Assigment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assigment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assigment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assigment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assigment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assigment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assigment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assigment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assigment] SET  MULTI_USER 
GO
ALTER DATABASE [Assigment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assigment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assigment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assigment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assigment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assigment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Assigment] SET QUERY_STORE = OFF
GO
USE [Assigment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/27/2022 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[aid] [int] NOT NULL,
	[usename] [nvarchar](150) NOT NULL,
	[password] [nvarchar](150) NOT NULL,
	[sid] [int] NULL,
	[lid] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 6/27/2022 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[sid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Enroll] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll Subjects]    Script Date: 6/27/2022 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll Subjects](
	[sid] [int] NOT NULL,
	[subid] [int] NOT NULL,
 CONSTRAINT [PK_Enroll Subjects] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 6/27/2022 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mark]    Script Date: 6/27/2022 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mark](
	[mid] [int] NOT NULL,
	[lab1] [int] NULL,
	[lab2] [int] NULL,
	[ass1] [int] NULL,
	[ass2] [int] NULL,
	[pe] [int] NULL,
	[fe] [int] NULL,
	[subid] [int] NOT NULL,
	[sid] [int] NOT NULL,
 CONSTRAINT [PK_Mark] PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/27/2022 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [int] NOT NULL,
	[code] [varchar](8) NOT NULL,
	[smember] [nvarchar](150) NOT NULL,
	[sname] [nvarchar](150) NOT NULL,
	[sgender] [bit] NOT NULL,
	[sdob] [date] NOT NULL,
	[simg] [nvarchar](150) NOT NULL,
	[saddress] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject Group]    Script Date: 6/27/2022 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject Group](
	[gid] [int] NOT NULL,
	[subid] [int] NOT NULL,
 CONSTRAINT [PK_Subject Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC,
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 6/27/2022 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[subid] [int] NOT NULL,
	[subname] [nvarchar](150) NOT NULL,
	[subcode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 6/27/2022 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[lid] [int] NOT NULL,
	[lname] [nvarchar](150) NULL,
	[lmember] [nvarchar](150) NULL,
	[lgenger] [bit] NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher Group]    Script Date: 6/27/2022 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher Group](
	[lid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Teacher Group] PRIMARY KEY CLUSTERED 
(
	[lid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher Subjects]    Script Date: 6/27/2022 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher Subjects](
	[lid] [int] NOT NULL,
	[subid] [int] NOT NULL,
 CONSTRAINT [PK_Teacher Subjects] PRIMARY KEY CLUSTERED 
(
	[lid] ASC,
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Student]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Teacher] FOREIGN KEY([lid])
REFERENCES [dbo].[Teacher] ([lid])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Teacher]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Group]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Student]
GO
ALTER TABLE [dbo].[Enroll Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Enroll Subjects_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Enroll Subjects] CHECK CONSTRAINT [FK_Enroll Subjects_Student]
GO
ALTER TABLE [dbo].[Enroll Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Enroll Subjects_Subjects] FOREIGN KEY([subid])
REFERENCES [dbo].[Subjects] ([subid])
GO
ALTER TABLE [dbo].[Enroll Subjects] CHECK CONSTRAINT [FK_Enroll Subjects_Subjects]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Student]
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD  CONSTRAINT [FK_Mark_Subjects] FOREIGN KEY([subid])
REFERENCES [dbo].[Subjects] ([subid])
GO
ALTER TABLE [dbo].[Mark] CHECK CONSTRAINT [FK_Mark_Subjects]
GO
ALTER TABLE [dbo].[Subject Group]  WITH CHECK ADD  CONSTRAINT [FK_Subject Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Subject Group] CHECK CONSTRAINT [FK_Subject Group_Group]
GO
ALTER TABLE [dbo].[Subject Group]  WITH CHECK ADD  CONSTRAINT [FK_Subject Group_Subjects] FOREIGN KEY([subid])
REFERENCES [dbo].[Subjects] ([subid])
GO
ALTER TABLE [dbo].[Subject Group] CHECK CONSTRAINT [FK_Subject Group_Subjects]
GO
ALTER TABLE [dbo].[Teacher Group]  WITH CHECK ADD  CONSTRAINT [FK_Teacher Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Teacher Group] CHECK CONSTRAINT [FK_Teacher Group_Group]
GO
ALTER TABLE [dbo].[Teacher Group]  WITH CHECK ADD  CONSTRAINT [FK_Teacher Group_Teacher] FOREIGN KEY([lid])
REFERENCES [dbo].[Teacher] ([lid])
GO
ALTER TABLE [dbo].[Teacher Group] CHECK CONSTRAINT [FK_Teacher Group_Teacher]
GO
ALTER TABLE [dbo].[Teacher Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Teacher Subjects_Subjects] FOREIGN KEY([subid])
REFERENCES [dbo].[Subjects] ([subid])
GO
ALTER TABLE [dbo].[Teacher Subjects] CHECK CONSTRAINT [FK_Teacher Subjects_Subjects]
GO
ALTER TABLE [dbo].[Teacher Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Teacher Subjects_Teacher] FOREIGN KEY([lid])
REFERENCES [dbo].[Teacher] ([lid])
GO
ALTER TABLE [dbo].[Teacher Subjects] CHECK CONSTRAINT [FK_Teacher Subjects_Teacher]
GO
USE [master]
GO
ALTER DATABASE [Assigment] SET  READ_WRITE 
GO
