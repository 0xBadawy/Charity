USE [master]
GO
/****** Object:  Database [DB_FWD]    Script Date: 28/10/2023 10:33:10 ص ******/
CREATE DATABASE [DB_FWD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_FWD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DB_FWD.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_FWD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DB_FWD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DB_FWD] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_FWD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_FWD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_FWD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_FWD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_FWD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_FWD] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_FWD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_FWD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_FWD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_FWD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_FWD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_FWD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_FWD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_FWD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_FWD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_FWD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_FWD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_FWD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_FWD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_FWD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_FWD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_FWD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_FWD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_FWD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_FWD] SET  MULTI_USER 
GO
ALTER DATABASE [DB_FWD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_FWD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_FWD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_FWD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_FWD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_FWD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DB_FWD] SET QUERY_STORE = ON
GO
ALTER DATABASE [DB_FWD] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DB_FWD]
GO
/****** Object:  Table [dbo].[TB_WL_CAT]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_WL_CAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WL_Category] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_WL_CAT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBE_LOC]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBE_LOC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LOC_Name] [nvarchar](50) NULL,
	[LOC_Key] [nvarchar](10) NULL,
 CONSTRAINT [PK_TBE_LOC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_SUPP]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_SUPP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SUPP_Name] [nvarchar](50) NULL,
	[SUPP_Adress] [int] NULL,
	[SUPP_SSN] [nvarchar](15) NULL,
	[SUPP_Phone1] [nvarchar](15) NULL,
	[SUPP_phone2] [nvarchar](15) NULL,
	[SUPP_Retion] [int] NULL,
	[SUPP_Bairth] [date] NULL,
	[SUPP_Date_Regest] [date] NULL,
 CONSTRAINT [PK_TB_SUPP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_WAT]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_WAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WAT_Name] [nvarchar](50) NULL,
	[WAT_Cat] [int] NULL,
	[WAT_SSN] [nvarchar](25) NULL,
	[WAT_Add] [int] NULL,
	[WAT_Phone1] [nvarchar](20) NULL,
	[WAT_Phone2] [nvarchar](20) NULL,
	[WAT_Supp_name] [int] NULL,
	[WAT_Supp_Phone] [nvarchar](15) NULL,
	[WAT_Det] [nvarchar](150) NULL,
	[WAT_Date_Order] [date] NULL,
	[WAT_Done_state] [nvarchar](50) NULL,
	[WAT_Done_Date] [date] NULL,
	[WAT_Date_Bairth] [date] NULL,
 CONSTRAINT [PK_TB_WAT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Wating_List_List]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[View_Wating_List_List]
as

SELECT TB_WAT.[ID]
      ,[WAT_Name]
      ,[WL_Category]
      ,[WAT_SSN]
      ,[LOC_Name]
      ,[LOC_Key]
      ,[WAT_Phone1]
      ,[WAT_Phone2]
      ,[SUPP_Name]
      ,[SUPP_Phone1]
      ,[WAT_Det]
      ,[WAT_Date_Order]
      ,[WAT_Done_state]
      ,[WAT_Done_Date]
      ,[WAT_Date_Bairth]
	  ,DATEDIFF(YEAR, [WAT_Date_Bairth], GETDATE()) AS Age
  FROM [DB_FWD].[dbo].[TB_WAT]
  left outer join TBE_LOC on TBE_LOC.ID = WAT_Add
  left outer join TB_WL_CAT on TB_WL_CAT.ID = WAT_Cat
  left outer join TB_SUPP on TB_SUPP.ID =WAT_Supp_name
GO
/****** Object:  View [dbo].[View_supp_list]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[View_supp_list]
as
SELECT DI.[ID]
      ,DI.[SUPP_Name]
      ,DI.[SUPP_SSN]
      ,DI.[SUPP_Phone1]
      ,DI.[SUPP_phone2]
      ,DI.[SUPP_Bairth]
	  ,DATEDIFF(YEAR, [SUPP_Bairth], GETDATE()) AS Age
      ,DI.[SUPP_Date_Regest]
	  ,L1.LOC_Name AS supp_Add
      ,L2.LOC_Name AS SUPP_Retion_Add
  FROM  TB_SUPP DI
  JOIN TBE_LOC L1 ON DI.SUPP_Adress = L1.ID
  JOIN TBE_LOC L2 ON DI.SUPP_Retion = L2.ID;
GO
/****** Object:  Table [dbo].[TB_Educational_Status]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Educational_Status](
	[Educational_Status_ID] [int] IDENTITY(1,1) NOT NULL,
	[Educational_Status_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Educational_Status] PRIMARY KEY CLUSTERED 
(
	[Educational_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CUST_Person]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUST_Person](
	[CUST_Main_ID] [int] IDENTITY(1,1) NOT NULL,
	[CUST_Person_Name] [nvarchar](50) NULL,
	[CUST_Person_SSN] [nvarchar](14) NULL,
	[CUST_Person_SO_ST] [int] NULL,
	[CUST_Person_Gen] [nvarchar](5) NULL,
	[CUST_Person_Eud] [int] NULL,
	[CUST_Person_Bairth] [date] NULL,
	[CUST_Person_Age] [int] NULL,
	[CUST_Person_Helth] [int] NULL,
	[CUST_Person_Helth_Det] [nvarchar](50) NULL,
	[CUST_Person_Phone_1] [nvarchar](12) NULL,
	[CUST_Person_Phone_2] [nvarchar](12) NULL,
	[CUST_Person_img_f] [image] NULL,
	[CUST_Person_img_b] [image] NULL,
 CONSTRAINT [PK_TB_CUST_Person] PRIMARY KEY CLUSTERED 
(
	[CUST_Main_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CUS_Family_Member]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUS_Family_Member](
	[CUST_Family_ID] [int] IDENTITY(1,1) NOT NULL,
	[CUST_Family_Member_Name] [nvarchar](50) NULL,
	[CUST_Family_Member_Relation] [nvarchar](8) NULL,
	[CUST_Family_Member_SSN] [nvarchar](14) NULL,
	[CUST_Family_Member_Age] [int] NULL,
	[CUST_Family_Member_Bairth] [date] NULL,
	[CUST_Family_Member_So_St] [int] NULL,
	[CUST_Family_Member_Edu] [int] NULL,
	[CUST_Family_Member_Helth] [int] NULL,
	[CUST_Family_Member_Helth_det] [nvarchar](50) NULL,
	[CUST_Family_Member_PK] [int] NULL,
 CONSTRAINT [PK_TB_CUS_Family_Member] PRIMARY KEY CLUSTERED 
(
	[CUST_Family_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Social_State]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Social_State](
	[Social_State_ID] [int] IDENTITY(1,1) NOT NULL,
	[Social_State_Name] [nvarchar](15) NULL,
 CONSTRAINT [PK_TB_Social_State] PRIMARY KEY CLUSTERED 
(
	[Social_State_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Health_Status]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Health_Status](
	[Health_Status_ID] [int] IDENTITY(1,1) NOT NULL,
	[Health_Status_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Health_Status] PRIMARY KEY CLUSTERED 
(
	[Health_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_CUST_Family]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create view [dbo].[View_CUST_Family] as
SELECT [CUST_Family_ID]
      ,[CUST_Family_Member_Name]
      ,[CUST_Family_Member_Relation]
      ,[CUST_Family_Member_SSN]     
      ,[CUST_Family_Member_Bairth]
	  ,DATEDIFF(YEAR, [CUST_Family_Member_Bairth], GETDATE()) AS Age
      ,Social_State_Name
      ,Educational_Status_Name
      ,Health_Status_Name
      ,[CUST_Family_Member_Helth_det]
      ,[CUST_Family_Member_PK]
	  ,CUST_Person_Name
  FROM [DB_FWD].[dbo].[TB_CUS_Family_Member]
  left outer join TB_Social_State on [CUST_Family_Member_So_St]=Social_State_ID
 left outer join TB_Educational_Status on Educational_Status_ID = [CUST_Family_Member_Edu]
 left outer join TB_Health_Status on [CUST_Family_Member_Helth] = Health_Status_ID
 left outer join TB_CUST_Person on CUST_Main_ID =CUST_Family_Member_PK
GO
/****** Object:  Table [dbo].[TB_Family_Owns_Type]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Family_Owns_Type](
	[Family_Owns_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Family_Owns_Type_Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_TB_Family_Owns_Type] PRIMARY KEY CLUSTERED 
(
	[Family_Owns_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CUST_Property]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUST_Property](
	[CUST_Property_ID] [int] IDENTITY(1,1) NOT NULL,
	[CUST_Property_Name] [int] NULL,
	[CUST_Property_value] [float] NULL,
	[CUST_Property_Det] [nvarchar](50) NULL,
	[CUST_Property_PK] [int] NULL,
 CONSTRAINT [PK_TB_CUST_Property] PRIMARY KEY CLUSTERED 
(
	[CUST_Property_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_CUST_Propert]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[View_CUST_Propert]
as
SELECT [CUST_Property_ID]
      ,Family_Owns_Type_Name
      ,[CUST_Property_value]
      ,[CUST_Property_Det]
      ,[CUST_Property_PK]
  FROM [DB_FWD].[dbo].[TB_CUST_Property]
  left outer join TB_Family_Owns_Type on Family_Owns_Type_ID = CUST_Property_Name
GO
/****** Object:  Table [dbo].[TB_Family_Needs_Type]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Family_Needs_Type](
	[Family_Needs_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Family_Needs_Type_Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_TB_Family_Needs_Type] PRIMARY KEY CLUSTERED 
(
	[Family_Needs_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CUST_Need]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUST_Need](
	[CUST_Need_ID] [int] IDENTITY(1,1) NOT NULL,
	[CUST_Need_Type] [int] NULL,
	[CUST_Need_type_det] [nvarchar](150) NULL,
	[CUST_Need_FK] [int] NULL,
 CONSTRAINT [PK_TB_CUST_Need] PRIMARY KEY CLUSTERED 
(
	[CUST_Need_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_CUST_Need]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/


create view [dbo].[View_CUST_Need] 
as
SELECT  [CUST_Need_ID]
      ,[Family_Needs_Type_Name]
      ,[CUST_Need_type_det]
      ,[CUST_Need_FK]
  FROM [DB_FWD].[dbo].[TB_CUST_Need]
  left outer join TB_Family_Needs_Type on Family_Needs_Type_ID= CUST_Need_Type
GO
/****** Object:  Table [dbo].[TB_CUST_Father]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUST_Father](
	[Father_ID] [int] IDENTITY(1,1) NOT NULL,
	[CUST_Father_Name] [nvarchar](50) NULL,
	[CUST_Father_SSN] [nvarchar](50) NULL,
	[CUST_Father_Edu] [int] NULL,
	[CUST_Father_Bairth] [date] NULL,
	[CUST_Father_Age] [int] NULL,
	[CUST_Father_helth] [int] NULL,
	[CUST_Father_Helth_det] [nvarchar](50) NULL,
	[CUST_Father_Phone] [nvarchar](12) NULL,
	[CUST_Father_FK] [int] NULL,
 CONSTRAINT [PK_TB_CUST_Father] PRIMARY KEY CLUSTERED 
(
	[Father_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CUST_Resercher]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUST_Resercher](
	[CUST_Resercher_ID] [int] IDENTITY(1,1) NOT NULL,
	[CUST_Resercher_Name] [int] NULL,
	[CUST_Resercher_Date] [date] NULL,
	[CUST_Resercher_Supp] [int] NULL,
	[CUST_Resercher_Direction] [nvarchar](50) NULL,
	[CUST_Resercher_Deg] [int] NULL,
	[CUST_Resercher_State] [int] NULL,
	[CUST_Resercher_Opin] [nvarchar](150) NULL,
	[CUST_Resercher_FK] [int] NULL,
 CONSTRAINT [PK_TB_CUST_Resercher] PRIMARY KEY CLUSTERED 
(
	[CUST_Resercher_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CUST_Home]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUST_Home](
	[CUST_Home_ID] [int] IDENTITY(1,1) NOT NULL,
	[CUST_Home_Own] [nvarchar](6) NULL,
	[CUST_Home_Room_Num] [int] NULL,
	[CUST_Home_Floor_Num] [int] NULL,
	[CUST_Home_Struct_Type] [nvarchar](15) NULL,
	[CUST_Home_Floor_Type] [nvarchar](15) NULL,
	[CUST_Home_Ceil_Type] [nvarchar](15) NULL,
	[CUST_Home_Elec] [bit] NULL,
	[CUST_Home_Water] [bit] NULL,
	[CUST_Home_WC] [bit] NULL,
	[CUST_Home_Gas] [bit] NULL,
	[CUST_Home_Frizer] [bit] NULL,
	[CUST_Home_cooler] [bit] NULL,
	[CUST_Home_washing] [bit] NULL,
	[CUST_Home_Botogaz] [bit] NULL,
	[CUST_Home_AC] [bit] NULL,
	[CUST_Home_TV] [bit] NULL,
	[CUST_Home_Cooker] [bit] NULL,
	[CUST_Home_More_Info] [nvarchar](50) NULL,
	[CUST_Home_PK] [int] NULL,
	[CUST_Home_Add] [int] NULL,
	[CUST_Home_Add_Det] [nvarchar](60) NULL,
 CONSTRAINT [PK_TB_CUST_Home] PRIMARY KEY CLUSTERED 
(
	[CUST_Home_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Rank]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Rank](
	[Rank_ID] [int] IDENTITY(1,1) NOT NULL,
	[Rank_Name] [nvarchar](15) NULL,
 CONSTRAINT [PK_TB_Rank] PRIMARY KEY CLUSTERED 
(
	[Rank_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_CUST_Main_data_01]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[View_CUST_Main_data_01]
as

SELECT [CUST_Main_ID]
      ,[CUST_Person_Name]
      ,[CUST_Person_SSN]
      ,[CUST_Person_SO_ST]
      ,[CUST_Person_Gen]
	  ,Ed_pr.[Educational_Status_Name] as person_Educational_Status_Name
      ,[CUST_Person_Bairth]
	  ,DATEDIFF(YEAR, [CUST_Person_Bairth], GETDATE()) AS Age_person
      ,HS_pr.[Health_Status_Name] as person_Health_Status_Name
      ,[CUST_Person_Helth_Det]
      ,[CUST_Person_Phone_1]
      ,[CUST_Person_Phone_2]
	  ,[CUST_Father_Name]
      ,[CUST_Father_SSN]
      ,[CUST_Father_Edu]
	  ,Ed_fa.[Educational_Status_Name] as Father_Educational_Status_Name
      ,[CUST_Father_Bairth]
	  ,DATEDIFF(YEAR, [CUST_Father_Bairth], GETDATE()) AS Age_father
      ,[CUST_Father_helth]
	  ,HS_fa.[Health_Status_Name] as Father_Health_Status_Name
      ,[CUST_Father_Helth_det]
      ,[CUST_Father_Phone]      
	  ,[CUST_Home_Own]
      ,[CUST_Home_Room_Num]
      ,[CUST_Home_Floor_Num]
      ,[CUST_Home_Struct_Type]
      ,[CUST_Home_Floor_Type]
      ,[CUST_Home_Ceil_Type]
      ,[CUST_Home_Elec]
      ,[CUST_Home_Water]
      ,[CUST_Home_WC]
      ,[CUST_Home_Gas]
      ,[CUST_Home_Frizer]
      ,[CUST_Home_cooler]
      ,[CUST_Home_washing]
      ,[CUST_Home_Botogaz]
      ,[CUST_Home_AC]
      ,[CUST_Home_TV]
      ,[CUST_Home_Cooker]
      ,[CUST_Home_More_Info]
      ,[LOC_Name]
      ,[CUST_Home_Add_Det]
	  ,[CUST_Resercher_Name]
      ,[CUST_Resercher_Date]
      ,[CUST_Resercher_Supp]
      ,[CUST_Resercher_Direction]
      ,[CUST_Resercher_Deg]
      ,[Rank_Name]
      ,[CUST_Resercher_Opin]
  FROM [DB_FWD].[dbo].[TB_CUST_Person]
  left outer join TB_CUST_Father on CUST_Father_FK = CUST_Main_ID
  left outer join TB_CUST_Home on CUST_Home_PK = CUST_Main_ID
  left outer join TB_CUST_Resercher on CUST_Resercher_FK  = CUST_Main_ID
  left outer join  TB_Educational_Status Ed_pr on CUST_Person_Eud = Ed_pr.Educational_Status_ID
  left outer join  TB_Health_Status HS_pr on  HS_pr.Health_Status_ID  =  CUST_Person_Helth
  left outer join  TB_Educational_Status Ed_fa on CUST_Person_Eud = Ed_fa.Educational_Status_ID
  left outer join  TB_Health_Status HS_fa on  HS_fa.Health_Status_ID  =  CUST_Person_Helth
  left outer join  TBE_LOC on CUST_Home_Add =  ID
  left outer join  TB_Rank on  Rank_ID  =  CUST_Resercher_State
GO
/****** Object:  Table [dbo].[TB_DON]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DON](
	[ID] [int] IDENTITY(1000,1) NOT NULL,
	[DON_Name] [int] NULL,
	[DON_Dir] [int] NULL,
	[DON_Amount] [float] NULL,
	[DON_Amo_txt] [nvarchar](160) NULL,
	[DON_Resever] [int] NULL,
	[DON_Date] [date] NULL,
 CONSTRAINT [PK_TB_DON] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Donner_info]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Donner_info](
	[Donner_ID] [int] IDENTITY(1,1) NOT NULL,
	[Donner_Name] [nvarchar](50) NULL,
	[Donner_proNoun] [nvarchar](50) NULL,
	[Donner_SSN] [nvarchar](14) NULL,
	[Donner_Phone] [nvarchar](11) NULL,
	[Donner_Add] [int] NULL,
	[Donner_Jop_Add] [int] NULL,
 CONSTRAINT [PK_TB_Donner_info] PRIMARY KEY CLUSTERED 
(
	[Donner_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Donation_Dirction]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Donation_Dirction](
	[Donation_Dir_ID] [int] IDENTITY(1,1) NOT NULL,
	[Donation_Dir_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Donation_Dirction] PRIMARY KEY CLUSTERED 
(
	[Donation_Dir_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Emploee]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Emploee](
	[Emploee_ID] [int] IDENTITY(1,1) NOT NULL,
	[Emploee_Name] [nvarchar](50) NULL,
	[Emploee_UserName] [varchar](50) NULL,
	[Emploee_Password] [varchar](50) NULL,
	[Emploee_phone] [nvarchar](11) NULL,
	[Emploee_Roll] [int] NULL,
	[Emploee_Roll_login_State] [nvarchar](50) NULL,
	[Emploee_permitions] [int] NULL,
 CONSTRAINT [PK_TB_Emploee] PRIMARY KEY CLUSTERED 
(
	[Emploee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [CONSTRAINT_1] UNIQUE NONCLUSTERED 
(
	[Emploee_UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Donation_List_New]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[View_Donation_List_New]
as
SELECT [ID]
      ,[Donner_Name]
      ,[Donner_Phone]
      ,[Donation_Dir_Name]
      ,[DON_Amount]
      ,[DON_Amo_txt]
      ,[Emploee_Name]
      ,[DON_Date]
  FROM [TB_DON]
  left outer join TB_Donner_info on Donner_ID = DON_Name
  left outer join TB_Donation_Dirction on DON_Dir = Donation_Dir_ID  
  left outer join TB_Emploee on Emploee_ID = DON_Resever

GO
/****** Object:  View [dbo].[View_customer_main_data]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[View_customer_main_data]
as
SELECT [CUST_Main_ID]
      ,[CUST_Person_Name]
      ,[CUST_Person_SSN]
      ,[CUST_Person_SO_ST]
      ,[CUST_Person_Gen]
	  ,Ed_pr.[Educational_Status_Name] as person_Educational_Status_Name
      ,[CUST_Person_Bairth]
	  ,DATEDIFF(YEAR, [CUST_Person_Bairth], GETDATE()) AS Age_person
      ,HS_pr.[Health_Status_Name] as person_Health_Status_Name
      ,[CUST_Person_Helth_Det]
      ,[CUST_Person_Phone_1]
      ,[CUST_Person_Phone_2]
	  ,[CUST_Father_Name]
      ,[CUST_Father_SSN]
      ,[CUST_Father_Edu]
	  ,Ed_fa.[Educational_Status_Name] as Father_Educational_Status_Name
      ,[CUST_Father_Bairth]
	  ,DATEDIFF(YEAR, [CUST_Father_Bairth], GETDATE()) AS Age_father
      ,[CUST_Father_helth]
	  ,HS_fa.[Health_Status_Name] as Father_Health_Status_Name
      ,[CUST_Father_Helth_det]
      ,[CUST_Father_Phone]      
	  ,[CUST_Home_Own]
      ,[CUST_Home_Room_Num]
      ,[CUST_Home_Floor_Num]
      ,[CUST_Home_Struct_Type]
      ,[CUST_Home_Floor_Type]
      ,[CUST_Home_Ceil_Type]
      ,[CUST_Home_Elec]
      ,[CUST_Home_Water]
      ,[CUST_Home_WC]
      ,[CUST_Home_Gas]
      ,[CUST_Home_Frizer]
      ,[CUST_Home_cooler]
      ,[CUST_Home_washing]
      ,[CUST_Home_Botogaz]
      ,[CUST_Home_AC]
      ,[CUST_Home_TV]
      ,[CUST_Home_Cooker]
      ,[CUST_Home_More_Info]
      ,[LOC_Name]
      ,[CUST_Home_Add_Det]
	  ,[CUST_Resercher_Name]
      ,[CUST_Resercher_Date]
      ,[CUST_Resercher_Supp]
      ,[CUST_Resercher_Direction]
      ,[CUST_Resercher_Deg]
      ,[Rank_Name]
      ,[CUST_Resercher_Opin]
  FROM [DB_FWD].[dbo].[TB_CUST_Person]
  left outer join TB_CUST_Father on CUST_Father_FK = CUST_Main_ID
  left outer join TB_CUST_Home on CUST_Home_PK = CUST_Main_ID
  left outer join TB_CUST_Resercher on CUST_Resercher_FK  = CUST_Main_ID
  left outer join  TB_Educational_Status Ed_pr on CUST_Person_Eud = Ed_pr.Educational_Status_ID
  left outer join  TB_Health_Status HS_pr on  HS_pr.Health_Status_ID  =  CUST_Person_Helth
  left outer join  TB_Educational_Status Ed_fa on CUST_Person_Eud = Ed_fa.Educational_Status_ID
  left outer join  TB_Health_Status HS_fa on  HS_fa.Health_Status_ID  =  CUST_Person_Helth
  left outer join TBE_LOC on CUST_Home_Add =  ID
  left outer join TB_Rank on  Rank_ID  =  CUST_Resercher_State


GO
/****** Object:  Table [dbo].[TB_Emploee_Roll]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Emploee_Roll](
	[Emploee_Roll_ID] [int] IDENTITY(1,1) NOT NULL,
	[Emploee_Roll_Name] [nvarchar](50) NULL,
	[Emploee_Roll_E_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Emploee_Roll] PRIMARY KEY CLUSTERED 
(
	[Emploee_Roll_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_Emploee_login]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[view_Emploee_login] 
as
SELECT [Emploee_ID]
      ,[Emploee_Name]
      ,[Emploee_UserName]
      ,[Emploee_Password]
      ,[Emploee_phone]
      ,[Emploee_Roll_Name]
      ,[Emploee_Roll_E_Name]
      ,[Emploee_Roll_login_State]
  FROM [DB_FWD].[dbo].[TB_Emploee]
  left outer join TB_Emploee_Roll on Emploee_Roll =Emploee_Roll_ID
GO
/****** Object:  View [dbo].[New_test_baisic]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[New_test_baisic]
as
SELECT 
	   CUST_Main_ID
      ,CUST_Person_Name
      ,CUST_Person_SSN
      ,CUST_Person_SO_ST
      ,CUST_Person_Gen
      ,CUST_Person_Eud
      ,CUST_Person_Bairth
      ,CUST_Person_Age
      ,CUST_Person_Helth
      ,CUST_Person_Helth_Det
      ,CUST_Person_Phone_1
      ,CUST_Person_Phone_2

	  ,CUST_Father_Name
      ,CUST_Father_SSN
      ,CUST_Father_Edu
      ,CUST_Father_Bairth
      ,CUST_Father_Age
      ,CUST_Father_helth
      ,CUST_Father_Helth_det
      ,CUST_Father_Phone
      ,CUST_Father_FK


	  ,CUST_Home_ID
      ,CUST_Home_Own
      ,CUST_Home_Room_Num
      ,CUST_Home_Floor_Num
      ,CUST_Home_Struct_Type
      ,CUST_Home_Floor_Type
      ,CUST_Home_Ceil_Type
      ,CUST_Home_Elec
      ,CUST_Home_Water
      ,CUST_Home_WC
      ,CUST_Home_Gas
      ,CUST_Home_Frizer
      ,CUST_Home_cooler
      ,CUST_Home_washing
      ,CUST_Home_Botogaz
      ,CUST_Home_AC
      ,CUST_Home_TV
      ,CUST_Home_Cooker
      ,CUST_Home_More_Info
      ,CUST_Home_PK
      ,CUST_Home_Add
      ,CUST_Home_Add_Det

	  ,CUST_Resercher_Name
      ,CUST_Resercher_Date
      ,CUST_Resercher_Supp
      ,CUST_Resercher_Direction
      ,CUST_Resercher_Deg
      ,CUST_Resercher_State
      ,CUST_Resercher_Opin
      ,CUST_Resercher_FK

FROM TB_CUST_Person

left outer join TB_CUST_Father on CUST_Main_ID =CUST_Father_FK

left outer join TB_CUST_Home on CUST_Main_ID =CUST_Home_PK

left outer join TB_CUST_Resercher on CUST_Main_ID =CUST_Resercher_FK




GO
/****** Object:  View [dbo].[New_test_baisic_1]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[New_test_baisic_1]
as
SELECT top(1)
	   CUST_Main_ID
      ,CUST_Person_Name
      ,CUST_Person_SSN
      ,CUST_Person_SO_ST
      ,CUST_Person_Gen
      ,CUST_Person_Eud
      ,CUST_Person_Bairth
      ,CUST_Person_Age
      ,CUST_Person_Helth
      ,CUST_Person_Helth_Det
      ,CUST_Person_Phone_1
      ,CUST_Person_Phone_2

	  ,CUST_Father_Name
      ,CUST_Father_SSN
      ,CUST_Father_Edu
      ,CUST_Father_Bairth
      ,CUST_Father_Age
      ,CUST_Father_helth
      ,CUST_Father_Helth_det
      ,CUST_Father_Phone
      ,CUST_Father_FK


	  ,CUST_Home_ID
      ,CUST_Home_Own
      ,CUST_Home_Room_Num
      ,CUST_Home_Floor_Num
      ,CUST_Home_Struct_Type
      ,CUST_Home_Floor_Type
      ,CUST_Home_Ceil_Type
      ,CUST_Home_Elec
      ,CUST_Home_Water
      ,CUST_Home_WC
      ,CUST_Home_Gas
      ,CUST_Home_Frizer
      ,CUST_Home_cooler
      ,CUST_Home_washing
      ,CUST_Home_Botogaz
      ,CUST_Home_AC
      ,CUST_Home_TV
      ,CUST_Home_Cooker
      ,CUST_Home_More_Info
      ,CUST_Home_PK
      ,CUST_Home_Add
      ,CUST_Home_Add_Det

	  ,CUST_Resercher_Name
      ,CUST_Resercher_Date
      ,CUST_Resercher_Supp
      ,CUST_Resercher_Direction
      ,CUST_Resercher_Deg
      ,CUST_Resercher_State
      ,CUST_Resercher_Opin
      ,CUST_Resercher_FK

FROM TB_CUST_Person

left outer join TB_CUST_Father on CUST_Main_ID =CUST_Father_FK

left outer join TB_CUST_Home on CUST_Main_ID =CUST_Home_PK

left outer join TB_CUST_Resercher on CUST_Main_ID =CUST_Resercher_FK




GO
/****** Object:  View [dbo].[New_test_baisic_2]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[New_test_baisic_2]
as
SELECT 
	   CUST_Main_ID
      ,CUST_Person_Name
      ,CUST_Person_SSN
      ,CUST_Person_SO_ST
      ,CUST_Person_Gen
      ,CUST_Person_Eud
      ,CUST_Person_Bairth
      ,CUST_Person_Age
      ,CUST_Person_Helth
      ,CUST_Person_Helth_Det
      ,CUST_Person_Phone_1
      ,CUST_Person_Phone_2

	  ,CUST_Father_Name
      ,CUST_Father_SSN
      ,CUST_Father_Edu
      ,CUST_Father_Bairth
      ,CUST_Father_Age
      ,CUST_Father_helth
      ,CUST_Father_Helth_det
      ,CUST_Father_Phone
      ,CUST_Father_FK


	  ,CUST_Home_ID
      ,CUST_Home_Own
      ,CUST_Home_Room_Num
      ,CUST_Home_Floor_Num
      ,CUST_Home_Struct_Type
      ,CUST_Home_Floor_Type
      ,CUST_Home_Ceil_Type
      ,CUST_Home_Elec
      ,CUST_Home_Water
      ,CUST_Home_WC
      ,CUST_Home_Gas
      ,CUST_Home_Frizer
      ,CUST_Home_cooler
      ,CUST_Home_washing
      ,CUST_Home_Botogaz
      ,CUST_Home_AC
      ,CUST_Home_TV
      ,CUST_Home_Cooker
      ,CUST_Home_More_Info
      ,CUST_Home_PK
      ,CUST_Home_Add
      ,CUST_Home_Add_Det

	  ,CUST_Resercher_Name
      ,CUST_Resercher_Date
      ,CUST_Resercher_Supp
      ,CUST_Resercher_Direction
      ,CUST_Resercher_Deg
      ,CUST_Resercher_State
      ,CUST_Resercher_Opin
      ,CUST_Resercher_FK

FROM TB_CUST_Person

full outer join TB_CUST_Father on CUST_Main_ID =CUST_Father_FK

full outer join TB_CUST_Home on CUST_Main_ID =CUST_Home_PK

full outer join TB_CUST_Resercher on CUST_Main_ID =CUST_Resercher_FK




GO
/****** Object:  Table [dbo].[TB_General_report]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_General_report](
	[General_report_ID] [int] IDENTITY(1,1) NOT NULL,
	[General_report_Number] [int] NULL,
	[General_report_day] [nvarchar](15) NULL,
	[General_report_date] [date] NULL,
	[General_report_start] [nvarchar](50) NULL,
	[General_report_end] [nvarchar](50) NULL,
	[General_report_table] [nvarchar](max) NULL,
	[General_report_dessition] [nvarchar](max) NULL,
	[General_report_attend] [nvarchar](max) NULL,
	[General_report_create_date] [date] NULL,
	[General_report_writer] [int] NULL,
 CONSTRAINT [PK_TB_General_report] PRIMARY KEY CLUSTERED 
(
	[General_report_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_General_report]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[View_General_report]
as

SELECT [General_report_ID]
      ,[General_report_Number]
      ,[General_report_day]
      ,[General_report_date]
      ,[General_report_start]
      ,[General_report_end]
      ,[General_report_table]
      ,[General_report_dessition]
      ,[General_report_attend]
      ,[General_report_create_date]
      ,[Emploee_Name]
  FROM [DB_FWD].[dbo].[TB_General_report]
  left outer join TB_Emploee on General_report_writer = Emploee_ID
GO
/****** Object:  Table [dbo].[TB_Registered_Users]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Registered_Users](
	[Registered_Users_ID] [int] IDENTITY(1,1) NOT NULL,
	[Registered_Users_Name] [nvarchar](50) NULL,
	[Registered_Users_so_st] [int] NULL,
	[Registered_Users_Ssn] [nvarchar](14) NULL,
	[Registered_Users_Hus_Name] [nvarchar](50) NULL,
	[Registered_Users_Hus_Ssn] [nvarchar](14) NULL,
	[Registered_Users_Hus_Phone] [nvarchar](11) NULL,
	[Registered_Users_phone] [nvarchar](11) NULL,
	[Registered_Users_Fam_Num] [int] NULL,
	[Registered_Users_Add] [int] NULL,
	[Registered_Users_Add_det] [nvarchar](50) NULL,
	[Registered_Users_incom_name] [nvarchar](50) NULL,
	[Registered_Users_income_val] [float] NULL,
	[Registered_Users_Supp] [int] NULL,
	[Registered_Users_Rank] [int] NULL,
	[Registered_Users_Helth] [int] NULL,
	[Registered_Users_Helth_info] [nvarchar](50) NULL,
	[Registered_Users_BairthDay] [date] NULL,
 CONSTRAINT [PK_TB_Registered_Users] PRIMARY KEY CLUSTERED 
(
	[Registered_Users_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UNIQUE_Registered_SSN] UNIQUE NONCLUSTERED 
(
	[Registered_Users_Ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Registered_Users]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/

create view [dbo].[View_Registered_Users]
as
SELECT Registered_Users_ID
      ,Registered_Users_Name
	  ,Social_State_Name ----
      ,Registered_Users_Ssn
      ,Registered_Users_Hus_Name
      ,Registered_Users_Hus_Ssn
      ,Registered_Users_Hus_Phone
      ,Registered_Users_phone
      ,Registered_Users_Fam_Num
      ,Registered_Users_Add_det
	  ,LOC_Name
      ,Registered_Users_incom_name
      ,Registered_Users_income_val
	  ,SUPP_Name
	  ,Rank_Name
	  ,Health_Status_Name
      ,Registered_Users_Helth_info
  FROM TB_Registered_Users 
  join TB_Social_State on Registered_Users_so_st=Social_State_ID
  join TBE_LOC on Registered_Users_Add = TBE_LOC.ID
  join TB_SUPP on Registered_Users_Supp = TB_SUPP.ID
  join TB_Rank on Registered_Users_Rank = Rank_ID
  join TB_Health_Status on Registered_Users_Helth = Health_Status_ID
GO
/****** Object:  View [dbo].[View_RankView]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_RankView] AS
SELECT [Rank_Name],COUNT(*) AS Frequency
FROM TB_Registered_Users left outer join TB_Rank on Rank_ID = Registered_Users_Rank
GROUP BY Rank_Name
GO
/****** Object:  Table [dbo].[TB_RES]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_RES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RES_Name] [nvarchar](50) NULL,
	[RES_Add] [int] NULL,
	[RES_SSN] [nvarchar](14) NULL,
	[RES_Phone] [nvarchar](12) NULL,
 CONSTRAINT [PK_TB_RES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_reserchers2]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[View_reserchers2]
as
SELECT 
       TB_RES.[ID]
      ,[RES_Name]
      ,LOC_Name
      ,[RES_SSN]
      ,[RES_Phone]
  FROM [DB_FWD].[dbo].[TB_RES]
  	 left outer join TBE_LOC on RES_Add = TBE_LOC.ID
GO
/****** Object:  Table [dbo].[TB_Take_Course]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Take_Course](
	[Take_Course_ID] [int] IDENTITY(1,1) NOT NULL,
	[Take_Course_Course] [int] NULL,
	[Take_Course_Student] [int] NULL,
 CONSTRAINT [PK_TB_Take_Course] PRIMARY KEY CLUSTERED 
(
	[Take_Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Course_info]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Course_info](
	[Course_ID] [int] IDENTITY(1,1) NOT NULL,
	[Course_Name] [nvarchar](50) NULL,
	[Course_teraner] [nvarchar](50) NULL,
	[Course_start] [datetime] NULL,
	[Course_end] [datetime] NULL,
	[Course_owner] [nvarchar](50) NULL,
	[Course_teatcher_cost] [float] NULL,
	[Course_Price] [float] NULL,
	[Course_studet_tax] [float] NULL,
	[Course_treener_manager] [nvarchar](50) NULL,
	[Course_location] [nchar](10) NULL,
	[Course_more_info] [nvarchar](100) NULL,
	[Course_teacher_phone] [nvarchar](11) NULL,
	[Course_student_num] [int] NULL,
 CONSTRAINT [PK_TB_Course_info] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Take_Course]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  create view [dbo].[View_Take_Course]
  as
  SELECT
    Take_Course_ID,
    Registered_Users_Name,
    Registered_Users_ssn,
    Registered_Users_phone,
    Course_Name,
    CONVERT(DATE, Course_start) AS Course_start,
    CONVERT(DATE, Course_end) AS Course_end,
    Course_Price,
    Take_Course_Course,
    Take_Course_Student
FROM
    TB_Take_Course
    JOIN TB_Course_info ON Take_Course_Course = Course_ID
    JOIN TB_Registered_Users ON Take_Course_Student = Registered_Users_ID
GO
/****** Object:  View [dbo].[View_Wating_State]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE VIEW [dbo].[View_Wating_State] AS
SELECT [WAT_Done_state],COUNT(*) AS Frequency
FROM TB_WAT
GROUP BY WAT_Done_state
GO
/****** Object:  Table [dbo].[TB_SELL]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_SELL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SELL_Person_Code] [int] NULL,
	[SELL_Resv_Name] [nvarchar](50) NULL,
	[SELL_Cat] [int] NULL,
	[SELL_Date] [datetime] NULL,
	[SELL_Num] [int] NULL,
	[SELL_Charity_Rcever] [int] NULL,
 CONSTRAINT [PK_TB_SELL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PUR]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PUR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PUR_Name] [nvarchar](50) NULL,
	[PUR_Date] [date] NULL,
	[PUR_supp] [nvarchar](50) NULL,
	[PUR_Det] [nvarchar](200) NULL,
	[PUR_Val] [float] NULL,
	[PUR_Qt] [float] NULL,
 CONSTRAINT [PK_TB_PUR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Receive_Categroy]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/

create view [dbo].[View_Receive_Categroy]
as
SELECT TB_SELL.ID
	  ,Registered_Users_Name
	  ,Registered_Users_Ssn
	  ,Registered_Users_phone
      ,SELL_Resv_Name
	  ,PUR_Name
      ,SELL_Date
      ,SELL_Num
  FROM TB_SELL
  join TB_Registered_Users on SELL_Person_Code = Registered_Users_ID
  join TB_PUR on TB_PUR.ID=SELL_Cat
GO
/****** Object:  View [dbo].[View_AddressView]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_AddressView]
AS
SELECT
    ROW_NUMBER() OVER (ORDER BY [LOC_Name]) AS AddressID,
    [LOC_Name],
    COUNT(*) AS Frequency
FROM
    TB_Registered_Users
    LEFT OUTER JOIN TBE_LOC ON TBE_LOC.ID = Registered_Users_Add
GROUP BY
    [LOC_Name];
GO
/****** Object:  View [dbo].[ViewTemp1]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[ViewTemp1] AS
SELECT [Rank_Name]
FROM TB_Registered_Users left outer join TB_Rank on Rank_ID = Registered_Users_Rank

GO
/****** Object:  View [dbo].[ViewTemp_2]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewTemp_2] AS
SELECT [Registered_Users_ID],[Rank_Name]
FROM TB_Registered_Users left outer join TB_Rank on Rank_ID = Registered_Users_Rank

GO
/****** Object:  View [dbo].[View_RankView_4]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_RankView_4] AS


SELECT [Rank_Name],COUNT(*) AS Frequency
FROM ViewTemp_2
GROUP BY Rank_Name
GO
/****** Object:  View [dbo].[View_Donor]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Donor]
AS
SELECT DI.Donner_ID
      ,DI.Donner_Name
      ,DI.Donner_proNoun
      ,DI.Donner_SSN
      ,DI.Donner_Phone
      ,L1.LOC_Name AS Donner_Add
      ,L2.LOC_Name AS Donner_Job_Add
FROM TB_Donner_info DI
JOIN TBE_LOC L1 ON DI.Donner_Add = L1.ID
JOIN TBE_LOC L2 ON DI.Donner_Jop_Add = L2.ID;
GO
/****** Object:  Table [dbo].[TB_Medical_tool]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Medical_tool](
	[Medical_tool_ID] [int] IDENTITY(1,1) NOT NULL,
	[Medical_tool_Name] [nvarchar](50) NULL,
	[Medical_tool_owner] [nvarchar](50) NULL,
	[Medical_tool_image] [image] NULL,
	[Medical_tool_info] [nvarchar](80) NULL,
	[Medical_tool_num] [int] NULL,
 CONSTRAINT [PK_TB_Medical_tool] PRIMARY KEY CLUSTERED 
(
	[Medical_tool_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Medical_give]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Medical_give](
	[Medical_give_ID] [int] IDENTITY(1,1) NOT NULL,
	[Medical_give_tool_Name] [int] NULL,
	[Medical_give_patient] [nvarchar](50) NULL,
	[Medical_give_recever] [nvarchar](50) NULL,
	[Medical_give_recever_ssn] [nvarchar](14) NULL,
	[Medical_give_recever_phone] [nvarchar](11) NULL,
	[Medical_give_recever_add] [int] NULL,
	[Medical_give_charity_recever] [int] NULL,
	[Medical_give_date] [date] NULL,
	[Medical_give_return_status] [nvarchar](50) NULL,
	[Medical_give_return_Date] [date] NULL,
 CONSTRAINT [PK_TB_Medical_give] PRIMARY KEY CLUSTERED 
(
	[Medical_give_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_Medical_give_and_tool]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_Medical_give_and_tool]
as

SELECT Medical_give_ID
      ,Medical_tool_Name
      ,Medical_give_patient      
      ,Medical_give_date
  FROM TB_Medical_give
  join TB_Medical_tool on Medical_give_tool_Name = Medical_tool_ID
GO
/****** Object:  View [dbo].[view_Medical_give_and_tool_2]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_Medical_give_and_tool_2]
as

SELECT Medical_give_ID
      ,Medical_tool_Name
      ,Medical_give_patient      
      ,Medical_give_date
	  ,Medical_give_recever
  FROM TB_Medical_give
  join TB_Medical_tool on Medical_give_tool_Name = Medical_tool_ID
GO
/****** Object:  View [dbo].[View_Medical_Give_List]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[View_Medical_Give_List]
AS
SELECT        dbo.TB_Medical_give.Medical_give_ID, dbo.TB_Medical_tool.Medical_tool_Name, dbo.TB_Medical_give.Medical_give_patient, dbo.TB_Medical_give.Medical_give_recever, dbo.TB_Medical_give.Medical_give_recever_ssn, 
                         dbo.TB_Medical_give.Medical_give_recever_phone, dbo.TBE_LOC.LOC_Name, dbo.TB_Medical_give.Medical_give_charity_recever, dbo.TB_Medical_give.Medical_give_date, 
                         dbo.TB_Medical_give.Medical_give_return_status, dbo.TB_Medical_give.Medical_give_return_Date, dbo.TB_Emploee.Emploee_Name
FROM            dbo.TB_Medical_give LEFT OUTER JOIN
                         dbo.TB_Medical_tool ON dbo.TB_Medical_give.Medical_give_tool_Name = dbo.TB_Medical_tool.Medical_tool_ID LEFT OUTER JOIN
                         dbo.TBE_LOC ON dbo.TBE_LOC.ID = dbo.TB_Medical_give.Medical_give_recever_add LEFT OUTER JOIN
                         dbo.TB_Emploee ON dbo.TB_Medical_give.Medical_give_charity_recever = dbo.TB_Emploee.Emploee_ID
GO
/****** Object:  Table [dbo].[TB_volunteer]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_volunteer](
	[volunteer_ID] [int] IDENTITY(1,1) NOT NULL,
	[volunteer_Name] [nvarchar](50) NULL,
	[volunteer_SSN] [nvarchar](14) NULL,
	[volunteer_Phone] [nvarchar](11) NULL,
	[volunteer_Department_1] [int] NULL,
	[volunteer_Department_2] [int] NULL,
	[volunteer_type] [int] NULL,
	[volunteer_type_num] [nvarchar](10) NULL,
	[volunteer_Add] [int] NULL,
	[volunteer_Work_add] [int] NULL,
	[volunteer_Tax] [float] NULL,
	[volunteer_Jop] [nvarchar](50) NULL,
	[volunteer_more_info] [nvarchar](150) NULL,
	[volunteer_Start_Date] [date] NULL,
	[volunteer_Bairth] [date] NULL,
	[volunteer_sol_st] [int] NULL,
 CONSTRAINT [PK_TB_volunteer] PRIMARY KEY CLUSTERED 
(
	[volunteer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Committee]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Committee](
	[Committee_ID] [int] IDENTITY(1,1) NOT NULL,
	[Committee_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Committee] PRIMARY KEY CLUSTERED 
(
	[Committee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Volunteer_Type]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Volunteer_Type](
	[volunteer_type_ID] [int] IDENTITY(1,1) NOT NULL,
	[volunteer_type_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Volunteer_Type] PRIMARY KEY CLUSTERED 
(
	[volunteer_type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_volanteer]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[view_volanteer]
as
SELECT volunteer_ID
      ,volunteer_Name
      ,volunteer_SSN
      ,volunteer_Phone
	  ,c1.Committee_Name as volunteer_Department_1
	  ,c2.Committee_Name as volunteer_Department_2
      ,volunteer_type_Name
      ,volunteer_type_num
      ,L1.LOC_Name AS volunteer_Add
      ,L2.LOC_Name AS volunteer_Work_add
      ,volunteer_Tax
      ,volunteer_Jop
      ,volunteer_more_info
      ,volunteer_Start_Date
      ,volunteer_Bairth
      ,Social_State_Name
  FROM TB_volunteer
  left outer join TB_Committee c1 on volunteer_Department_1=c1.Committee_ID
  left outer join TB_Committee c2 on volunteer_Department_2=c2.Committee_ID
  left outer join TB_Volunteer_Type on volunteer_type=volunteer_type_ID
  left outer join TBE_LOC L1 ON volunteer_Add = L1.ID
  left outer join TBE_LOC L2 ON volunteer_Work_add = L2.ID
  left outer join TB_Social_State ON Social_State_ID = volunteer_sol_st
GO
/****** Object:  View [dbo].[View_emploee_list]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[View_emploee_list]
as
SELECT  [Emploee_ID]
      ,[Emploee_Name]
      ,[Emploee_UserName]
      ,[Emploee_Password]
      ,[Emploee_phone]
      ,[Emploee_Roll_Name]
      ,[Emploee_Roll_E_Name]
      ,[Emploee_Roll_login_State]
      ,[Emploee_permitions]
  FROM [DB_FWD].[dbo].[TB_Emploee]
  left outer join TB_Emploee_Roll on Emploee_Roll =Emploee_Roll_ID
GO
/****** Object:  View [dbo].[View_Registered_Users_New]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create view [dbo].[View_Registered_Users_New]
as
SELECT Registered_Users_ID
      ,Registered_Users_Name
	  ,Social_State_Name ----
      ,Registered_Users_Ssn
      ,Registered_Users_Hus_Name
      ,Registered_Users_Hus_Ssn
      ,Registered_Users_Hus_Phone
      ,Registered_Users_phone
      ,Registered_Users_Fam_Num
      ,Registered_Users_Add_det
	  ,LOC_Name
      ,Registered_Users_incom_name
      ,Registered_Users_income_val
	  ,SUPP_Name
	  ,Rank_Name
	  ,Health_Status_Name
      ,Registered_Users_Helth_info
	  ,[Registered_Users_BairthDay]
	  ,DATEDIFF(YEAR, [Registered_Users_BairthDay], GETDATE()) AS Age

  FROM TB_Registered_Users 
  left outer join TB_Social_State on Registered_Users_so_st=Social_State_ID
  left outer join TBE_LOC on Registered_Users_Add = TBE_LOC.ID
  left outer join TB_SUPP on Registered_Users_Supp = TB_SUPP.ID
  left outer join TB_Rank on Registered_Users_Rank = Rank_ID
  left outer join TB_Health_Status on Registered_Users_Helth = Health_Status_ID
GO
/****** Object:  Table [dbo].[TB_Doctor_Info]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Doctor_Info](
	[Doctor_ID] [int] IDENTITY(1,1) NOT NULL,
	[Doctor_Name] [nvarchar](50) NULL,
	[Doctor_spicailize] [nvarchar](50) NULL,
	[Doctor_Add] [int] NULL,
 CONSTRAINT [PK_TB_Doctor_Info] PRIMARY KEY CLUSTERED 
(
	[Doctor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Doctor_Info]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[View_Doctor_Info]
as
SELECT  [Doctor_ID]
      ,[Doctor_Name]
      ,[Doctor_spicailize]
      ,[LOC_Name]
  FROM [DB_FWD].[dbo].[TB_Doctor_Info]
  left outer join TBE_LOC on Doctor_Add = id
GO
/****** Object:  Table [dbo].[TB_Pharmasist_Info]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Pharmasist_Info](
	[Pharmasist_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pharmasist_Name] [nvarchar](50) NULL,
	[Pharmasist_Add] [int] NULL,
 CONSTRAINT [PK_TB_Pharmasist_Info] PRIMARY KEY CLUSTERED 
(
	[Pharmasist_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Pharmasist_Info]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
Create View [dbo].[View_Pharmasist_Info]
as
SELECT [Pharmasist_ID]
      ,[Pharmasist_Name]
      ,[LOC_Name]
  FROM [DB_FWD].[dbo].[TB_Pharmasist_Info]
  left outer join TBE_LOC on Pharmasist_Add =ID
GO
/****** Object:  Table [dbo].[TB_DOC]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DOC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DOC_Name] [int] NULL,
	[DOC_Patint] [int] NULL,
	[DOC_Date] [date] NULL,
	[DOC_Det] [nvarchar](100) NULL,
	[DOC_SSN] [nvarchar](15) NULL,
 CONSTRAINT [PK_TB_DOC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Doctor_report]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE VIEW [dbo].[View_Doctor_report]
AS
SELECT        dbo.TB_DOC.ID, dbo.TB_Doctor_Info.Doctor_Name, dbo.TB_Registered_Users.Registered_Users_Name, dbo.TB_Registered_Users.Registered_Users_phone, dbo.TB_Registered_Users.Registered_Users_Ssn, 
                         dbo.TB_DOC.DOC_Date, dbo.TB_DOC.DOC_Det
FROM            dbo.TB_DOC LEFT OUTER JOIN
                         dbo.TB_Registered_Users ON dbo.TB_DOC.DOC_Patint = dbo.TB_Registered_Users.Registered_Users_ID LEFT OUTER JOIN
                         dbo.TB_Doctor_Info ON dbo.TB_DOC.DOC_Name = dbo.TB_Doctor_Info.Doctor_ID
GO
/****** Object:  Table [dbo].[TB_Supscription_Moth]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Supscription_Moth](
	[Moth_ID] [int] IDENTITY(1,1) NOT NULL,
	[Moth_Name] [nvarchar](15) NULL,
 CONSTRAINT [PK_TB_Supscription_Moth] PRIMARY KEY CLUSTERED 
(
	[Moth_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Volunteer_Subscription]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Volunteer_Subscription](
	[Volunteer_Subscription_ID] [int] IDENTITY(1,1) NOT NULL,
	[Volunteer_Subscription_Value] [float] NULL,
	[Volunteer_Subscription_recet_num] [int] NULL,
	[Volunteer_Subscription_Date] [date] NULL,
	[Volunteer_Subscription_Moth] [int] NULL,
	[Volunteer_Subscription_FK] [int] NULL,
 CONSTRAINT [PK_TB_Volunteer_Subscription] PRIMARY KEY CLUSTERED 
(
	[Volunteer_Subscription_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Volunteer_Subscription]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[View_Volunteer_Subscription]
as

SELECT [Volunteer_Subscription_ID]
	  ,[volunteer_Name]
      ,[volunteer_SSN]
      ,[volunteer_Phone]
      ,[volunteer_Department_1]
      ,[Volunteer_Subscription_Value]
      ,[Volunteer_Subscription_recet_num]
      ,[Volunteer_Subscription_Date]
      ,[Moth_Name]
      ,[Volunteer_Subscription_FK]
  FROM [DB_FWD].[dbo].[TB_Volunteer_Subscription]
  left outer join TB_Supscription_Moth on Volunteer_Subscription_Moth = Moth_ID
  left outer join TB_volunteer on Volunteer_Subscription_FK = volunteer_ID
GO
/****** Object:  Table [dbo].[TB_PHAR]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PHAR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PHR_Doctor] [int] NULL,
	[PHR_Drug] [nvarchar](70) NULL,
	[PHR_Patint] [int] NULL,
	[PHR_Date] [date] NULL,
 CONSTRAINT [PK_TB_PHAR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_Pharmasist_List]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[view_Pharmasist_List]
as

SELECT [ID]
      ,[Pharmasist_Name]
	  ,[Registered_Users_Name]
      ,[Registered_Users_Ssn]
	   ,[Registered_Users_phone]
      ,[PHR_Drug]
      ,[PHR_Patint]
      ,[PHR_Date]
  FROM [DB_FWD].[dbo].[TB_PHAR]
  left outer join TB_Pharmasist_Info on Pharmasist_ID = PHR_Doctor 
  left outer join TB_Registered_Users on Registered_Users_ID = PHR_Patint
GO
/****** Object:  View [dbo].[Registered_Users_Search]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[Registered_Users_Search]
as
SELECT [Registered_Users_ID]
      ,[Registered_Users_Name]
      ,[Registered_Users_Ssn]
  FROM [DB_FWD].[dbo].[TB_Registered_Users]
GO
/****** Object:  View [dbo].[View_Sell_to_Customers]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[View_Sell_to_Customers]
as

SELECT TB_SELL.[ID]
 	  ,[Registered_Users_Name]
      ,[Registered_Users_Ssn]
      ,[Registered_Users_phone]
      ,[SELL_Resv_Name]
      ,[PUR_Name]
      ,CAST([SELL_Date] AS Date) AS [SELL_Date]
      ,[SELL_Num]
      ,[Emploee_Name]
  FROM [DB_FWD].[dbo].[TB_SELL]
  left outer join TB_Registered_Users on SELL_Person_Code =Registered_Users_ID
  left outer join TB_Emploee on SELL_Charity_Rcever =Emploee_ID
  left outer join TB_PUR on SELL_Cat = TB_PUR.ID

GO
/****** Object:  View [dbo].[View_Whating_List_Date]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/

create view [dbo].[View_Whating_List_Date]
as

SELECT [ID]
      ,[WAT_Name]
      ,[WAT_Cat]
      ,[WAT_SSN]
      ,[WAT_Add]
      ,[WAT_Phone1]
      ,[WAT_Phone2]
      ,[WAT_Supp_name]
      ,[WAT_Supp_Phone]
      ,[WAT_Det]
      ,[WAT_Date_Order]
      ,[WAT_Done_state]
      ,[WAT_Done_Date]
      ,[WAT_Date_Bairth]
	  ,DATEDIFF(YEAR, [WAT_Date_Bairth], GETDATE()) AS Age

  FROM [DB_FWD].[dbo].[TB_WAT]
GO
/****** Object:  View [dbo].[Registered_Users_View]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[Registered_Users_View]
as
SELECT Registered_Users_ID
      ,Registered_Users_Name
    --  ,Registered_Users_so_st
	  ,Social_State_Name       -------
      ,Registered_Users_Ssn
      ,Registered_Users_Hus_Name
      ,Registered_Users_Hus_Ssn
      ,Registered_Users_Hus_Phone
      ,Registered_Users_phone
      ,Registered_Users_Fam_Num
     -- ,Registered_Users_Add
	  ,LOC_Name
	  ,LOC_Key
      ,Registered_Users_Add_det
      ,Registered_Users_incom_name
      ,Registered_Users_income_val
   --   ,Registered_Users_Supp
	  ,SUPP_Name
	  ,SUPP_Phone1
  --    ,Registered_Users_Rank
	  ,Rank_Name
  FROM TB_Registered_Users 
  left outer join TB_Social_State on Registered_Users_so_st = Social_State_ID
  left outer join TBE_LOC on Registered_Users_Add = TBE_LOC.ID
  left outer join TB_SUPP on Registered_Users_Supp = TB_SUPP.ID
  left outer join TB_Rank on Registered_Users_Rank = Rank_ID
GO
/****** Object:  Table [dbo].[TB_AGR]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_AGR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AGR_Type] [nvarchar](8) NULL,
	[AGR_Amount] [int] NULL,
	[AGR_Amount_Text] [nvarchar](100) NULL,
	[AGR_Charity_Num] [nvarchar](25) NULL,
	[AGR_From] [nvarchar](50) NULL,
	[AGR_From_SSN] [nvarchar](16) NULL,
	[AGR_BOX] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_AGR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_BUS]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_BUS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BUS_Cap] [nvarchar](50) NULL,
	[BUS_Pationt] [int] NULL,
	[BUS_Date] [date] NULL,
	[BUS_Det] [nvarchar](75) NULL,
 CONSTRAINT [PK_TB_BUS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Charity_info]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Charity_info](
	[Charity_info_ID] [int] IDENTITY(1,1) NOT NULL,
	[Charity_info_Name] [nvarchar](50) NULL,
	[Charity_info_Domain] [varchar](50) NULL,
	[Charity_info_Manager] [int] NULL,
 CONSTRAINT [PK_TB_Charity_info] PRIMARY KEY CLUSTERED 
(
	[Charity_info_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CUS_Files]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUS_Files](
	[CUS_Files_ID] [int] IDENTITY(1,1) NOT NULL,
	[CUS_Files_front] [image] NULL,
	[CUS_Files_back] [image] NULL,
	[CUS_Files_location] [varbinary](max) NULL,
	[CUS_Files_Type] [varchar](10) NULL,
	[CUS_Files_Files_Name] [nvarchar](100) NULL,
	[CUS_Files_FK] [int] NULL,
 CONSTRAINT [PK_TB_CUS_Files] PRIMARY KEY CLUSTERED 
(
	[CUS_Files_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CUS_Img]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUS_Img](
	[CUS_Img_id] [int] IDENTITY(1,1) NOT NULL,
	[CUS_Img_front] [image] NULL,
	[CUS_Img_back] [image] NULL,
	[CUS_Img_img] [image] NULL,
	[CUS_Img_fk] [int] NULL,
 CONSTRAINT [PK_TB_CUS_Img] PRIMARY KEY CLUSTERED 
(
	[CUS_Img_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CUST_Income]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CUST_Income](
	[CUST_Income_ID] [int] IDENTITY(1,1) NOT NULL,
	[CUST_Income_Owner] [nvarchar](50) NULL,
	[CUST_Income_State] [nvarchar](20) NULL,
	[CUST_Income_Type] [nvarchar](50) NULL,
	[CUST_Income_Name] [nvarchar](150) NULL,
	[CUST_Income_Value] [float] NULL,
	[CUST_Income_PK] [int] NULL,
 CONSTRAINT [PK_TB_CUST_Income] PRIMARY KEY CLUSTERED 
(
	[CUST_Income_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_FIN]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_FIN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIN_Name] [nvarchar](50) NULL,
	[FIN_Amount] [float] NULL,
 CONSTRAINT [PK_TB_FIN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Midical_return]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Midical_return](
	[Midical_return_ID] [int] IDENTITY(1,1) NOT NULL,
	[Midical_return_tool] [int] NULL,
	[Midical_return_date] [date] NULL,
	[Midical_return_recever] [int] NULL,
 CONSTRAINT [PK_TB_Midical_return] PRIMARY KEY CLUSTERED 
(
	[Midical_return_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_POC]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_POC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[POC_Name] [nvarchar](50) NULL,
	[POC_Type] [nvarchar](50) NULL,
	[POC_Value] [float] NULL,
	[POC_Own] [nvarchar](50) NULL,
	[POC_Date] [date] NULL,
 CONSTRAINT [PK_TB_POC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_User_Permitions]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_User_Permitions](
	[Permition_ID] [int] IDENTITY(1,1) NOT NULL,
	[Wat_list_list] [bit] NULL,
	[Wat_list_add] [bit] NULL,
	[Wat_list_del] [bit] NULL,
	[Wat_list_edit] [bit] NULL,
	[Receve_list] [bit] NULL,
	[Receve_add] [bit] NULL,
	[Receve_del] [bit] NULL,
	[Supp_list] [bit] NULL,
	[Supp_add] [bit] NULL,
	[Supp_del] [bit] NULL,
	[Supp_edit] [bit] NULL,
	[Category_list] [bit] NULL,
	[Category_add] [bit] NULL,
	[Category_del] [bit] NULL,
	[Category_edit] [bit] NULL,
	[Donation_List] [bit] NULL,
	[Donation_del] [bit] NULL,
	[Poket_list] [bit] NULL,
	[Poket_del] [bit] NULL,
	[Volanteer_list] [bit] NULL,
	[volanteer_add] [bit] NULL,
	[volanteer_edit] [bit] NULL,
	[volanteer_subscription] [bit] NULL,
	[Doctor_add] [bit] NULL,
	[Doctor_doc_add] [bit] NULL,
	[Doctor_del] [bit] NULL,
	[Doctor_doc_del] [bit] NULL,
	[Pharmasy_add] [bit] NULL,
	[Pharmasy_doc_add] [bit] NULL,
	[Pharmasy_del] [bit] NULL,
	[Pharmasy_doc_del] [bit] NULL,
	[Record_lisr] [bit] NULL,
	[Record_add] [bit] NULL,
	[Record_del] [bit] NULL,
	[Record_edit] [bit] NULL,
	[Course_list] [bit] NULL,
	[Course_add] [bit] NULL,
	[Course_edit] [bit] NULL,
	[Course_del] [bit] NULL,
	[Trainer_add] [bit] NULL,
	[Trainer_list] [bit] NULL,
	[Trainer_edit] [bit] NULL,
	[Trainer_del] [bit] NULL,
	[Midical_List_add] [bit] NULL,
	[Midical_List_list] [bit] NULL,
	[Midical_List_del] [bit] NULL,
	[Midical_List_edit] [bit] NULL,
	[Midical_Receve_return] [bit] NULL,
	[Midical_Receve_add] [bit] NULL,
	[Midical_Receve_del] [bit] NULL,
	[Midical_Receve_edit] [bit] NULL,
	[General_report_add] [bit] NULL,
	[General_report_edit] [bit] NULL,
	[General_report_list] [bit] NULL,
	[General_report_del] [bit] NULL,
	[General_user_list] [bit] NULL,
	[General_user_add] [bit] NULL,
	[General_server] [bit] NULL,
	[General_backup] [bit] NULL,
	[General_user_del] [bit] NULL,
	[Donation_Donnner] [bit] NULL,
	[General_programe_set] [bit] NULL,
	[General_home] [bit] NULL,
 CONSTRAINT [PK_TB_User_Permitions] PRIMARY KEY CLUSTERED 
(
	[Permition_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_BUS]  WITH CHECK ADD  CONSTRAINT [FK_TB_BUS_TB_Registered_Users] FOREIGN KEY([BUS_Pationt])
REFERENCES [dbo].[TB_Registered_Users] ([Registered_Users_ID])
GO
ALTER TABLE [dbo].[TB_BUS] CHECK CONSTRAINT [FK_TB_BUS_TB_Registered_Users]
GO
ALTER TABLE [dbo].[TB_CUS_Family_Member]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUS_Family_Member_TB_CUST_Person] FOREIGN KEY([CUST_Family_Member_PK])
REFERENCES [dbo].[TB_CUST_Person] ([CUST_Main_ID])
GO
ALTER TABLE [dbo].[TB_CUS_Family_Member] CHECK CONSTRAINT [FK_TB_CUS_Family_Member_TB_CUST_Person]
GO
ALTER TABLE [dbo].[TB_CUS_Family_Member]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUS_Family_Member_TB_Educational_Status] FOREIGN KEY([CUST_Family_Member_Edu])
REFERENCES [dbo].[TB_Educational_Status] ([Educational_Status_ID])
GO
ALTER TABLE [dbo].[TB_CUS_Family_Member] CHECK CONSTRAINT [FK_TB_CUS_Family_Member_TB_Educational_Status]
GO
ALTER TABLE [dbo].[TB_CUS_Family_Member]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUS_Family_Member_TB_Health_Status] FOREIGN KEY([CUST_Family_Member_Helth])
REFERENCES [dbo].[TB_Health_Status] ([Health_Status_ID])
GO
ALTER TABLE [dbo].[TB_CUS_Family_Member] CHECK CONSTRAINT [FK_TB_CUS_Family_Member_TB_Health_Status]
GO
ALTER TABLE [dbo].[TB_CUS_Family_Member]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUS_Family_Member_TB_Social_State] FOREIGN KEY([CUST_Family_Member_So_St])
REFERENCES [dbo].[TB_Social_State] ([Social_State_ID])
GO
ALTER TABLE [dbo].[TB_CUS_Family_Member] CHECK CONSTRAINT [FK_TB_CUS_Family_Member_TB_Social_State]
GO
ALTER TABLE [dbo].[TB_CUS_Files]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUS_Files_TB_CUST_Person] FOREIGN KEY([CUS_Files_ID])
REFERENCES [dbo].[TB_CUST_Person] ([CUST_Main_ID])
GO
ALTER TABLE [dbo].[TB_CUS_Files] CHECK CONSTRAINT [FK_TB_CUS_Files_TB_CUST_Person]
GO
ALTER TABLE [dbo].[TB_CUS_Img]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUS_Img_TB_CUST_Person] FOREIGN KEY([CUS_Img_fk])
REFERENCES [dbo].[TB_CUST_Person] ([CUST_Main_ID])
GO
ALTER TABLE [dbo].[TB_CUS_Img] CHECK CONSTRAINT [FK_TB_CUS_Img_TB_CUST_Person]
GO
ALTER TABLE [dbo].[TB_CUST_Father]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Father_TB_CUST_Person] FOREIGN KEY([CUST_Father_FK])
REFERENCES [dbo].[TB_CUST_Person] ([CUST_Main_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Father] CHECK CONSTRAINT [FK_TB_CUST_Father_TB_CUST_Person]
GO
ALTER TABLE [dbo].[TB_CUST_Father]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Father_TB_Educational_Status] FOREIGN KEY([CUST_Father_Edu])
REFERENCES [dbo].[TB_Educational_Status] ([Educational_Status_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Father] CHECK CONSTRAINT [FK_TB_CUST_Father_TB_Educational_Status]
GO
ALTER TABLE [dbo].[TB_CUST_Father]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Father_TB_Health_Status] FOREIGN KEY([CUST_Father_helth])
REFERENCES [dbo].[TB_Health_Status] ([Health_Status_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Father] CHECK CONSTRAINT [FK_TB_CUST_Father_TB_Health_Status]
GO
ALTER TABLE [dbo].[TB_CUST_Home]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Home_TB_CUST_Person] FOREIGN KEY([CUST_Home_PK])
REFERENCES [dbo].[TB_CUST_Person] ([CUST_Main_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Home] CHECK CONSTRAINT [FK_TB_CUST_Home_TB_CUST_Person]
GO
ALTER TABLE [dbo].[TB_CUST_Home]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Home_TBE_LOC] FOREIGN KEY([CUST_Home_Add])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_CUST_Home] CHECK CONSTRAINT [FK_TB_CUST_Home_TBE_LOC]
GO
ALTER TABLE [dbo].[TB_CUST_Income]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Income_TB_CUST_Person] FOREIGN KEY([CUST_Income_PK])
REFERENCES [dbo].[TB_CUST_Person] ([CUST_Main_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Income] CHECK CONSTRAINT [FK_TB_CUST_Income_TB_CUST_Person]
GO
ALTER TABLE [dbo].[TB_CUST_Need]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Need_TB_CUST_Person] FOREIGN KEY([CUST_Need_FK])
REFERENCES [dbo].[TB_CUST_Person] ([CUST_Main_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Need] CHECK CONSTRAINT [FK_TB_CUST_Need_TB_CUST_Person]
GO
ALTER TABLE [dbo].[TB_CUST_Need]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Need_TB_Family_Needs_Type] FOREIGN KEY([CUST_Need_Type])
REFERENCES [dbo].[TB_Family_Needs_Type] ([Family_Needs_Type_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Need] CHECK CONSTRAINT [FK_TB_CUST_Need_TB_Family_Needs_Type]
GO
ALTER TABLE [dbo].[TB_CUST_Person]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Person_TB_Educational_Status] FOREIGN KEY([CUST_Person_Eud])
REFERENCES [dbo].[TB_Educational_Status] ([Educational_Status_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Person] CHECK CONSTRAINT [FK_TB_CUST_Person_TB_Educational_Status]
GO
ALTER TABLE [dbo].[TB_CUST_Person]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Person_TB_Health_Status] FOREIGN KEY([CUST_Person_Helth])
REFERENCES [dbo].[TB_Health_Status] ([Health_Status_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Person] CHECK CONSTRAINT [FK_TB_CUST_Person_TB_Health_Status]
GO
ALTER TABLE [dbo].[TB_CUST_Person]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Person_TB_Social_State] FOREIGN KEY([CUST_Person_SO_ST])
REFERENCES [dbo].[TB_Social_State] ([Social_State_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Person] CHECK CONSTRAINT [FK_TB_CUST_Person_TB_Social_State]
GO
ALTER TABLE [dbo].[TB_CUST_Property]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Property_TB_CUST_Person] FOREIGN KEY([CUST_Property_PK])
REFERENCES [dbo].[TB_CUST_Person] ([CUST_Main_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Property] CHECK CONSTRAINT [FK_TB_CUST_Property_TB_CUST_Person]
GO
ALTER TABLE [dbo].[TB_CUST_Property]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Property_TB_Family_Owns_Type] FOREIGN KEY([CUST_Property_Name])
REFERENCES [dbo].[TB_Family_Owns_Type] ([Family_Owns_Type_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Property] CHECK CONSTRAINT [FK_TB_CUST_Property_TB_Family_Owns_Type]
GO
ALTER TABLE [dbo].[TB_CUST_Resercher]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Resercher_TB_CUST_Person] FOREIGN KEY([CUST_Resercher_FK])
REFERENCES [dbo].[TB_CUST_Person] ([CUST_Main_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Resercher] CHECK CONSTRAINT [FK_TB_CUST_Resercher_TB_CUST_Person]
GO
ALTER TABLE [dbo].[TB_CUST_Resercher]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Resercher_TB_Rank] FOREIGN KEY([CUST_Resercher_State])
REFERENCES [dbo].[TB_Rank] ([Rank_ID])
GO
ALTER TABLE [dbo].[TB_CUST_Resercher] CHECK CONSTRAINT [FK_TB_CUST_Resercher_TB_Rank]
GO
ALTER TABLE [dbo].[TB_CUST_Resercher]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Resercher_TB_RES] FOREIGN KEY([CUST_Resercher_Name])
REFERENCES [dbo].[TB_RES] ([ID])
GO
ALTER TABLE [dbo].[TB_CUST_Resercher] CHECK CONSTRAINT [FK_TB_CUST_Resercher_TB_RES]
GO
ALTER TABLE [dbo].[TB_CUST_Resercher]  WITH CHECK ADD  CONSTRAINT [FK_TB_CUST_Resercher_TB_SUPP] FOREIGN KEY([CUST_Resercher_Supp])
REFERENCES [dbo].[TB_SUPP] ([ID])
GO
ALTER TABLE [dbo].[TB_CUST_Resercher] CHECK CONSTRAINT [FK_TB_CUST_Resercher_TB_SUPP]
GO
ALTER TABLE [dbo].[TB_DOC]  WITH CHECK ADD  CONSTRAINT [FK_TB_DOC_TB_Doctor_Info] FOREIGN KEY([DOC_Name])
REFERENCES [dbo].[TB_Doctor_Info] ([Doctor_ID])
GO
ALTER TABLE [dbo].[TB_DOC] CHECK CONSTRAINT [FK_TB_DOC_TB_Doctor_Info]
GO
ALTER TABLE [dbo].[TB_DOC]  WITH CHECK ADD  CONSTRAINT [FK_TB_DOC_TB_Registered_Users] FOREIGN KEY([DOC_Patint])
REFERENCES [dbo].[TB_Registered_Users] ([Registered_Users_ID])
GO
ALTER TABLE [dbo].[TB_DOC] CHECK CONSTRAINT [FK_TB_DOC_TB_Registered_Users]
GO
ALTER TABLE [dbo].[TB_Doctor_Info]  WITH CHECK ADD  CONSTRAINT [FK_TB_Doctor_Info_TBE_LOC] FOREIGN KEY([Doctor_Add])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_Doctor_Info] CHECK CONSTRAINT [FK_TB_Doctor_Info_TBE_LOC]
GO
ALTER TABLE [dbo].[TB_DON]  WITH CHECK ADD  CONSTRAINT [FK_TB_DON_TB_Donation_Dirction] FOREIGN KEY([DON_Dir])
REFERENCES [dbo].[TB_Donation_Dirction] ([Donation_Dir_ID])
GO
ALTER TABLE [dbo].[TB_DON] CHECK CONSTRAINT [FK_TB_DON_TB_Donation_Dirction]
GO
ALTER TABLE [dbo].[TB_DON]  WITH CHECK ADD  CONSTRAINT [FK_TB_DON_TB_Donner_info] FOREIGN KEY([DON_Name])
REFERENCES [dbo].[TB_Donner_info] ([Donner_ID])
GO
ALTER TABLE [dbo].[TB_DON] CHECK CONSTRAINT [FK_TB_DON_TB_Donner_info]
GO
ALTER TABLE [dbo].[TB_DON]  WITH CHECK ADD  CONSTRAINT [FK_TB_DON_TB_Emploee] FOREIGN KEY([DON_Resever])
REFERENCES [dbo].[TB_Emploee] ([Emploee_ID])
GO
ALTER TABLE [dbo].[TB_DON] CHECK CONSTRAINT [FK_TB_DON_TB_Emploee]
GO
ALTER TABLE [dbo].[TB_Donner_info]  WITH CHECK ADD  CONSTRAINT [FK_TB_Donner_info_TBE_LOC] FOREIGN KEY([Donner_Jop_Add])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_Donner_info] CHECK CONSTRAINT [FK_TB_Donner_info_TBE_LOC]
GO
ALTER TABLE [dbo].[TB_Donner_info]  WITH CHECK ADD  CONSTRAINT [FK_TB_Donner_info_TBE_LOC1] FOREIGN KEY([Donner_Add])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_Donner_info] CHECK CONSTRAINT [FK_TB_Donner_info_TBE_LOC1]
GO
ALTER TABLE [dbo].[TB_Emploee]  WITH CHECK ADD  CONSTRAINT [FK_TB_Emploee_TB_Emploee_Roll] FOREIGN KEY([Emploee_Roll])
REFERENCES [dbo].[TB_Emploee_Roll] ([Emploee_Roll_ID])
GO
ALTER TABLE [dbo].[TB_Emploee] CHECK CONSTRAINT [FK_TB_Emploee_TB_Emploee_Roll]
GO
ALTER TABLE [dbo].[TB_Emploee]  WITH CHECK ADD  CONSTRAINT [FK_TB_Emploee_TB_User_Permitions] FOREIGN KEY([Emploee_permitions])
REFERENCES [dbo].[TB_User_Permitions] ([Permition_ID])
GO
ALTER TABLE [dbo].[TB_Emploee] CHECK CONSTRAINT [FK_TB_Emploee_TB_User_Permitions]
GO
ALTER TABLE [dbo].[TB_General_report]  WITH CHECK ADD  CONSTRAINT [FK_TB_General_report_TB_Emploee] FOREIGN KEY([General_report_writer])
REFERENCES [dbo].[TB_Emploee] ([Emploee_ID])
GO
ALTER TABLE [dbo].[TB_General_report] CHECK CONSTRAINT [FK_TB_General_report_TB_Emploee]
GO
ALTER TABLE [dbo].[TB_Medical_give]  WITH CHECK ADD  CONSTRAINT [FK_TB_Medical_give_TB_Emploee] FOREIGN KEY([Medical_give_charity_recever])
REFERENCES [dbo].[TB_Emploee] ([Emploee_ID])
GO
ALTER TABLE [dbo].[TB_Medical_give] CHECK CONSTRAINT [FK_TB_Medical_give_TB_Emploee]
GO
ALTER TABLE [dbo].[TB_Medical_give]  WITH CHECK ADD  CONSTRAINT [FK_TB_Medical_give_TB_Medical_tool] FOREIGN KEY([Medical_give_tool_Name])
REFERENCES [dbo].[TB_Medical_tool] ([Medical_tool_ID])
GO
ALTER TABLE [dbo].[TB_Medical_give] CHECK CONSTRAINT [FK_TB_Medical_give_TB_Medical_tool]
GO
ALTER TABLE [dbo].[TB_Medical_give]  WITH CHECK ADD  CONSTRAINT [FK_TB_Medical_give_TBE_LOC] FOREIGN KEY([Medical_give_recever_add])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_Medical_give] CHECK CONSTRAINT [FK_TB_Medical_give_TBE_LOC]
GO
ALTER TABLE [dbo].[TB_Midical_return]  WITH CHECK ADD  CONSTRAINT [FK_TB_Midical_return_TB_Medical_give] FOREIGN KEY([Midical_return_tool])
REFERENCES [dbo].[TB_Medical_give] ([Medical_give_ID])
GO
ALTER TABLE [dbo].[TB_Midical_return] CHECK CONSTRAINT [FK_TB_Midical_return_TB_Medical_give]
GO
ALTER TABLE [dbo].[TB_PHAR]  WITH CHECK ADD  CONSTRAINT [FK_TB_PHAR_TB_Pharmasist_Info] FOREIGN KEY([PHR_Doctor])
REFERENCES [dbo].[TB_Pharmasist_Info] ([Pharmasist_ID])
GO
ALTER TABLE [dbo].[TB_PHAR] CHECK CONSTRAINT [FK_TB_PHAR_TB_Pharmasist_Info]
GO
ALTER TABLE [dbo].[TB_PHAR]  WITH CHECK ADD  CONSTRAINT [FK_TB_PHAR_TB_Registered_Users] FOREIGN KEY([PHR_Patint])
REFERENCES [dbo].[TB_Registered_Users] ([Registered_Users_ID])
GO
ALTER TABLE [dbo].[TB_PHAR] CHECK CONSTRAINT [FK_TB_PHAR_TB_Registered_Users]
GO
ALTER TABLE [dbo].[TB_Pharmasist_Info]  WITH CHECK ADD  CONSTRAINT [FK_TB_Pharmasist_Info_TBE_LOC] FOREIGN KEY([Pharmasist_Add])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_Pharmasist_Info] CHECK CONSTRAINT [FK_TB_Pharmasist_Info_TBE_LOC]
GO
ALTER TABLE [dbo].[TB_Registered_Users]  WITH CHECK ADD  CONSTRAINT [FK_TB_Registered_Users_TB_Health_Status] FOREIGN KEY([Registered_Users_Helth])
REFERENCES [dbo].[TB_Health_Status] ([Health_Status_ID])
GO
ALTER TABLE [dbo].[TB_Registered_Users] CHECK CONSTRAINT [FK_TB_Registered_Users_TB_Health_Status]
GO
ALTER TABLE [dbo].[TB_Registered_Users]  WITH CHECK ADD  CONSTRAINT [FK_TB_Registered_Users_TB_Rank] FOREIGN KEY([Registered_Users_Rank])
REFERENCES [dbo].[TB_Rank] ([Rank_ID])
GO
ALTER TABLE [dbo].[TB_Registered_Users] CHECK CONSTRAINT [FK_TB_Registered_Users_TB_Rank]
GO
ALTER TABLE [dbo].[TB_Registered_Users]  WITH CHECK ADD  CONSTRAINT [FK_TB_Registered_Users_TB_Social_State] FOREIGN KEY([Registered_Users_so_st])
REFERENCES [dbo].[TB_Social_State] ([Social_State_ID])
GO
ALTER TABLE [dbo].[TB_Registered_Users] CHECK CONSTRAINT [FK_TB_Registered_Users_TB_Social_State]
GO
ALTER TABLE [dbo].[TB_Registered_Users]  WITH CHECK ADD  CONSTRAINT [FK_TB_Registered_Users_TB_SUPP] FOREIGN KEY([Registered_Users_Supp])
REFERENCES [dbo].[TB_SUPP] ([ID])
GO
ALTER TABLE [dbo].[TB_Registered_Users] CHECK CONSTRAINT [FK_TB_Registered_Users_TB_SUPP]
GO
ALTER TABLE [dbo].[TB_Registered_Users]  WITH CHECK ADD  CONSTRAINT [FK_TB_Registered_Users_TBE_LOC] FOREIGN KEY([Registered_Users_Add])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_Registered_Users] CHECK CONSTRAINT [FK_TB_Registered_Users_TBE_LOC]
GO
ALTER TABLE [dbo].[TB_RES]  WITH CHECK ADD  CONSTRAINT [FK_TB_RES_TBE_LOC] FOREIGN KEY([RES_Add])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_RES] CHECK CONSTRAINT [FK_TB_RES_TBE_LOC]
GO
ALTER TABLE [dbo].[TB_SELL]  WITH CHECK ADD  CONSTRAINT [FK_TB_SELL_TB_Emploee] FOREIGN KEY([SELL_Charity_Rcever])
REFERENCES [dbo].[TB_Emploee] ([Emploee_ID])
GO
ALTER TABLE [dbo].[TB_SELL] CHECK CONSTRAINT [FK_TB_SELL_TB_Emploee]
GO
ALTER TABLE [dbo].[TB_SELL]  WITH CHECK ADD  CONSTRAINT [FK_TB_SELL_TB_PUR] FOREIGN KEY([SELL_Cat])
REFERENCES [dbo].[TB_PUR] ([ID])
GO
ALTER TABLE [dbo].[TB_SELL] CHECK CONSTRAINT [FK_TB_SELL_TB_PUR]
GO
ALTER TABLE [dbo].[TB_SELL]  WITH CHECK ADD  CONSTRAINT [FK_TB_SELL_TB_Registered_Users] FOREIGN KEY([SELL_Person_Code])
REFERENCES [dbo].[TB_Registered_Users] ([Registered_Users_ID])
GO
ALTER TABLE [dbo].[TB_SELL] CHECK CONSTRAINT [FK_TB_SELL_TB_Registered_Users]
GO
ALTER TABLE [dbo].[TB_SUPP]  WITH CHECK ADD  CONSTRAINT [FK_TB_SUPP_TBE_LOC] FOREIGN KEY([SUPP_Adress])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_SUPP] CHECK CONSTRAINT [FK_TB_SUPP_TBE_LOC]
GO
ALTER TABLE [dbo].[TB_SUPP]  WITH CHECK ADD  CONSTRAINT [FK_TB_SUPP_TBE_LOC1] FOREIGN KEY([SUPP_Retion])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_SUPP] CHECK CONSTRAINT [FK_TB_SUPP_TBE_LOC1]
GO
ALTER TABLE [dbo].[TB_Take_Course]  WITH CHECK ADD  CONSTRAINT [FK_TB_Take_Course_TB_Course_info] FOREIGN KEY([Take_Course_Course])
REFERENCES [dbo].[TB_Course_info] ([Course_ID])
GO
ALTER TABLE [dbo].[TB_Take_Course] CHECK CONSTRAINT [FK_TB_Take_Course_TB_Course_info]
GO
ALTER TABLE [dbo].[TB_Take_Course]  WITH CHECK ADD  CONSTRAINT [FK_TB_Take_Course_TB_Registered_Users] FOREIGN KEY([Take_Course_Student])
REFERENCES [dbo].[TB_Registered_Users] ([Registered_Users_ID])
GO
ALTER TABLE [dbo].[TB_Take_Course] CHECK CONSTRAINT [FK_TB_Take_Course_TB_Registered_Users]
GO
ALTER TABLE [dbo].[TB_volunteer]  WITH CHECK ADD  CONSTRAINT [FK_TB_volunteer_TB_Committee] FOREIGN KEY([volunteer_Department_1])
REFERENCES [dbo].[TB_Committee] ([Committee_ID])
GO
ALTER TABLE [dbo].[TB_volunteer] CHECK CONSTRAINT [FK_TB_volunteer_TB_Committee]
GO
ALTER TABLE [dbo].[TB_volunteer]  WITH CHECK ADD  CONSTRAINT [FK_TB_volunteer_TB_Committee1] FOREIGN KEY([volunteer_Department_2])
REFERENCES [dbo].[TB_Committee] ([Committee_ID])
GO
ALTER TABLE [dbo].[TB_volunteer] CHECK CONSTRAINT [FK_TB_volunteer_TB_Committee1]
GO
ALTER TABLE [dbo].[TB_volunteer]  WITH CHECK ADD  CONSTRAINT [FK_TB_volunteer_TB_Social_State] FOREIGN KEY([volunteer_sol_st])
REFERENCES [dbo].[TB_Social_State] ([Social_State_ID])
GO
ALTER TABLE [dbo].[TB_volunteer] CHECK CONSTRAINT [FK_TB_volunteer_TB_Social_State]
GO
ALTER TABLE [dbo].[TB_volunteer]  WITH CHECK ADD  CONSTRAINT [FK_TB_volunteer_TB_Volunteer_Type] FOREIGN KEY([volunteer_type])
REFERENCES [dbo].[TB_Volunteer_Type] ([volunteer_type_ID])
GO
ALTER TABLE [dbo].[TB_volunteer] CHECK CONSTRAINT [FK_TB_volunteer_TB_Volunteer_Type]
GO
ALTER TABLE [dbo].[TB_volunteer]  WITH CHECK ADD  CONSTRAINT [FK_TB_volunteer_TBE_LOC] FOREIGN KEY([volunteer_Add])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_volunteer] CHECK CONSTRAINT [FK_TB_volunteer_TBE_LOC]
GO
ALTER TABLE [dbo].[TB_volunteer]  WITH CHECK ADD  CONSTRAINT [FK_TB_volunteer_TBE_LOC1] FOREIGN KEY([volunteer_Work_add])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_volunteer] CHECK CONSTRAINT [FK_TB_volunteer_TBE_LOC1]
GO
ALTER TABLE [dbo].[TB_Volunteer_Subscription]  WITH CHECK ADD  CONSTRAINT [FK_TB_Volunteer_Subscription_TB_Supscription_Moth] FOREIGN KEY([Volunteer_Subscription_Moth])
REFERENCES [dbo].[TB_Supscription_Moth] ([Moth_ID])
GO
ALTER TABLE [dbo].[TB_Volunteer_Subscription] CHECK CONSTRAINT [FK_TB_Volunteer_Subscription_TB_Supscription_Moth]
GO
ALTER TABLE [dbo].[TB_Volunteer_Subscription]  WITH CHECK ADD  CONSTRAINT [FK_TB_Volunteer_Subscription_TB_volunteer] FOREIGN KEY([Volunteer_Subscription_FK])
REFERENCES [dbo].[TB_volunteer] ([volunteer_ID])
GO
ALTER TABLE [dbo].[TB_Volunteer_Subscription] CHECK CONSTRAINT [FK_TB_Volunteer_Subscription_TB_volunteer]
GO
ALTER TABLE [dbo].[TB_WAT]  WITH CHECK ADD  CONSTRAINT [FK_TB_WAT_TB_SUPP] FOREIGN KEY([WAT_Supp_name])
REFERENCES [dbo].[TB_SUPP] ([ID])
GO
ALTER TABLE [dbo].[TB_WAT] CHECK CONSTRAINT [FK_TB_WAT_TB_SUPP]
GO
ALTER TABLE [dbo].[TB_WAT]  WITH CHECK ADD  CONSTRAINT [FK_TB_WAT_TB_WL_CAT] FOREIGN KEY([WAT_Cat])
REFERENCES [dbo].[TB_WL_CAT] ([ID])
GO
ALTER TABLE [dbo].[TB_WAT] CHECK CONSTRAINT [FK_TB_WAT_TB_WL_CAT]
GO
ALTER TABLE [dbo].[TB_WAT]  WITH CHECK ADD  CONSTRAINT [FK_TB_WAT_TBE_LOC] FOREIGN KEY([WAT_Add])
REFERENCES [dbo].[TBE_LOC] ([ID])
GO
ALTER TABLE [dbo].[TB_WAT] CHECK CONSTRAINT [FK_TB_WAT_TBE_LOC]
GO
ALTER TABLE [dbo].[TB_POC]  WITH CHECK ADD  CONSTRAINT [oooo] CHECK  (([POC_Value]<(1000)))
GO
ALTER TABLE [dbo].[TB_POC] CHECK CONSTRAINT [oooo]
GO
/****** Object:  StoredProcedure [dbo].[Pro_1_Rank_Name]    Script Date: 28/10/2023 10:33:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Pro_1_Rank_Name]
as
SELECT [Rank_Name],COUNT(*) AS Frequency
FROM TB_Registered_Users left outer join TB_Rank on Rank_ID = Registered_Users_Rank
GROUP BY Rank_Name
GO
USE [master]
GO
ALTER DATABASE [DB_FWD] SET  READ_WRITE 
GO
