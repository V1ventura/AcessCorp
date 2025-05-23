CREATE DATABASE [AccessCorp]
GO
ALTER DATABASE [AccessCorp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AccessCorp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AccessCorp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AccessCorp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AccessCorp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AccessCorp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AccessCorp] SET ARITHABORT OFF 
GO
ALTER DATABASE [AccessCorp] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AccessCorp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AccessCorp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AccessCorp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AccessCorp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AccessCorp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AccessCorp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AccessCorp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AccessCorp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AccessCorp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AccessCorp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AccessCorp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AccessCorp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AccessCorp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AccessCorp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AccessCorp] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AccessCorp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AccessCorp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AccessCorp] SET  MULTI_USER 
GO
ALTER DATABASE [AccessCorp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AccessCorp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AccessCorp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AccessCorp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AccessCorp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AccessCorp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AccessCorp] SET QUERY_STORE = OFF
GO
USE [AccessCorp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/04/2025 20:17:01 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 02/04/2025 20:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 02/04/2025 20:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 02/04/2025 20:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 02/04/2025 20:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 02/04/2025 20:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 02/04/2025 20:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 02/04/2025 20:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250301002551_Initial', N'8.0.10')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'def2bfb3-5e28-47dd-9d51-b93000e83807', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2, N'0a25c2c9-ee5b-433c-a5f0-ed18bbd1ba20', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3, N'a043d28e-f790-42af-bc57-d0b3340236f7', N'Permission', N'LimitedAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4, N'fb483e55-b05c-4650-98e2-4ae519337122', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5, N'5b6d4b77-e8ce-435d-8b01-954b5cba14a5', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (6, N'08c1f06c-ab3d-4aaf-9d5d-2b3e6a38a320', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (8, N'8a5d9363-34d5-4a9e-a6ff-6c7c7364e4e4', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (9, N'463f8da6-cfeb-4500-b6da-a5467f3bc26b', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (10, N'38e0a7a4-3266-4c86-8d81-46339bdf0875', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (11, N'bcd5d289-71a8-46bd-a26d-14f48bde7bf5', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (16, N'b3475aeb-3352-4208-93bc-26a3fa1e66e3', N'Permission', N'LimitedAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (17, N'bf177592-4552-47a8-9ce8-897d54a50e5d', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (18, N'ac4a12ae-abe1-418f-aa82-ad9c0e988570', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (19, N'970e832e-5c5a-4273-a2c5-262af77a516a', N'Permission', N'LimitedAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1019, N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'Permission', N'LimitedAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1020, N'b05c571e-440f-478a-9e0d-8fa100bd7e8e', N'Permission', N'LimitedAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1021, N'ecbb1657-ee1d-4146-8ec7-36090e6877cc', N'Permission', N'LimitedAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1022, N'8d0c99b7-90cf-490e-b203-025be1ba895a', N'Permission', N'LimitedAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1023, N'1dd4160f-66b2-4821-bc58-db9345efa981', N'Permission', N'FullAccess')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1024, N'470ebc7e-ff48-4b92-8dea-59d156f0baa0', N'Permission', N'FullAccess')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'08c1f06c-ab3d-4aaf-9d5d-2b3e6a38a320', N'matheusterzine@gmail.com', N'MATHEUSTERZINE@GMAIL.COM', N'matheusterzine@gmail.com', N'MATHEUSTERZINE@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEPu3qzQH5NnODDUYaHdDMjNoK7eoPuowocOr3tKEWwbaSQBvxkHJOH0RULbDLeoJ8g==', N'4VLV7KIITII5PTA5ONTARZ6T6WQHYDYK', N'f555763a-8326-4440-8e13-37cd35726a03', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0a25c2c9-ee5b-433c-a5f0-ed18bbd1ba20', N'users10@example.com', N'USERS10@EXAMPLE.COM', N'users10@example.com', N'USERS10@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEKJK95kCpAAf/w/1UuTCQCrfjp5GoAHGe/heTnkOpIoyiSvDryPkAfGoBkYS9qaD0Q==', N'YRAKUTJ2NPIB4J32RPATUUG7TZ2L5LMT', N'ab0e6c73-95e4-47d1-8ffb-b726242306fb', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0a788e52-1121-42ee-9ade-87a5b3f818ad', N'marcospaulo@example.com', N'MARCOSPAULO@EXAMPLE.COM', N'marcospaulo@example.com', N'MARCOSPAULO@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEGhQ1PDQIO9JN0cuCHrNiOhjvMhegM1iyOqHyZZ6+4ctuaa/IDae/z6SJHRNm1y7+A==', N'HYAVKYXIY3G7V3JPXYRDRCH3U3IRIUNU', N'05741f4c-e8e9-45c4-b546-ce6d166e6edc', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1dd4160f-66b2-4821-bc58-db9345efa981', N'cassioramos@example.com', N'CASSIORAMOS@EXAMPLE.COM', N'cassioramos@example.com', N'CASSIORAMOS@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEFQCFf/a2a2r7zub8PHC84U8kK2XsbsryB2p7j4+UJpq/7VAIPcDMah0Qbwt72c3Lw==', N'KN7DXAFZRATIJ5ZAFX7OGA2TFS4366WK', N'52e4bacf-52a4-479f-b77e-895efe06fc47', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'38e0a7a4-3266-4c86-8d81-46339bdf0875', N'matheusc@example.com', N'MATHEUSC@EXAMPLE.COM', N'matheusc@example.com', N'MATHEUSC@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEHowMKycuRHm9SNtWXAfFcDuDXn+FeTELNc1kykriULWD2mJ/+AyICRbO3z+scJAKw==', N'MGBO2EW3QNDFDU3QITHUTPE5UYPZ7FL4', N'ff62315e-7b93-427e-8da9-7b0d8202ce37', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3fa85f64-5717-4562-b3fc-2c963f66afa6', N'idgiual@example.com', N'IDGIUAL@EXAMPLE.COM', N'idgiual@example.com', N'IDGIUAL@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEAeXxtSV+S8d5chNwqJHXQ5pOeKj5BqqB9fJZ8JcwmQ+1tGG30qfawQbblWMiIDc0Q==', N'BTLBGO26HVICVS5SR2AALUPUEHGHBSXB', N'8ba5bb2a-161d-46cb-8e85-50fa55cfab11', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'419ba1c7-5e91-4a3c-bcb1-4618e98c9da5', N'user@userss.com', N'USER@USERSS.COM', N'user@userss.com', N'USER@USERSS.COM', 1, N'AQAAAAIAAYagAAAAEJ+YUFWEQAoCsVCFrYRnmIEsP9kkHDnp1qX7iMAwycqdnp01hz03GW+3l6sQx2vgmQ==', N'HJG6INEHWPVIQZ2X7ESCTQCEUNSMKO4P', N'19f1d35d-354b-4bdd-a4d6-ade76e672422', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'463f8da6-cfeb-4500-b6da-a5467f3bc26b', N'matheusterzino@example.com', N'MATHEUSTERZINO@EXAMPLE.COM', N'matheusterzino@example.com', N'MATHEUSTERZINO@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEGNrVeA3DjPutjJz/l1pzddvJTudSazK9XePu8At96QToUGJCcdm3zS33eh2ZoNrig==', N'G46UWEPEESHT4AZCHEHIYEKGOEYEKFQA', N'a721d32d-56b3-4f44-93d7-c5de456fd2f2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'470ebc7e-ff48-4b92-8dea-59d156f0baa0', N'cassio@ramos.com', N'CASSIO@RAMOS.COM', N'cassio@ramos.com', N'CASSIO@RAMOS.COM', 1, N'AQAAAAIAAYagAAAAEKI+HldLcsVu6bF61b7A0Mjq1vG0P/s24hSLsXxs6t+T3NLfDrGjiFU56PVWCIqTYw==', N'XO74SHIUOCYNGWUFFXZ7Y3UDFVNFM4FB', N'9bb53561-717c-48ae-b75e-474e15d1ca4f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5b6d4b77-e8ce-435d-8b01-954b5cba14a5', N'adimin@example.com', N'ADIMIN@EXAMPLE.COM', N'adimin@example.com', N'ADIMIN@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEJGsbY2bGLU4/GbHgtshoMMrhEvZ1PW8IQjPAG6yWtDKMfWZN2WwFCS5GHsCNzfiSg==', N'7USURX6HRBUGTRWKANGDRCU5C7XCFYPT', N'd2bf3e71-76e2-4ab8-ba64-ff48793d5136', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'675244f4-4587-4bb4-9add-9969ec7b0634', N'joao@example.com', N'JOAO@EXAMPLE.COM', N'joao@example.com', N'JOAO@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEI/K0nYqxKfkH+A+mMhN/5sEfBMUm1emSK4VXCBl8UE7P22XR+OySvImh7casqKYNA==', N'4F7SAT7URUWQM2QHRHP546BWI3WX64L2', N'24c83dd0-33de-48bd-85fb-c22c9579a922', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6b33b4e9-02d7-4bb8-a6c8-2debb387254d', N'user100@example.com', N'USER100@EXAMPLE.COM', N'user100@example.com', N'USER100@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEGBac4AbIHa1zIRLsCyxomnrt5opw5cl2ujivRVBhuUB5lYsI6s/j0Zz+K1TNogHCg==', N'BZ3O25AEZ6LRNYKNHXXYMQMBI2J45RJB', N'708f9280-d384-47cc-8afc-22d82f4fddaf', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'78f7b6ef-84c1-4693-875e-31c09687566a', N'user@user.com', N'USER@USER.COM', N'user@user.com', N'USER@USER.COM', 1, N'AQAAAAIAAYagAAAAEJHeqFIuB5eGYFdEdrVBNFWmyN8BoV0N4/s19HwhvGtOyHXEWyxY5+jCw8z5AWW2Jw==', N'QYOTPM5P4VBQJYMGUVH4HUUYRSATYV6V', N'6b525261-7840-4e5b-bf3a-19318a6e6203', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8a5d9363-34d5-4a9e-a6ff-6c7c7364e4e4', N'matheuss@example.com', N'MATHEUSS@EXAMPLE.COM', N'matheuss@example.com', N'MATHEUSS@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEO+Ps5/kId3VamGQB2zHm2hHmggoOVW9kZHLxbTD7+rfoKA7uV6qzOFW9st8VBwiWQ==', N'ZXL32BUEIIWVCOXM2UUU5KCQ6PLLU2T7', N'b40cef91-116c-44f0-a0d5-f72717ab1456', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8d0c99b7-90cf-490e-b203-025be1ba895a', N'theDoorman@example.com', N'THEDOORMAN@EXAMPLE.COM', N'theDoorman@example.com', N'THEDOORMAN@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAECcOeJ6c9gOerMpZbaj/6VBqEBtvmVO7Zs8wSwC8iU6HhZeeb3R0LNThhDJW6xOMcQ==', N'QYG4UL7XG3R6A5XKJIC2SGETDC4ZTBAZ', N'866cfe76-0611-451a-b2d0-e2dc4cb80cb0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'970e832e-5c5a-4273-a2c5-262af77a516a', N'matheusdoorman@example.com', N'MATHEUSDOORMAN@EXAMPLE.COM', N'matheusdoorman@example.com', N'MATHEUSDOORMAN@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEFhnR4jyH/JoCjjxWgjVPPT5izEMlq9gtYAEO5p9xZnJBVJUC7mmq/2e1si0ASztXw==', N'VNGCO4OKY2PJRKKIBW5MEATLUWKZHYLU', N'de8f53e5-e347-4b65-9649-dcc4b8ed6cce', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a043d28e-f790-42af-bc57-d0b3340236f7', N'doorman@example.com', N'DOORMAN@EXAMPLE.COM', N'doorman@example.com', N'DOORMAN@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEJTn41GZXN6P9Tht0YB2UhMyWBL0NSID9rHNK8vsGgJnce5s0TiPDHy1gawQf3WQOw==', N'LVU3B7KFJCMMOLXTB7PFVBF5Q6GNA7XQ', N'7a731e97-50a7-4b2f-9798-4f6834fe8846', NULL, 0, 0, NULL, 1, 2)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ac4a12ae-abe1-418f-aa82-ad9c0e988570', N'matheusterzine@example.com', N'MATHEUSTERZINE@EXAMPLE.COM', N'matheusterzine@example.com', N'MATHEUSTERZINE@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEIQrAvgVLgfoa+kN9x+NTRHDrfp1giQVSjQn7PMIipdx90SN1H8oksvHh5WKF4fKOw==', N'YOPUWFYISHDFQB5UVVAWHHBAKWONFMO7', N'10430c5b-40d7-42da-9cc7-2c89024df605', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b05c571e-440f-478a-9e0d-8fa100bd7e8e', N'idd@example.com', N'IDD@EXAMPLE.COM', N'idd@example.com', N'IDD@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEI592ZvjTbwuGewEwA9XMygPBWB/UNpK8/r+Yve5bANnpkIq3f/OuLBv4GlrYEx/Fg==', N'KTVETI6O5GMFHEU3I5BZ3L7SX2UINWYI', N'a735709d-9d41-4432-9aa5-a3fb17eb0d6b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b3475aeb-3352-4208-93bc-26a3fa1e66e3', N'dormanado@example.com', N'DORMANADO@EXAMPLE.COM', N'dormanado@example.com', N'DORMANADO@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAED29Y2P7XdQjY4WtQfolMEbqLHCHWVI3o+LY0hI6kcg6F5olKQ8TxE1mZ6zG/d+BBQ==', N'GA2IOVK634DEYUQHHOTQUTDOD6GW2UX4', N'52c777cc-03d8-4814-8c8c-ec00e5e9fafa', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bcd5d289-71a8-46bd-a26d-14f48bde7bf5', N'matheusc3@example.com', N'MATHEUSC3@EXAMPLE.COM', N'matheusc3@example.com', N'MATHEUSC3@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEE/PguHWZw2IEjG6+GklK1d8Gd+5N8UhjwQ9V8K5VrmgVuEQthAKvFqcQfhDzrbTbQ==', N'2PKD2CPEB6EEAT3W5I7I7QREBTYPRMGA', N'683a7029-ff1f-4cb9-95bd-c768e4f3704a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bf177592-4552-47a8-9ce8-897d54a50e5d', N'matheusterzini@example.com', N'MATHEUSTERZINI@EXAMPLE.COM', N'matheusterzini@example.com', N'MATHEUSTERZINI@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEL37RlmoXgevdvLH6lKC3kJnpXE2PiOhhRDUsDTv7UpyTd+SObNX591Xs9rbGcPcjg==', N'AC2XFSBHIDLZ27OUYX5JAIN7V2ARRLRX', N'f42fa3fd-bb10-49cc-b8d6-d9504ddf750b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c78c8b1d-db47-4f62-a7a8-6abc175e5f6d', N'user@users.com', N'USER@USERS.COM', N'user@users.com', N'USER@USERS.COM', 1, N'AQAAAAIAAYagAAAAEJY42wLZTaECGaWaIXlvlWJ30BjU/SnKhpFThyHYTYZBPOsNWNV1ZBqks+IodairAA==', N'2CLXLKTOLYYSLDWT3MOD27QSWFEG5UZL', N'373f726e-eb06-44d6-b2df-ff8d61db42f4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cde61756-81c1-4088-9926-21e317b09480', N'user@example.com', N'USER@EXAMPLE.COM', N'user@example.com', N'USER@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEJ6Btim5GyCB4ex88kXC5K3QXck41wxGyLOp1RFnDg3e6FP2SoVc3dWZwX5ZJM34kA==', N'WC5VDFMR26JNOJJMKTDMQ3KDOZZS5F3D', N'd4735e6d-45e0-43ec-97c0-d502b2268e2d', NULL, 0, 0, NULL, 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd1ef6283-3abb-40a3-be42-43934913b2af', N'user10@example.com', N'USER10@EXAMPLE.COM', N'user10@example.com', N'USER10@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEPvM40XRiM7d+FRifGPlqm1rmU58ui0OrzocGgWhG7fy9chr6uogMFOfBEM8NzcHDw==', N'EYP5SAPK4KSETHV7I4MWK5OI2WMCUIUC', N'91039cb1-23f4-4158-8077-4e123bead0a4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'def2bfb3-5e28-47dd-9d51-b93000e83807', N'user17@example.com', N'USER17@EXAMPLE.COM', N'user17@example.com', N'USER17@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEJckxQaUa67jEOiHHbPYTtskEVoDo3hIE6lxIgSsE7RDHtr8fJcjsd5RJsqGJ7ZCtg==', N'5L33J56FPMDVDPSHABOWFZO3LXOP376A', N'0cf6d6a4-4891-4702-865b-542a73cfa1f9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ecbb1657-ee1d-4146-8ec7-36090e6877cc', N'iddeteste@example.com', N'IDDETESTE@EXAMPLE.COM', N'iddeteste@example.com', N'IDDETESTE@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAENU2T4Q0VURMt/D9lS5bE1OMF1alY3G+FU70B65W5mHC11GknsUEZULI+cN3Y8wh0Q==', N'LQHIBP4AWYJSCARP76TFQJ4FEI2R44PL', N'9aed1534-540a-4a8a-be65-d55009c7e5de', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f02bd2de-3c63-4567-b5f0-419596ee22f0', N'user12@example.com', N'USER12@EXAMPLE.COM', N'user12@example.com', N'USER12@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEH7uLa36cFDUFICpQUbCm2zhqWnq4ePMSxdI8bBvxxB55tKUTGrOGuH/KbYvNNPSVQ==', N'S6TGAEITINJT77BQOODUAC22KLSBTW36', N'75589f5e-b4bb-4299-9391-e8bc2ab18c7b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f56d9049-c425-4c5c-918a-f082ef5a4c06', N'user1@example.com', N'USER1@EXAMPLE.COM', N'user1@example.com', N'USER1@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEAO1Yb1TWSwDennC8Ul1qL7MTUXwTjYKhRbl9PlW1vTVv+mIYcgggtXH3qhipDejsw==', N'CCFRFA4O5LJLBZIQW6QV4U7GZ6KEYDPX', N'7415ca08-160f-49c8-a7bc-22674195d82a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f65f248d-f9ac-45f3-9485-799bf8c5d6c6', N'user@useer.com', N'USER@USEER.COM', N'user@useer.com', N'USER@USEER.COM', 1, N'AQAAAAIAAYagAAAAEJtJgLk5dNepxjmaKseDNwMnCvK9I3FqezlCF/3bD9BoK8az1tqjVYiKTFApVBSJag==', N'VFIKTEEQFPVP6YALACSCCWNDNTYQ2QXA', N'8d973fc0-35e3-4072-aff0-9d07bb75ab46', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fb483e55-b05c-4650-98e2-4ae519337122', N'adm@example.com', N'ADM@EXAMPLE.COM', N'adm@example.com', N'ADM@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEEjgB9OBIwYER14uJkbX7cCQ9B0bJt56863ETxdMjlEq3bK4eeqIoNkOUZd6HZj/1w==', N'Q45GQBB7VRI23MI4565IQ3WQ332VH6RA', N'add3a07a-979d-429e-9d89-e7e83c2132ce', NULL, 0, 0, NULL, 1, 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 02/04/2025 20:17:01 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 02/04/2025 20:17:01 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 02/04/2025 20:17:01 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 02/04/2025 20:17:01 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 02/04/2025 20:17:01 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 02/04/2025 20:17:01 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 02/04/2025 20:17:01 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [AccessCorp] SET  READ_WRITE 
GO
