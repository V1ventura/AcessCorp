CREATE DATABASE [AccessCorpUsers]
GO
ALTER DATABASE [AccessCorpUsers] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AccessCorpUsers].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AccessCorpUsers] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET ARITHABORT OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AccessCorpUsers] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AccessCorpUsers] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AccessCorpUsers] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AccessCorpUsers] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AccessCorpUsers] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AccessCorpUsers] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AccessCorpUsers] SET  MULTI_USER 
GO
ALTER DATABASE [AccessCorpUsers] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AccessCorpUsers] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AccessCorpUsers] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AccessCorpUsers] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AccessCorpUsers] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AccessCorpUsers] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AccessCorpUsers] SET QUERY_STORE = OFF
GO
USE [AccessCorpUsers]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/04/2025 20:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Administrators]    Script Date: 02/04/2025 20:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrators](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Cpf] [nvarchar](max) NOT NULL,
	[Cep] [nvarchar](max) NOT NULL,
	[HouseNumber] [int] NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[IdentityId] [uniqueidentifier] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[ImageUpload] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Administrators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deliveries]    Script Date: 02/04/2025 20:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deliveries](
	[Id] [uniqueidentifier] NOT NULL,
	[Receiver] [nvarchar](max) NOT NULL,
	[DeliveryDate] [datetime2](7) NOT NULL,
	[Enterprise] [nvarchar](max) NOT NULL,
	[DeliveredTo] [nvarchar](max) NOT NULL,
	[NumberHouse] [int] NOT NULL,
	[Cep] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Deliveries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doormans]    Script Date: 02/04/2025 20:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doormans](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Cpf] [nvarchar](max) NOT NULL,
	[Cep] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[IdentityId] [uniqueidentifier] NOT NULL,
	[AdministratorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Doormans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guests]    Script Date: 02/04/2025 20:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guests](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Cpf] [nvarchar](max) NOT NULL,
	[DoormanId] [uniqueidentifier] NULL,
	[Cep] [nvarchar](max) NOT NULL,
	[CepGuest] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Guests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Residents]    Script Date: 02/04/2025 20:13:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Residents](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Cpf] [nvarchar](max) NOT NULL,
	[Cep] [nvarchar](max) NOT NULL,
	[HouseNumber] [int] NOT NULL,
	[AdministratorId] [uniqueidentifier] NULL,
	[Image] [nvarchar](max) NOT NULL,
	[ImageUpload] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Residents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250315140354_AccessCorpV1', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250319223544_AccessCorpV3', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250322150538_AccessCorpV4', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250322153830_AccessCorpV4.1', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250325224249_AccessCorpV5', N'8.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250331213702_AccessCorpV6', N'8.0.10')
