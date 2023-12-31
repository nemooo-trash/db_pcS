USE [master]
GO
/****** Object:  Database [System_Unit]    Script Date: 09.10.2023 0:54:47 ******/
CREATE DATABASE [System_Unit]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'System_Unit', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\System_Unit.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'System_Unit_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\System_Unit_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [System_Unit] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [System_Unit].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [System_Unit] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [System_Unit] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [System_Unit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [System_Unit] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [System_Unit] SET ARITHABORT OFF 
GO
ALTER DATABASE [System_Unit] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [System_Unit] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [System_Unit] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [System_Unit] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [System_Unit] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [System_Unit] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [System_Unit] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [System_Unit] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [System_Unit] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [System_Unit] SET  DISABLE_BROKER 
GO
ALTER DATABASE [System_Unit] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [System_Unit] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [System_Unit] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [System_Unit] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [System_Unit] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [System_Unit] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [System_Unit] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [System_Unit] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [System_Unit] SET  MULTI_USER 
GO
ALTER DATABASE [System_Unit] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [System_Unit] SET DB_CHAINING OFF 
GO
ALTER DATABASE [System_Unit] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [System_Unit] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [System_Unit] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [System_Unit] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [System_Unit] SET QUERY_STORE = ON
GO
ALTER DATABASE [System_Unit] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [System_Unit]
GO
/****** Object:  Table [dbo].[BODY]    Script Date: 09.10.2023 0:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BODY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[color] [nvarchar](25) NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_BODY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPU]    Script Date: 09.10.2023 0:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPU](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[cores] [int] NOT NULL,
	[threads] [int] NOT NULL,
	[BASE_clock] [float] NOT NULL,
	[MAX_clock] [float] NOT NULL,
	[TDP] [int] NOT NULL,
	[socket_id] [int] NOT NULL,
	[MAX_ram] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_CPU] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 09.10.2023 0:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](25) NOT NULL,
	[second_name] [nvarchar](25) NOT NULL,
	[last_name] [nvarchar](25) NOT NULL,
	[number] [nvarchar](15) NOT NULL,
	[salary] [float] NOT NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MOTHER_BOARDS]    Script Date: 09.10.2023 0:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOTHER_BOARDS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[socket_id] [int] NOT NULL,
	[memory_id] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_mother_boards] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 09.10.2023 0:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[body_id] [int] NOT NULL,
	[cpu_id] [int] NOT NULL,
	[motherboard_id] [int] NOT NULL,
	[ram_id] [int] NOT NULL,
	[videocard_id] [int] NOT NULL,
	[power_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[employe_id] [int] NOT NULL,
	[date_start] [date] NOT NULL,
	[date_end] [date] NOT NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POWER_UNIT]    Script Date: 09.10.2023 0:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POWER_UNIT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[TDP] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_POWER_UNIT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RAM]    Script Date: 09.10.2023 0:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[value] [int] NULL,
	[memory_id] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_RAM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TYPE_memory]    Script Date: 09.10.2023 0:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPE_memory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](10) NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [PK_TYPE_memory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TYPE_socket]    Script Date: 09.10.2023 0:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPE_socket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TYPE_socket] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 09.10.2023 0:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](25) NOT NULL,
	[second_name] [nvarchar](25) NOT NULL,
	[last_name] [nvarchar](25) NOT NULL,
	[number] [nvarchar](15) NOT NULL,
	[email] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIDEO_CARDS]    Script Date: 09.10.2023 0:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIDEO_CARDS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[memory] [int] NOT NULL,
	[base_clock] [int] NOT NULL,
	[max_clock] [int] NOT NULL,
	[TDP] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_VIDEO_CARDS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BODY] ON 

INSERT [dbo].[BODY] ([id], [name], [color], [price]) VALUES (1, N'JONSBO MOD5', N'white', 31299)
INSERT [dbo].[BODY] ([id], [name], [color], [price]) VALUES (2, N'JONSBO TR03-A', N'black', 27999)
INSERT [dbo].[BODY] ([id], [name], [color], [price]) VALUES (4, N'Thermaltake View 71 Tempered Glass SNOW Edition', N'black', 22299)
INSERT [dbo].[BODY] ([id], [name], [color], [price]) VALUES (5, N'LIAN LI PC-O11 Dynamic XL ROG Certify', N'white', 20899)
INSERT [dbo].[BODY] ([id], [name], [color], [price]) VALUES (6, N'LIAN LI PC-O11 Dynamic XL ROG Certify', N'black', 19499)
SET IDENTITY_INSERT [dbo].[BODY] OFF
GO
SET IDENTITY_INSERT [dbo].[CPU] ON 

INSERT [dbo].[CPU] ([id], [name], [cores], [threads], [BASE_clock], [MAX_clock], [TDP], [socket_id], [MAX_ram], [price]) VALUES (1, N'AMD Ryzen 5 5600X', 6, 12, 3.7, 4.6, 65, 1, 128, 13699)
INSERT [dbo].[CPU] ([id], [name], [cores], [threads], [BASE_clock], [MAX_clock], [TDP], [socket_id], [MAX_ram], [price]) VALUES (2, N'Intel Core i9-10900KF', 10, 20, 3.7, 5.3, 125, 2, 128, 34999)
INSERT [dbo].[CPU] ([id], [name], [cores], [threads], [BASE_clock], [MAX_clock], [TDP], [socket_id], [MAX_ram], [price]) VALUES (3, N'Intel Core i5-9400', 6, 6, 2.9, 4.1, 65, 3, 128, 14999)
INSERT [dbo].[CPU] ([id], [name], [cores], [threads], [BASE_clock], [MAX_clock], [TDP], [socket_id], [MAX_ram], [price]) VALUES (4, N'Intel Core i9-13900K', 24, 32, 3, 5.8, 125, 4, 128, 59799)
INSERT [dbo].[CPU] ([id], [name], [cores], [threads], [BASE_clock], [MAX_clock], [TDP], [socket_id], [MAX_ram], [price]) VALUES (5, N'AMD Ryzen 9 7950X', 16, 32, 4.5, 5.7, 170, 5, 128, 54999)
SET IDENTITY_INSERT [dbo].[CPU] OFF
GO
SET IDENTITY_INSERT [dbo].[employees] ON 

INSERT [dbo].[employees] ([id], [first_name], [second_name], [last_name], [number], [salary]) VALUES (1, N'Модест', N'Андреев', N'Григорьевич', N'89505897556', 75000)
INSERT [dbo].[employees] ([id], [first_name], [second_name], [last_name], [number], [salary]) VALUES (2, N'Аверьян', N'Мясников', N'Тимурович', N'82486789215', 50000)
INSERT [dbo].[employees] ([id], [first_name], [second_name], [last_name], [number], [salary]) VALUES (3, N'Вадим', N'Терентьев', N'Лаврентьевич', N'89503598987', 65000)
INSERT [dbo].[employees] ([id], [first_name], [second_name], [last_name], [number], [salary]) VALUES (4, N'Авраам', N'Петухов', N'Игоревич', N'89508798415', 85000)
INSERT [dbo].[employees] ([id], [first_name], [second_name], [last_name], [number], [salary]) VALUES (5, N'Вилли', N'Соболев', N'Федосеевич', N'89845156498', 120000)
SET IDENTITY_INSERT [dbo].[employees] OFF
GO
SET IDENTITY_INSERT [dbo].[MOTHER_BOARDS] ON 

INSERT [dbo].[MOTHER_BOARDS] ([id], [name], [socket_id], [memory_id], [price]) VALUES (1, N'GIGABYTE X570 AORUS XTREME', 1, 1, 38999)
INSERT [dbo].[MOTHER_BOARDS] ([id], [name], [socket_id], [memory_id], [price]) VALUES (2, N'MSI MEG Z590 UNIFY-X', 2, 1, 35999)
INSERT [dbo].[MOTHER_BOARDS] ([id], [name], [socket_id], [memory_id], [price]) VALUES (3, N'GIGABYTE Z390 AORUS XTREME WATERFORCE', 3, 2, 62999)
INSERT [dbo].[MOTHER_BOARDS] ([id], [name], [socket_id], [memory_id], [price]) VALUES (4, N'ASRock Z690 Taichi', 4, 3, 47999)
INSERT [dbo].[MOTHER_BOARDS] ([id], [name], [socket_id], [memory_id], [price]) VALUES (5, N'MSI MEG X670E GODLIKE', 5, 3, 123999)
SET IDENTITY_INSERT [dbo].[MOTHER_BOARDS] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [body_id], [cpu_id], [motherboard_id], [ram_id], [videocard_id], [power_id], [user_id], [employe_id], [date_start], [date_end]) VALUES (2, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2022-02-02' AS Date), CAST(N'2022-04-02' AS Date))
INSERT [dbo].[orders] ([id], [body_id], [cpu_id], [motherboard_id], [ram_id], [videocard_id], [power_id], [user_id], [employe_id], [date_start], [date_end]) VALUES (3, 2, 2, 2, 2, 2, 2, 2, 2, CAST(N'2023-01-01' AS Date), CAST(N'2023-01-02' AS Date))
INSERT [dbo].[orders] ([id], [body_id], [cpu_id], [motherboard_id], [ram_id], [videocard_id], [power_id], [user_id], [employe_id], [date_start], [date_end]) VALUES (5, 4, 3, 3, 3, 3, 3, 3, 3, CAST(N'2022-12-12' AS Date), CAST(N'2023-03-02' AS Date))
INSERT [dbo].[orders] ([id], [body_id], [cpu_id], [motherboard_id], [ram_id], [videocard_id], [power_id], [user_id], [employe_id], [date_start], [date_end]) VALUES (7, 5, 4, 4, 2, 4, 4, 4, 4, CAST(N'2021-12-01' AS Date), CAST(N'2022-02-01' AS Date))
INSERT [dbo].[orders] ([id], [body_id], [cpu_id], [motherboard_id], [ram_id], [videocard_id], [power_id], [user_id], [employe_id], [date_start], [date_end]) VALUES (8, 6, 5, 5, 1, 5, 5, 2, 2, CAST(N'2022-12-12' AS Date), CAST(N'2023-01-17' AS Date))
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[POWER_UNIT] ON 

INSERT [dbo].[POWER_UNIT] ([id], [name], [TDP], [price]) VALUES (1, N'Thermaltake Toughpower PF1 ARGB', 1050, 20999)
INSERT [dbo].[POWER_UNIT] ([id], [name], [TDP], [price]) VALUES (2, N'Chieftec CHIEFTRONIC PowerPlay', 1200, 20899)
INSERT [dbo].[POWER_UNIT] ([id], [name], [TDP], [price]) VALUES (3, N'Thermaltake Toughpower GF2 ARGB', 750, 10499)
INSERT [dbo].[POWER_UNIT] ([id], [name], [TDP], [price]) VALUES (4, N'Cougar GEX1050', 1050, 10999)
INSERT [dbo].[POWER_UNIT] ([id], [name], [TDP], [price]) VALUES (5, N'ZALMAN Watttera 1000W', 1000, 10399)
SET IDENTITY_INSERT [dbo].[POWER_UNIT] OFF
GO
SET IDENTITY_INSERT [dbo].[RAM] ON 

INSERT [dbo].[RAM] ([id], [name], [value], [memory_id], [price]) VALUES (1, N'Kingston FURY Renegade', 64, 2, 14999)
INSERT [dbo].[RAM] ([id], [name], [value], [memory_id], [price]) VALUES (2, N'Kingston FURY Beast Black RGB', 128, 1, 27999)
INSERT [dbo].[RAM] ([id], [name], [value], [memory_id], [price]) VALUES (3, N'Netac Shadow II', 16, 3, 7099)
SET IDENTITY_INSERT [dbo].[RAM] OFF
GO
SET IDENTITY_INSERT [dbo].[TYPE_memory] ON 

INSERT [dbo].[TYPE_memory] ([id], [name], [value]) VALUES (1, N'DDR4', 3200)
INSERT [dbo].[TYPE_memory] ([id], [name], [value]) VALUES (2, N'DDR4', 2666)
INSERT [dbo].[TYPE_memory] ([id], [name], [value]) VALUES (3, N'DDR5', 4800)
SET IDENTITY_INSERT [dbo].[TYPE_memory] OFF
GO
SET IDENTITY_INSERT [dbo].[TYPE_socket] ON 

INSERT [dbo].[TYPE_socket] ([id], [name]) VALUES (1, N'AM4')
INSERT [dbo].[TYPE_socket] ([id], [name]) VALUES (2, N'LGA 1200')
INSERT [dbo].[TYPE_socket] ([id], [name]) VALUES (3, N'LGA 1151-v2')
INSERT [dbo].[TYPE_socket] ([id], [name]) VALUES (4, N'LGA 1700')
INSERT [dbo].[TYPE_socket] ([id], [name]) VALUES (5, N'AM5')
SET IDENTITY_INSERT [dbo].[TYPE_socket] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [first_name], [second_name], [last_name], [number], [email]) VALUES (1, N'Антон', N'Богушевич', N'Максимович', N'89500310108', N'B_A_M2000@mail.ru')
INSERT [dbo].[users] ([id], [first_name], [second_name], [last_name], [number], [email]) VALUES (2, N'Моисей', N'Кузнецов', N'Иванович', N'89980848416', N'email1@mail.ru')
INSERT [dbo].[users] ([id], [first_name], [second_name], [last_name], [number], [email]) VALUES (3, N'Тимур', N'Исаков', N'Рудольфович', N'89500034989', N'email2@mail.ru')
INSERT [dbo].[users] ([id], [first_name], [second_name], [last_name], [number], [email]) VALUES (4, N'Нега', N'Исакова', N'Константиновна', N'89705565799', N'email3@mail.ru')
INSERT [dbo].[users] ([id], [first_name], [second_name], [last_name], [number], [email]) VALUES (5, N'Олеся', N'Давыдова', N'Игоревна', N'87595156157', N'email4@mail.ru')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET IDENTITY_INSERT [dbo].[VIDEO_CARDS] ON 

INSERT [dbo].[VIDEO_CARDS] ([id], [name], [memory], [base_clock], [max_clock], [TDP], [price]) VALUES (1, N'GIGABYTE GeForce RTX 4090 GAMING', 24, 1830, 2230, 850, 159999)
INSERT [dbo].[VIDEO_CARDS] ([id], [name], [memory], [base_clock], [max_clock], [TDP], [price]) VALUES (2, N'MSI GeForce RTX 4090 GAMING TRIO', 24, 2230, 2535, 850, 139999)
INSERT [dbo].[VIDEO_CARDS] ([id], [name], [memory], [base_clock], [max_clock], [TDP], [price]) VALUES (3, N'PowerColor Hellhound AMD Radeon RX 7900 XT', 20, 1530, 2100, 750, 82999)
INSERT [dbo].[VIDEO_CARDS] ([id], [name], [memory], [base_clock], [max_clock], [TDP], [price]) VALUES (4, N'Palit GeForce RTX 4070 Ti GameRock Classic', 12, 2310, 2610, 750, 82999)
INSERT [dbo].[VIDEO_CARDS] ([id], [name], [memory], [base_clock], [max_clock], [TDP], [price]) VALUES (5, N'MSI GeForce RTX 4070 Ti GAMING X TRIO', 12, 2310, 2760, 750, 87499)
SET IDENTITY_INSERT [dbo].[VIDEO_CARDS] OFF
GO
ALTER TABLE [dbo].[CPU]  WITH CHECK ADD  CONSTRAINT [FK_CPU_TYPE_socket] FOREIGN KEY([socket_id])
REFERENCES [dbo].[TYPE_socket] ([id])
GO
ALTER TABLE [dbo].[CPU] CHECK CONSTRAINT [FK_CPU_TYPE_socket]
GO
ALTER TABLE [dbo].[MOTHER_BOARDS]  WITH CHECK ADD  CONSTRAINT [FK_mother_boards_mother_boards] FOREIGN KEY([socket_id])
REFERENCES [dbo].[TYPE_socket] ([id])
GO
ALTER TABLE [dbo].[MOTHER_BOARDS] CHECK CONSTRAINT [FK_mother_boards_mother_boards]
GO
ALTER TABLE [dbo].[MOTHER_BOARDS]  WITH CHECK ADD  CONSTRAINT [FK_mother_boards_TYPE_memory] FOREIGN KEY([memory_id])
REFERENCES [dbo].[TYPE_memory] ([id])
GO
ALTER TABLE [dbo].[MOTHER_BOARDS] CHECK CONSTRAINT [FK_mother_boards_TYPE_memory]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_BODY] FOREIGN KEY([body_id])
REFERENCES [dbo].[BODY] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_BODY]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_CPU] FOREIGN KEY([cpu_id])
REFERENCES [dbo].[CPU] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_CPU]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_employees] FOREIGN KEY([employe_id])
REFERENCES [dbo].[employees] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_employees]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_MOTHER_BOARDS] FOREIGN KEY([motherboard_id])
REFERENCES [dbo].[MOTHER_BOARDS] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_MOTHER_BOARDS]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_POWER_UNIT] FOREIGN KEY([power_id])
REFERENCES [dbo].[POWER_UNIT] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_POWER_UNIT]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_RAM] FOREIGN KEY([ram_id])
REFERENCES [dbo].[RAM] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_RAM]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_VIDEO_CARDS] FOREIGN KEY([videocard_id])
REFERENCES [dbo].[VIDEO_CARDS] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_VIDEO_CARDS]
GO
ALTER TABLE [dbo].[RAM]  WITH CHECK ADD  CONSTRAINT [FK_RAM_TYPE_memory] FOREIGN KEY([memory_id])
REFERENCES [dbo].[TYPE_memory] ([id])
GO
ALTER TABLE [dbo].[RAM] CHECK CONSTRAINT [FK_RAM_TYPE_memory]
GO
USE [master]
GO
ALTER DATABASE [System_Unit] SET  READ_WRITE 
GO
