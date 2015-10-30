USE [master]
GO
/****** Object:  Database [BootLog]    Script Date: 10/30/2015 7:37:51 PM ******/
CREATE DATABASE [BootLog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BootLog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\BootLog.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BootLog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\BootLog_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BootLog] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BootLog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BootLog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BootLog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BootLog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BootLog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BootLog] SET ARITHABORT OFF 
GO
ALTER DATABASE [BootLog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BootLog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BootLog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BootLog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BootLog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BootLog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BootLog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BootLog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BootLog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BootLog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BootLog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BootLog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BootLog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BootLog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BootLog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BootLog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BootLog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BootLog] SET RECOVERY FULL 
GO
ALTER DATABASE [BootLog] SET  MULTI_USER 
GO
ALTER DATABASE [BootLog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BootLog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BootLog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BootLog] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BootLog] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BootLog', N'ON'
GO
USE [BootLog]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blog]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blog](
	[Name] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[Comment] [varchar](2000) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommentList]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentList](
	[PostID] [int] NOT NULL,
	[CommentID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Page]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Page](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[DescriptionHTML] [text] NOT NULL,
 CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[StatusID] [int] NOT NULL,
	[Posted] [datetime] NULL,
	[Submitted] [datetime] NOT NULL,
	[LastEdit] [datetime] NULL,
	[PostContentHTML] [text] NOT NULL,
	[ViewCounts] [int] NOT NULL,
	[EditedContentHTML] [text] NULL,
	[PendingEdit] [bit] NOT NULL CONSTRAINT [DF_Post_PendingEdit]  DEFAULT ((0)),
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tag](
	[TagID] [int] IDENTITY(1,1) NOT NULL,
	[Tag] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TagList]    Script Date: 10/30/2015 7:37:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagList](
	[PostID] [int] NOT NULL,
	[TagID] [int] NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201510301953092_InitialCreate', N'BootLog.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3FC0F90F829E7A0E522B97B38B6D60EF2275929EA09B0BD6D9A26F0B5AA21D61254A95A83441D15FD687FEA4FE850E254A166FBAD88AED140B2C2272F8CD70382487C3A1FFFAE3CFF187A730B01E7192FA1199D847A343DBC2C48D3C9F2C27764617DFBEB33FBCFFF7BFC6175EF864FD54D29D303A6849D289FD40697CEA38A9FB8043948E42DF4DA2345AD0911B850EF222E7F8F0F03BE7E8C8C100610396658D3F6584FA21CE3FE0731A1117C73443C175E4E120E5E55033CB51AD1B14E234462E9ED8DF4711FD182D4705A56D9D053E0229663858D8162224A288828CA79F533CA3494496B3180A5070FF1C63A05BA020C55CF6D31579D76E1C1EB36E38AB8625949BA5340A7B021E9D70BD3872F3B5B46B577A03CD5D8086E933EB75AEBD897DE5E1BCE8531480026486A7D32061C413FBBA627196C637988ECA86A302F23201B85FA3E4EBA88E7860756E7750D9D1F1E890FD3BB0A65940B3044F08CE68828203EB2E9B07BEFB237EBE8FBE623239399A2F4EDEBD798BBC93B7FFC3276FEA3D85BE029D500045774914E30464C38BAAFFB6E588ED1CB961D5ACD6A6D00AD8124C09DBBA464F1F3159D207982CC7EF6CEBD27FC25E59C28DEB33F1610641239A64F0799305019A07B8AA771A79B2FF1BB81EBF793B08D71BF4E82FF3A197F8C3C449605E7DC2415E9B3EF87131BD84F1FEC2C92E932864DFA27D15B55F665196B8AC339191E41E254B4C45E9C6CECA783B9934831ADEAC4BD4FD376D26A96ADE5A52D6A1756642C962DBB3A194F765F976B6B8B33886C1CB4D8B69A4C9E0C48D6A24B53CB078FDCA648EBA9A0C81AEFC9357C08B10F9C1004B60072EE0792CFC24C4552F6154028C486F99EF509AC20AE0FD1FA50F0DA2C39F03883EC36E968061CE280AE317E776F710117C93857366EFDBE335D8D0DCFF1A5D229746C90561AD36C6FB18B95FA38C5E10EF1C51FC99BA2520FBBCF7C3EE00838873E6BA384D2FC198B1378DC0B12E01AF083D39EE0DC716A75DBB20D300F9A1DE079196D12F25E9CA0FD15328BE88814CE78F34890A2BB84FBA895A929A452D285A45E5647D456560DD24E5946641738256390BAAC13CBC7C848677F172D8FDF7F136DBBC4D6B414D8D335821F10F98E0049631EF0E518A13B21A812EEBC62E9C857CF818D317DF9B724E3FA1201B9AD55AB3215F04869F0D39ECFECF865C4C287EF43DE6957438F894C400DF895E7FA66A9F739264DB9E0E4237B7CD7C3B6B8069BA9CA569E4FAF92CD084BC78C042941F7C38AB3D7A51F4468E8040C7C0D07DB6E54109F4CD968DEA969CE300536C9DB94548708A521779AA1AA1435E0FC1CA1D5523D82A12220AF75F8527583A4E5823C40E4129CC549F50755AF8C4F56314B46A496AD9710B637DAF78C835E738C684316CD54417E6FAC00713A0E2230D4A9B86C64ECDE29A0DD1E0B59AC6BCCD855D8DBB128FD88A4DB6F8CE06BBE4FEDB8B1866B3C6B6609CCD2AE922803188B70B03E56795AE06201F5CF6CD40A51393C140B94BB515031535B603031555F2EA0CB438A2761D7FE9BCBA6FE6291E94B7BFAD37AA6B07B629E863CF4CB3F03DA10D85163851CDF37CCE2AF113D51CCE404E7E3E4BB9AB2B9B08039F612A866C56FEAED60F759A4164236A025C195A0B28BFFE53809409D543B83296D7281DF7227AC09671B74658BEF64BB0351B50B1EBD7A03542F365A96C9C9D4E1F55CF2A6B508CBCD361A186A3310879F1123BDE4129A6B8ACAA982EBE701F6FB8D6313E180D0A6AF15C0D4A2A3B33B8964AD36CD792CE21EBE3926DA425C97D3268A9ECCCE05AE236DAAE248D53D0C32DD84845E2163ED0642B231DD56E53D58D9D22338A178C1D430AD5F81AC5B14F96B5942A5E62CD8A7CAAE9B7B3FEC9466181E1B8A926E7A892B6E244A3042DB1540BAC41D24B3F49E939A2688E589C67EA850A99766F352CFF25CBFAF6A90E62B90F94D4ECEFA28574692FECB3AA23C2DB5F42EF42E6CDE42174CDD8EB9B5B2CBD0D0528D144EDA7519085C4EC5C995B177777F5F645898A307624F915E749D194E2E28A6AEF3428EA841860802ABF65FD41324398545D7A9D75659B3C51334A1998AAA39882553B1B349303D379A064BFB0FF38B522BCCC7CE2C92875005ED413A396CFA080D5EABAA38A2927754CB1A63BA29457528794AA7A4859CF1E1184AC57AC8567D0A89EA23B07355FA48EAED67647D6648ED4A135D56B606B6496EBBAA36A924BEAC09AEAEED8AB4C137901DDE31DCB785A596BCB2A0EB39BED59068C97590D87D9F26A77F675A05A714F2C7E2BAF80F1F2BDB424E3896E2D4B2AE2179B599201C3BCE20837DDE282D3783D6FC614AEAF8545BDE9FADE8CD7CF5E5FD42A94C39C4C5271AF0E75D2E16DCC0F52ED8F6494935541625BA51A61437F4E290E478C6034FB2598063E66CB7749708D88BFC0292D5236ECE3C3A363E9ADCDFEBC7B71D2D40B340751D3E31771CCB6907D451E51E23EA044CD85D8E06DC80A5409335F110F3F4DECDFF256A779C482FD95171F5857E967E2FF9241C57D9261EB7735B773985CF9E683D59EBE6CE8AED5AB9FBF144D0FACDB0466CCA97528E9729D1116DF3BF492A668BA81346BBF8278BD134A786AA0459526C4FA2F0BE63E1DE4554129E537217AFA4F5FD1B42F073642D4BC0E180A6F10159AB2FFD7C13266FE7BF049F3CCFF7E9DD5BF04584734E32B009FF40793DF00745F86CA963BDC6A34E7A16D2C49B99E5B73A8374AA8DCF5DEA4A45A6F34D1D574EA1E701BA44CAF6119AF2CDB78B0DD51934C3C18F62E4DFBC53388F725697895CEB1DB5CE16DA607375C05FDA3B282F7208F4D9397B3FBDCDF6DDB9A2986BBE70994FD327CF7CCD878B6D6EEF378B76D6CA630EF9E1B5BAF6CDD3DB3B55DED9F3BB6B4CE5BE8CE736FD53422C35D8C2E16DC965B5B04CEE1843F8FC0080A8FB27812A94FE66A4A446D61B8223133356791C98C9589A3F055289AD9F6EB2BDFF01B3BCB699AD91A722F9B78F3F5BF9137A769E66DC868DC4556B036A75097A9DDB28E35253EBDA62C60A1272D49E76D3E6BE3C5FA6B4AFA1D4429C2EC31DC11BF9E1CDF415432E4D4E991D3AB5EF7C2DE59FBE544D8BF537FB98260BFA348B02BEC9A15CD155944E5E62D49549248119A6B4C91075BEA5942FD05722954B31873FEA63B8FDBB19B8E39F6AEC86D46E38C429771380F84801773029AF8E789CBA2CCE3DB38FF799221BA0062FA2C367F4BBECFFCC0ABE4BED4C4840C10CCBBE0115D369694457697CF15D24D443A0271F5554ED13D0EE300C0D25B32438F781DD9C0FC3EE225729F5711401348FB40886A1F9FFB6899A030E518ABF6F00936EC854FEFFF06C5C69ABD40540000, N'6.1.3-40302')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'019d8470-ad01-49f3-9cb4-573d532f9886', N'ringo_kam@hotmail.com', 0, N'ALK+bcQnCt4GjaFUkBWtyrIOgdxwduf1RYu2aW2uRPAE65QWb6VJnlmqL6vNFmd8mg==', N'e3284d29-d2f1-4f16-a391-64e33de276f1', NULL, 0, 0, NULL, 1, 0, N'ringo_kam@hotmail.com')
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([PostID], [UserID], [StatusID], [Posted], [Submitted], [LastEdit], [PostContentHTML], [ViewCounts], [EditedContentHTML], [PendingEdit]) VALUES (1, N'019d8470-ad01-49f3-9cb4-573d532f9886', 1, CAST(N'2015-10-30 00:00:00.000' AS DateTime), CAST(N'2015-10-30 00:00:00.000' AS DateTime), NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi volutpat, lacus ut sollicitudin iaculis, lacus velit vulputate risus, id bibendum dui sem nec ligula. Ut feugiat id odio eu tincidunt. Nullam nec fermentum nulla. In scelerisque risus ligula, ac auctor eros egestas vestibulum. Donec commodo felis a lectus commodo malesuada. Nunc id nisi eget justo mattis pharetra non eget eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus consectetur eros at tempus volutpat. Maecenas mollis suscipit eros, a tincidunt purus consequat eu.

Praesent a libero maximus, porta metus sit amet, dapibus eros. Pellentesque dictum commodo ante in convallis. Fusce in nunc mauris. Sed maximus tincidunt turpis id ullamcorper. Sed blandit tincidunt convallis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam aliquet feugiat orci, vel ornare mauris scelerisque iaculis. Vivamus sed pulvinar urna. Maecenas vestibulum sit amet neque ac sagittis. Aenean laoreet interdum ex a fringilla. Suspendisse commodo ante non diam sodales, in congue massa vulputate. Quisque eros dolor, consequat et elementum nec, sollicitudin congue dui. Aenean augue elit, porttitor non tincidunt eget, aliquet eget justo. Donec eget sem erat.

Donec fermentum arcu erat. Ut faucibus tincidunt massa, vitae accumsan ex tempor in. Aliquam tempus sodales mauris ut tincidunt. Vivamus hendrerit lorem eget tellus dapibus, quis interdum tortor tristique. Duis fringilla risus vel mauris placerat, et dignissim neque tempor. In condimentum enim ut neque laoreet faucibus. Praesent euismod nisi quam, quis aliquet odio euismod eu. Sed dapibus tristique fringilla.', 0, NULL, 0)
INSERT [dbo].[Post] ([PostID], [UserID], [StatusID], [Posted], [Submitted], [LastEdit], [PostContentHTML], [ViewCounts], [EditedContentHTML], [PendingEdit]) VALUES (4, N'019d8470-ad01-49f3-9cb4-573d532f9886', 1, CAST(N'2015-10-30 00:00:00.000' AS DateTime), CAST(N'2015-10-30 00:00:00.000' AS DateTime), NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi volutpat, lacus ut sollicitudin iaculis, lacus velit vulputate risus, id bibendum dui sem nec ligula. Ut feugiat id odio eu tincidunt. Nullam nec fermentum nulla. In scelerisque risus ligula, ac auctor eros egestas vestibulum. Donec commodo felis a lectus commodo malesuada. Nunc id nisi eget justo mattis pharetra non eget eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus consectetur eros at tempus volutpat. Maecenas mollis suscipit eros, a tincidunt purus consequat eu.

Praesent a libero maximus, porta metus sit amet, dapibus eros. Pellentesque dictum commodo ante in convallis. Fusce in nunc mauris. Sed maximus tincidunt turpis id ullamcorper. Sed blandit tincidunt convallis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam aliquet feugiat orci, vel ornare mauris scelerisque iaculis. Vivamus sed pulvinar urna. Maecenas vestibulum sit amet neque ac sagittis. Aenean laoreet interdum ex a fringilla. Suspendisse commodo ante non diam sodales, in congue massa vulputate. Quisque eros dolor, consequat et elementum nec, sollicitudin congue dui. Aenean augue elit, porttitor non tincidunt eget, aliquet eget justo. Donec eget sem erat.

Donec fermentum arcu erat. Ut faucibus tincidunt massa, vitae accumsan ex tempor in. Aliquam tempus sodales mauris ut tincidunt. Vivamus hendrerit lorem eget tellus dapibus, quis interdum tortor tristique. Duis fringilla risus vel mauris placerat, et dignissim neque tempor. In condimentum enim ut neque laoreet faucibus. Praesent euismod nisi quam, quis aliquet odio euismod eu. Sed dapibus tristique fringilla.', 0, NULL, 0)
INSERT [dbo].[Post] ([PostID], [UserID], [StatusID], [Posted], [Submitted], [LastEdit], [PostContentHTML], [ViewCounts], [EditedContentHTML], [PendingEdit]) VALUES (8, N'019d8470-ad01-49f3-9cb4-573d532f9886', 1, CAST(N'2015-10-12 00:00:00.000' AS DateTime), CAST(N'2015-10-12 00:00:00.000' AS DateTime), NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi volutpat, lacus ut sollicitudin iaculis, lacus velit vulputate risus, id bibendum dui sem nec ligula. Ut feugiat id odio eu tincidunt. Nullam nec fermentum nulla. In scelerisque risus ligula, ac auctor eros egestas vestibulum. Donec commodo felis a lectus commodo malesuada. Nunc id nisi eget justo mattis pharetra non eget eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus consectetur eros at tempus volutpat. Maecenas mollis suscipit eros, a tincidunt purus consequat eu.

Praesent a libero maximus, porta metus sit amet, dapibus eros. Pellentesque dictum commodo ante in convallis. Fusce in nunc mauris. Sed maximus tincidunt turpis id ullamcorper. Sed blandit tincidunt convallis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam aliquet feugiat orci, vel ornare mauris scelerisque iaculis. Vivamus sed pulvinar urna. Maecenas vestibulum sit amet neque ac sagittis. Aenean laoreet interdum ex a fringilla. Suspendisse commodo ante non diam sodales, in congue massa vulputate. Quisque eros dolor, consequat et elementum nec, sollicitudin congue dui. Aenean augue elit, porttitor non tincidunt eget, aliquet eget justo. Donec eget sem erat.

Donec fermentum arcu erat. Ut faucibus tincidunt massa, vitae accumsan ex tempor in. Aliquam tempus sodales mauris ut tincidunt. Vivamus hendrerit lorem eget tellus dapibus, quis interdum tortor tristique. Duis fringilla risus vel mauris placerat, et dignissim neque tempor. In condimentum enim ut neque laoreet faucibus. Praesent euismod nisi quam, quis aliquet odio euismod eu. Sed dapibus tristique fringilla.', 0, NULL, 0)
INSERT [dbo].[Post] ([PostID], [UserID], [StatusID], [Posted], [Submitted], [LastEdit], [PostContentHTML], [ViewCounts], [EditedContentHTML], [PendingEdit]) VALUES (9, N'019d8470-ad01-49f3-9cb4-573d532f9886', 1, CAST(N'2015-10-12 00:00:00.000' AS DateTime), CAST(N'2015-10-12 00:00:00.000' AS DateTime), NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi volutpat, lacus ut sollicitudin iaculis, lacus velit vulputate risus, id bibendum dui sem nec ligula. Ut feugiat id odio eu tincidunt. Nullam nec fermentum nulla. In scelerisque risus ligula, ac auctor eros egestas vestibulum. Donec commodo felis a lectus commodo malesuada. Nunc id nisi eget justo mattis pharetra non eget eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus consectetur eros at tempus volutpat. Maecenas mollis suscipit eros, a tincidunt purus consequat eu.

Praesent a libero maximus, porta metus sit amet, dapibus eros. Pellentesque dictum commodo ante in convallis. Fusce in nunc mauris. Sed maximus tincidunt turpis id ullamcorper. Sed blandit tincidunt convallis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam aliquet feugiat orci, vel ornare mauris scelerisque iaculis. Vivamus sed pulvinar urna. Maecenas vestibulum sit amet neque ac sagittis. Aenean laoreet interdum ex a fringilla. Suspendisse commodo ante non diam sodales, in congue massa vulputate. Quisque eros dolor, consequat et elementum nec, sollicitudin congue dui. Aenean augue elit, porttitor non tincidunt eget, aliquet eget justo. Donec eget sem erat.

Donec fermentum arcu erat. Ut faucibus tincidunt massa, vitae accumsan ex tempor in. Aliquam tempus sodales mauris ut tincidunt. Vivamus hendrerit lorem eget tellus dapibus, quis interdum tortor tristique. Duis fringilla risus vel mauris placerat, et dignissim neque tempor. In condimentum enim ut neque laoreet faucibus. Praesent euismod nisi quam, quis aliquet odio euismod eu. Sed dapibus tristique fringilla.', 0, NULL, 0)
INSERT [dbo].[Post] ([PostID], [UserID], [StatusID], [Posted], [Submitted], [LastEdit], [PostContentHTML], [ViewCounts], [EditedContentHTML], [PendingEdit]) VALUES (14, N'019d8470-ad01-49f3-9cb4-573d532f9886', 1, CAST(N'2015-10-12 00:00:00.000' AS DateTime), CAST(N'2015-10-12 00:00:00.000' AS DateTime), NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi volutpat, lacus ut sollicitudin iaculis, lacus velit vulputate risus, id bibendum dui sem nec ligula. Ut feugiat id odio eu tincidunt. Nullam nec fermentum nulla. In scelerisque risus ligula, ac auctor eros egestas vestibulum. Donec commodo felis a lectus commodo malesuada. Nunc id nisi eget justo mattis pharetra non eget eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus consectetur eros at tempus volutpat. Maecenas mollis suscipit eros, a tincidunt purus consequat eu.

Praesent a libero maximus, porta metus sit amet, dapibus eros. Pellentesque dictum commodo ante in convallis. Fusce in nunc mauris. Sed maximus tincidunt turpis id ullamcorper. Sed blandit tincidunt convallis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam aliquet feugiat orci, vel ornare mauris scelerisque iaculis. Vivamus sed pulvinar urna. Maecenas vestibulum sit amet neque ac sagittis. Aenean laoreet interdum ex a fringilla. Suspendisse commodo ante non diam sodales, in congue massa vulputate. Quisque eros dolor, consequat et elementum nec, sollicitudin congue dui. Aenean augue elit, porttitor non tincidunt eget, aliquet eget justo. Donec eget sem erat.

Donec fermentum arcu erat. Ut faucibus tincidunt massa, vitae accumsan ex tempor in. Aliquam tempus sodales mauris ut tincidunt. Vivamus hendrerit lorem eget tellus dapibus, quis interdum tortor tristique. Duis fringilla risus vel mauris placerat, et dignissim neque tempor. In condimentum enim ut neque laoreet faucibus. Praesent euismod nisi quam, quis aliquet odio euismod eu. Sed dapibus tristique fringilla.', 0, NULL, 0)
INSERT [dbo].[Post] ([PostID], [UserID], [StatusID], [Posted], [Submitted], [LastEdit], [PostContentHTML], [ViewCounts], [EditedContentHTML], [PendingEdit]) VALUES (15, N'019d8470-ad01-49f3-9cb4-573d532f9886', 1, CAST(N'2015-10-12 00:00:00.000' AS DateTime), CAST(N'2015-10-12 00:00:00.000' AS DateTime), NULL, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi volutpat, lacus ut sollicitudin iaculis, lacus velit vulputate risus, id bibendum dui sem nec ligula. Ut feugiat id odio eu tincidunt. Nullam nec fermentum nulla. In scelerisque risus ligula, ac auctor eros egestas vestibulum. Donec commodo felis a lectus commodo malesuada. Nunc id nisi eget justo mattis pharetra non eget eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus consectetur eros at tempus volutpat. Maecenas mollis suscipit eros, a tincidunt purus consequat eu.

Praesent a libero maximus, porta metus sit amet, dapibus eros. Pellentesque dictum commodo ante in convallis. Fusce in nunc mauris. Sed maximus tincidunt turpis id ullamcorper. Sed blandit tincidunt convallis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam aliquet feugiat orci, vel ornare mauris scelerisque iaculis. Vivamus sed pulvinar urna. Maecenas vestibulum sit amet neque ac sagittis. Aenean laoreet interdum ex a fringilla. Suspendisse commodo ante non diam sodales, in congue massa vulputate. Quisque eros dolor, consequat et elementum nec, sollicitudin congue dui. Aenean augue elit, porttitor non tincidunt eget, aliquet eget justo. Donec eget sem erat.

Donec fermentum arcu erat. Ut faucibus tincidunt massa, vitae accumsan ex tempor in. Aliquam tempus sodales mauris ut tincidunt. Vivamus hendrerit lorem eget tellus dapibus, quis interdum tortor tristique. Duis fringilla risus vel mauris placerat, et dignissim neque tempor. In condimentum enim ut neque laoreet faucibus. Praesent euismod nisi quam, quis aliquet odio euismod eu. Sed dapibus tristique fringilla.', 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[Post] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusID], [Status]) VALUES (1, N'Submitted')
INSERT [dbo].[Status] ([StatusID], [Status]) VALUES (2, N'Pending')
SET IDENTITY_INSERT [dbo].[Status] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/30/2015 7:37:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 10/30/2015 7:37:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 10/30/2015 7:37:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 10/30/2015 7:37:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 10/30/2015 7:37:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/30/2015 7:37:51 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_AspNetUsers]
GO
ALTER TABLE [dbo].[CommentList]  WITH CHECK ADD  CONSTRAINT [FK_CommentList_Comment] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comment] ([CommentID])
GO
ALTER TABLE [dbo].[CommentList] CHECK CONSTRAINT [FK_CommentList_Comment]
GO
ALTER TABLE [dbo].[CommentList]  WITH CHECK ADD  CONSTRAINT [FK_CommentList_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
GO
ALTER TABLE [dbo].[CommentList] CHECK CONSTRAINT [FK_CommentList_Post]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_AspNetUsers]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Status]
GO
ALTER TABLE [dbo].[TagList]  WITH CHECK ADD  CONSTRAINT [FK_TagList_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
GO
ALTER TABLE [dbo].[TagList] CHECK CONSTRAINT [FK_TagList_Post]
GO
ALTER TABLE [dbo].[TagList]  WITH CHECK ADD  CONSTRAINT [FK_TagList_Tag] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([TagID])
GO
ALTER TABLE [dbo].[TagList] CHECK CONSTRAINT [FK_TagList_Tag]
GO
USE [master]
GO
ALTER DATABASE [BootLog] SET  READ_WRITE 
GO