GO
INSERT [dbo].[Administrators] ([Id], [Name], [LastName], [Email], [Phone], [Cpf], [Cep], [HouseNumber], [Password], [IdentityId], [Image], [ImageUpload]) VALUES (N'6bf95871-4825-48e5-9b70-7a68e70a86cb', N'matheus', N'adminas', N'matheusterzine@example.com', N'60126882', N'29956899054', N'03633000', 2, N'@Teste2teste', N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'', 0x)
GO
INSERT [dbo].[Deliveries] ([Id], [Receiver], [DeliveryDate], [Enterprise], [DeliveredTo], [NumberHouse], [Cep]) VALUES (N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'Claudio', CAST(N'2025-03-25T22:59:50.2050000' AS DateTime2), N'Ifood', N'Cassio', 12, N'03633000')
GO
INSERT [dbo].[Doormans] ([Id], [Name], [LastName], [Email], [Phone], [Cpf], [Cep], [Password], [IdentityId], [AdministratorId]) VALUES (N'8d0c99b7-90cf-490e-b203-025be1ba895a', N'Claudio', N'neves da silva', N'theDoorman@example.com', N'517861565', N'37015369613', N'03633000', N'@Teste2teste', N'8d0c99b7-90cf-490e-b203-025be1ba895a', NULL)
INSERT [dbo].[Doormans] ([Id], [Name], [LastName], [Email], [Phone], [Cpf], [Cep], [Password], [IdentityId], [AdministratorId]) VALUES (N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'MeuNomeFoiMudDAO', N'Fuimudadoquetriste', N'dormano@example.com', N'59564174', N'94281382747', N'03633000', N'@Teste3teste', N'3fa85f64-5717-4562-b3fc-2c963f66afa6', NULL)
INSERT [dbo].[Doormans] ([Id], [Name], [LastName], [Email], [Phone], [Cpf], [Cep], [Password], [IdentityId], [AdministratorId]) VALUES (N'1948665e-cfe9-4169-bade-4dc94f93a85e', N'tese de id', N'ide detese', N'iddeteste@example.com', N'34106480', N'29956899054', N'03633000', N'@Teste2tes', N'ecbb1657-ee1d-4146-8ec7-36090e6877cc', NULL)
INSERT [dbo].[Doormans] ([Id], [Name], [LastName], [Email], [Phone], [Cpf], [Cep], [Password], [IdentityId], [AdministratorId]) VALUES (N'd783b4d4-dc98-4b6f-989f-4f2ae63a81ea', N'dormanado', N'da mata', N'dormanado@example.com', N'40672605', N'48538628461', N'03633000', N'@Teste2teste', N'3fa85f64-5717-4562-b3fc-2c963f66afa6', NULL)
INSERT [dbo].[Doormans] ([Id], [Name], [LastName], [Email], [Phone], [Cpf], [Cep], [Password], [IdentityId], [AdministratorId]) VALUES (N'bbf1b306-1ef2-48f6-842b-732e7394a147', N'matheus', N'odoorman', N'matheusdoorman@example.com', N'72647538', N'15359930144', N'03633000', N'@Teste2teste', N'3fa85f64-5717-4562-b3fc-2c963f66afa6', NULL)
GO
INSERT [dbo].[Guests] ([Id], [Name], [LastName], [Email], [Phone], [Cpf], [DoormanId], [Cep], [CepGuest]) VALUES (N'af7b77a1-9dc6-42bb-96e4-f3e8b2088ab8', N'FUIGERADOCOMQRCODE', N'UHUuuuUL', N'visitanteQRcode@example.com', N'46415192', N'12301967816', NULL, N'03633000', N'04567000')
GO
INSERT [dbo].[Residents] ([Id], [Name], [LastName], [Email], [Phone], [Cpf], [Cep], [HouseNumber], [AdministratorId], [Image], [ImageUpload]) VALUES (N'bb6870d2-ff99-4f9d-8d2a-7f4ea73eab05', N'cassio', N'ramos ex-corinthians', N'cassio@example.com', N'599390171', N'97586618500', N'03633000', 87, NULL, N'cd10f00a-280a-42e9-88d1-b12f366ad6ce_cassioteste', 0x)
INSERT [dbo].[Residents] ([Id], [Name], [LastName], [Email], [Phone], [Cpf], [Cep], [HouseNumber], [AdministratorId], [Image], [ImageUpload]) VALUES (N'dec7b8d5-a268-4030-a5f9-7f84996558ac', N'theusinho', N'supertesteee', N'theusinho@example.com', N'657158415', N'90895632969', N'03633000', 5, NULL, N'', 0x)
INSERT [dbo].[Residents] ([Id], [Name], [LastName], [Email], [Phone], [Cpf], [Cep], [HouseNumber], [AdministratorId], [Image], [ImageUpload]) VALUES (N'1b3cc318-81f1-49de-ae59-9a82dde537c1', N'theusinho', N'supertesteee', N'theusininhoo@example.com', N'657158415', N'17807781980', N'03633000', 9, NULL, N'', 0x)
GO
/****** Object:  Index [IX_Doormans_AdministratorId]    Script Date: 02/04/2025 20:13:09 ******/
CREATE NONCLUSTERED INDEX [IX_Doormans_AdministratorId] ON [dbo].[Doormans]
(
	[AdministratorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Guests_DoormanId]    Script Date: 02/04/2025 20:13:09 ******/
CREATE NONCLUSTERED INDEX [IX_Guests_DoormanId] ON [dbo].[Guests]
(
	[DoormanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Residents_AdministratorId]    Script Date: 02/04/2025 20:13:09 ******/
CREATE NONCLUSTERED INDEX [IX_Residents_AdministratorId] ON [dbo].[Residents]
(
	[AdministratorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Administrators] ADD  DEFAULT (N'') FOR [Image]
GO
ALTER TABLE [dbo].[Administrators] ADD  DEFAULT (0x) FOR [ImageUpload]
GO
ALTER TABLE [dbo].[Guests] ADD  DEFAULT (N'') FOR [Cep]
GO
ALTER TABLE [dbo].[Guests] ADD  DEFAULT (N'') FOR [CepGuest]
GO
ALTER TABLE [dbo].[Residents] ADD  DEFAULT (N'') FOR [Image]
GO
ALTER TABLE [dbo].[Residents] ADD  DEFAULT (0x) FOR [ImageUpload]
GO
ALTER TABLE [dbo].[Doormans]  WITH CHECK ADD  CONSTRAINT [FK_Doormans_Administrators_AdministratorId] FOREIGN KEY([AdministratorId])
REFERENCES [dbo].[Administrators] ([Id])
GO
ALTER TABLE [dbo].[Doormans] CHECK CONSTRAINT [FK_Doormans_Administrators_AdministratorId]
GO
ALTER TABLE [dbo].[Guests]  WITH CHECK ADD  CONSTRAINT [FK_Guests_Doormans_DoormanId] FOREIGN KEY([DoormanId])
REFERENCES [dbo].[Doormans] ([Id])
GO
ALTER TABLE [dbo].[Guests] CHECK CONSTRAINT [FK_Guests_Doormans_DoormanId]
GO
ALTER TABLE [dbo].[Residents]  WITH CHECK ADD  CONSTRAINT [FK_Residents_Administrators_AdministratorId] FOREIGN KEY([AdministratorId])
REFERENCES [dbo].[Administrators] ([Id])
GO
ALTER TABLE [dbo].[Residents] CHECK CONSTRAINT [FK_Residents_Administrators_AdministratorId]
GO
USE [master]
GO
ALTER DATABASE [AccessCorpUsers] SET  READ_WRITE 
GO
