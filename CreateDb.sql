USE [master]
GO
/****** Object:  Database [Tractor.Pull]    Script Date: 27/11/2017 17:11:00 ******/
CREATE DATABASE [Tractor.Pull]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tractor.Pull', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Tractor.Pull.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tractor.Pull_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Tractor.Pull_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Tractor.Pull] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tractor.Pull].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tractor.Pull] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tractor.Pull] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tractor.Pull] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tractor.Pull] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tractor.Pull] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tractor.Pull] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tractor.Pull] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tractor.Pull] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tractor.Pull] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tractor.Pull] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tractor.Pull] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tractor.Pull] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tractor.Pull] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tractor.Pull] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tractor.Pull] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tractor.Pull] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tractor.Pull] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tractor.Pull] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tractor.Pull] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tractor.Pull] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tractor.Pull] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tractor.Pull] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tractor.Pull] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Tractor.Pull] SET  MULTI_USER 
GO
ALTER DATABASE [Tractor.Pull] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tractor.Pull] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tractor.Pull] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tractor.Pull] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tractor.Pull] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tractor.Pull] SET QUERY_STORE = OFF
GO
USE [Tractor.Pull]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Tractor.Pull]
GO
/****** Object:  Table [dbo].[tblOwner]    Script Date: 27/11/2017 17:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOwner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblOwner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTractor]    Script Date: 27/11/2017 17:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTractor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OwnerRef] [int] NOT NULL,
	[Make] [varchar](50) NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[BHP] [int] NOT NULL,
	[Torque] [int] NOT NULL,
 CONSTRAINT [PK_tblTractors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTractorScores]    Script Date: 27/11/2017 17:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTractorScores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TractorRef] [int] NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_tblTractorScores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblOwner] ON 

INSERT [dbo].[tblOwner] ([Id], [Name]) VALUES (1, N'Fred Pulls')
INSERT [dbo].[tblOwner] ([Id], [Name]) VALUES (2, N'John Winner')
INSERT [dbo].[tblOwner] ([Id], [Name]) VALUES (3, N'Greg Tow')
INSERT [dbo].[tblOwner] ([Id], [Name]) VALUES (4, N'Graham Plow')
SET IDENTITY_INSERT [dbo].[tblOwner] OFF
SET IDENTITY_INSERT [dbo].[tblTractor] ON 

INSERT [dbo].[tblTractor] ([Id], [OwnerRef], [Make], [Model], [BHP], [Torque]) VALUES (1, 1, N'John Deer', N'5M', 115, 400)
INSERT [dbo].[tblTractor] ([Id], [OwnerRef], [Make], [Model], [BHP], [Torque]) VALUES (2, 1, N'Old Faithful', N'T1', 335, 650)
INSERT [dbo].[tblTractor] ([Id], [OwnerRef], [Make], [Model], [BHP], [Torque]) VALUES (3, 2, N'Big Bertha', N'BB1', 450, 1050)
INSERT [dbo].[tblTractor] ([Id], [OwnerRef], [Make], [Model], [BHP], [Torque]) VALUES (4, 3, N'Mountain Mover', N'MM55', 500, 1100)
INSERT [dbo].[tblTractor] ([Id], [OwnerRef], [Make], [Model], [BHP], [Torque]) VALUES (5, 4, N'Tank', N'T90', 600, 1200)
SET IDENTITY_INSERT [dbo].[tblTractor] OFF
SET IDENTITY_INSERT [dbo].[tblTractorScores] ON 

INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (1, 1, 40)
INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (2, 2, 34)
INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (3, 3, 55)
INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (4, 4, 65)
INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (5, 1, 53)
INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (6, 2, 64)
INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (7, 3, 91)
INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (8, 4, 80)
INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (9, 1, 32)
INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (10, 2, 91)
INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (11, 3, 40)
INSERT [dbo].[tblTractorScores] ([Id], [TractorRef], [Score]) VALUES (12, 4, 22)
SET IDENTITY_INSERT [dbo].[tblTractorScores] OFF
ALTER TABLE [dbo].[tblTractor]  WITH CHECK ADD  CONSTRAINT [FK_tblTractor_tblOwner] FOREIGN KEY([OwnerRef])
REFERENCES [dbo].[tblOwner] ([Id])
GO
ALTER TABLE [dbo].[tblTractor] CHECK CONSTRAINT [FK_tblTractor_tblOwner]
GO
ALTER TABLE [dbo].[tblTractorScores]  WITH CHECK ADD  CONSTRAINT [FK_tblTractorScores_tblTractor] FOREIGN KEY([TractorRef])
REFERENCES [dbo].[tblTractor] ([Id])
GO
ALTER TABLE [dbo].[tblTractorScores] CHECK CONSTRAINT [FK_tblTractorScores_tblTractor]
GO
USE [master]
GO
ALTER DATABASE [Tractor.Pull] SET  READ_WRITE 
GO
