USE [master]
GO
/****** Object:  Database [FiverDB]    Script Date: 7/31/2014 10:29:36 AM ******/
CREATE DATABASE [FiverDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FiverDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\FiverDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FiverDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\FiverDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FiverDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FiverDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FiverDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FiverDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FiverDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FiverDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FiverDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FiverDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FiverDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FiverDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FiverDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FiverDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FiverDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FiverDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FiverDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FiverDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FiverDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FiverDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FiverDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FiverDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FiverDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FiverDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FiverDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FiverDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FiverDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FiverDB] SET  MULTI_USER 
GO
ALTER DATABASE [FiverDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FiverDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FiverDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FiverDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FiverDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FiverDB]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 7/31/2014 10:29:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ingredient](
	[IngredientId] [int] IDENTITY(1,1) NOT NULL,
	[IngredientName] [varchar](50) NULL,
	[IngredientType] [varchar](50) NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 7/31/2014 10:29:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recipe](
	[RecipeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[RecipeType] [varchar](50) NULL,
	[Servings] [int] NULL,
	[Directions] [varchar](5000) NULL,
	[PrepTime] [time](7) NULL,
	[CookTime] [time](7) NULL,
	[Ingredient1] [int] NULL,
	[Ingredient2] [int] NULL,
	[Ingredient3] [int] NULL,
	[Ingredient4] [int] NULL,
	[Ingredient5] [int] NULL,
	[Ingredient6] [int] NULL,
	[Ingredient7] [int] NULL,
	[Ingredient8] [int] NULL,
	[Ingredient9] [int] NULL,
	[Ingredient10] [int] NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[RecipeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Ingredient1] FOREIGN KEY([Ingredient1])
REFERENCES [dbo].[Ingredient] ([IngredientId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Ingredient1]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Ingredient10] FOREIGN KEY([Ingredient10])
REFERENCES [dbo].[Ingredient] ([IngredientId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Ingredient10]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Ingredient2] FOREIGN KEY([Ingredient2])
REFERENCES [dbo].[Ingredient] ([IngredientId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Ingredient2]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Ingredient3] FOREIGN KEY([Ingredient3])
REFERENCES [dbo].[Ingredient] ([IngredientId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Ingredient3]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Ingredient4] FOREIGN KEY([Ingredient4])
REFERENCES [dbo].[Ingredient] ([IngredientId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Ingredient4]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Ingredient5] FOREIGN KEY([Ingredient5])
REFERENCES [dbo].[Ingredient] ([IngredientId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Ingredient5]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Ingredient6] FOREIGN KEY([Ingredient6])
REFERENCES [dbo].[Ingredient] ([IngredientId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Ingredient6]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Ingredient7] FOREIGN KEY([Ingredient7])
REFERENCES [dbo].[Ingredient] ([IngredientId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Ingredient7]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Ingredient8] FOREIGN KEY([Ingredient8])
REFERENCES [dbo].[Ingredient] ([IngredientId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Ingredient8]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Ingredient9] FOREIGN KEY([Ingredient9])
REFERENCES [dbo].[Ingredient] ([IngredientId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Ingredient9]
GO
USE [master]
GO
ALTER DATABASE [FiverDB] SET  READ_WRITE 
GO
