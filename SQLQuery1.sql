USE [HOTEL]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[Menu_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Menu] [varchar](50) NULL,
	[Act] [bigint] NULL,
	[Ord] [bigint] NULL,
	[Vid] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Icon] [varchar](100) NULL,
	[FType] [varchar](200) NULL,
	[Des] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON
INSERT [dbo].[Menu] ([Menu_Id], [Menu], [Act], [Ord], [Vid], [Addate], [Edate], [Uid], [Icon], [FType], [Des]) VALUES (1, N'Master', 1, 1, NULL, NULL, NULL, NULL, N'fa fa-cube', N'S', N'Master')
INSERT [dbo].[Menu] ([Menu_Id], [Menu], [Act], [Ord], [Vid], [Addate], [Edate], [Uid], [Icon], [FType], [Des]) VALUES (2, N'Customer & Company', 1, 3, NULL, NULL, NULL, NULL, N'fa fa-cube', N'S', N'Customer')
INSERT [dbo].[Menu] ([Menu_Id], [Menu], [Act], [Ord], [Vid], [Addate], [Edate], [Uid], [Icon], [FType], [Des]) VALUES (3, N'Rates & Inventory', 1, 4, NULL, NULL, NULL, NULL, N'fa fa-cube', N'S', N'RI')
INSERT [dbo].[Menu] ([Menu_Id], [Menu], [Act], [Ord], [Vid], [Addate], [Edate], [Uid], [Icon], [FType], [Des]) VALUES (4, N'Booking', 0, 5, NULL, NULL, NULL, NULL, N'fa fa-cube', N'S', N'Booking')
INSERT [dbo].[Menu] ([Menu_Id], [Menu], [Act], [Ord], [Vid], [Addate], [Edate], [Uid], [Icon], [FType], [Des]) VALUES (5, N'Receipt', 0, 6, NULL, NULL, NULL, NULL, N'fa fa-cube', N'S', N'Receipt')
INSERT [dbo].[Menu] ([Menu_Id], [Menu], [Act], [Ord], [Vid], [Addate], [Edate], [Uid], [Icon], [FType], [Des]) VALUES (6, N'Setting', 0, 7, NULL, NULL, NULL, NULL, N'fa fa-cube', N'S', N'Setting')
INSERT [dbo].[Menu] ([Menu_Id], [Menu], [Act], [Ord], [Vid], [Addate], [Edate], [Uid], [Icon], [FType], [Des]) VALUES (7, N'Room', 1, 2, NULL, NULL, NULL, NULL, N'fa fa-cube', N'S', N'Room')
INSERT [dbo].[Menu] ([Menu_Id], [Menu], [Act], [Ord], [Vid], [Addate], [Edate], [Uid], [Icon], [FType], [Des]) VALUES (8, N'Transaction', 1, 2, NULL, NULL, NULL, NULL, N'fa fa-cube', N'S', N'Transaction')
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[Mas_Twitter]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Twitter](
	[Twitter_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Twitter] [varchar](100) NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mas_TaxSetup_Det]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mas_TaxSetup_Det](
	[TaxSetup_Det_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TaxSetup_Id] [bigint] NULL,
	[FromAmt] [decimal](18, 2) NULL,
	[ToAmt] [decimal](18, 2) NULL,
	[Per] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mas_TaxSetup_Det] ON
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(999.99 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (2, 1, CAST(1000.00 AS Decimal(18, 2)), CAST(2499.99 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (3, 1, CAST(2500.00 AS Decimal(18, 2)), CAST(7499.99 AS Decimal(18, 2)), CAST(9.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (4, 1, CAST(7500.00 AS Decimal(18, 2)), CAST(99999.99 AS Decimal(18, 2)), CAST(14.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (5, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (6, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (7, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (8, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (10, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (11, 2, CAST(0.00 AS Decimal(18, 2)), CAST(999.99 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (12, 2, CAST(1000.00 AS Decimal(18, 2)), CAST(2499.99 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (13, 2, CAST(2500.00 AS Decimal(18, 2)), CAST(7499.99 AS Decimal(18, 2)), CAST(9.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (14, 2, CAST(7500.00 AS Decimal(18, 2)), CAST(99999.99 AS Decimal(18, 2)), CAST(14.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (15, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (16, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (17, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (18, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (19, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Mas_TaxSetup_Det] ([TaxSetup_Det_Id], [TaxSetup_Id], [FromAmt], [ToAmt], [Per]) VALUES (20, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Mas_TaxSetup_Det] OFF
/****** Object:  Table [dbo].[Mas_TaxSetup]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mas_TaxSetup](
	[TaxSetup_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Revenue_Id] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
	[UID] [bigint] NULL,
	[ADDDATE] [datetime] NULL,
	[EDDATE] [datetime] NULL,
 CONSTRAINT [PK_Mas_TaxSetup] PRIMARY KEY CLUSTERED 
(
	[TaxSetup_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mas_TaxSetup] ON
INSERT [dbo].[Mas_TaxSetup] ([TaxSetup_Id], [Revenue_Id], [Hotel_Id], [UID], [ADDDATE], [EDDATE]) VALUES (1, 3, 1, 1, CAST(0x0000AA5F013F0139 AS DateTime), NULL)
INSERT [dbo].[Mas_TaxSetup] ([TaxSetup_Id], [Revenue_Id], [Hotel_Id], [UID], [ADDDATE], [EDDATE]) VALUES (2, 4, 1, 1, CAST(0x0000AA5F013F5B28 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Mas_TaxSetup] OFF
/****** Object:  Table [dbo].[Mas_Status]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Status](
	[StatusID] [bigint] IDENTITY(1,1) NOT NULL,
	[STATUS] [varchar](50) NOT NULL,
	[COID] [int] NULL,
	[STOREID] [bigint] NULL,
	[UID] [bigint] NULL,
	[ADDDATE] [datetime] NULL,
	[EDDATE] [datetime] NULL,
	[DEDATE] [datetime] NULL,
 CONSTRAINT [PK_Mas_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mas_SEO]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_SEO](
	[SEO_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](7800) NULL,
	[Keywords] [varchar](7800) NULL,
	[Title] [varchar](7800) NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_SEO] ON
INSERT [dbo].[Mas_SEO] ([SEO_Id], [Description], [Keywords], [Title], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Mas_SEO] OFF
/****** Object:  Table [dbo].[Mas_RoomType]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_RoomType](
	[RoomType_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoomType] [varchar](50) NULL,
	[PrintingName] [varchar](50) NULL,
	[Adults] [numeric](18, 0) NULL,
	[Amount] [decimal](18, 2) NULL,
	[ADDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL,
	[ImgPath] [varchar](300) NULL,
	[Act] [bigint] NULL,
	[IMGKEY] [varchar](1000) NULL,
 CONSTRAINT [PK_Mas_RoomType_1] PRIMARY KEY CLUSTERED 
(
	[RoomType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_RoomType] ON
INSERT [dbo].[Mas_RoomType] ([RoomType_Id], [RoomType], [PrintingName], [Adults], [Amount], [ADDDATE], [Hotel_Id], [ImgPath], [Act], [IMGKEY]) VALUES (1, N'Standard', N'STD', CAST(2 AS Numeric(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5F00CE7558 AS DateTime), 1, NULL, NULL, N'3214019669')
INSERT [dbo].[Mas_RoomType] ([RoomType_Id], [RoomType], [PrintingName], [Adults], [Amount], [ADDDATE], [Hotel_Id], [ImgPath], [Act], [IMGKEY]) VALUES (2, N'Deluxe', N'DLX', CAST(2 AS Numeric(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5F00CE8212 AS DateTime), 1, NULL, NULL, N'1989415031')
INSERT [dbo].[Mas_RoomType] ([RoomType_Id], [RoomType], [PrintingName], [Adults], [Amount], [ADDDATE], [Hotel_Id], [ImgPath], [Act], [IMGKEY]) VALUES (3, N'Suite', N'SUT', CAST(2 AS Numeric(18, 0)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5F00CE8E4D AS DateTime), 1, NULL, NULL, N'321627017')
SET IDENTITY_INSERT [dbo].[Mas_RoomType] OFF
/****** Object:  Table [dbo].[Mas_Room_Facility]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Room_Facility](
	[RoomFacility_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoomNo] [varchar](100) NULL,
	[Facility_Id] [bigint] NULL,
	[Chk] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Room_Facility] ON
INSERT [dbo].[Mas_Room_Facility] ([RoomFacility_Id], [RoomNo], [Facility_Id], [Chk]) VALUES (1, N'101', 1, 1)
INSERT [dbo].[Mas_Room_Facility] ([RoomFacility_Id], [RoomNo], [Facility_Id], [Chk]) VALUES (2, N'101', 2, 1)
INSERT [dbo].[Mas_Room_Facility] ([RoomFacility_Id], [RoomNo], [Facility_Id], [Chk]) VALUES (3, N'201', 1, 1)
INSERT [dbo].[Mas_Room_Facility] ([RoomFacility_Id], [RoomNo], [Facility_Id], [Chk]) VALUES (4, N'301', 1, 1)
INSERT [dbo].[Mas_Room_Facility] ([RoomFacility_Id], [RoomNo], [Facility_Id], [Chk]) VALUES (5, N'301', 2, 1)
SET IDENTITY_INSERT [dbo].[Mas_Room_Facility] OFF
/****** Object:  Table [dbo].[Mas_Room]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Room](
	[Room_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoomNo] [varchar](100) NULL,
	[Floor_Id] [bigint] NULL,
	[Block_Id] [bigint] NULL,
	[BedType_Id] [bigint] NULL,
	[ADDDATE] [datetime] NULL,
	[EDDATE] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
	[RoomType_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Room] ON
INSERT [dbo].[Mas_Room] ([Room_Id], [RoomNo], [Floor_Id], [Block_Id], [BedType_Id], [ADDDATE], [EDDATE], [Uid], [Hotel_Id], [RoomType_Id]) VALUES (1, N'101', 1, 1, 2, CAST(0x0000AA5F00CEE840 AS DateTime), NULL, 1, 1, 1)
INSERT [dbo].[Mas_Room] ([Room_Id], [RoomNo], [Floor_Id], [Block_Id], [BedType_Id], [ADDDATE], [EDDATE], [Uid], [Hotel_Id], [RoomType_Id]) VALUES (2, N'102', 1, 1, 2, CAST(0x0000AA5F00CEEDC9 AS DateTime), NULL, 1, 1, 1)
INSERT [dbo].[Mas_Room] ([Room_Id], [RoomNo], [Floor_Id], [Block_Id], [BedType_Id], [ADDDATE], [EDDATE], [Uid], [Hotel_Id], [RoomType_Id]) VALUES (3, N'201', 2, 1, 2, CAST(0x0000AA5F00CEFDA0 AS DateTime), NULL, 1, 1, 2)
INSERT [dbo].[Mas_Room] ([Room_Id], [RoomNo], [Floor_Id], [Block_Id], [BedType_Id], [ADDDATE], [EDDATE], [Uid], [Hotel_Id], [RoomType_Id]) VALUES (4, N'301', 3, 1, 2, CAST(0x0000AA5F00CF1AD5 AS DateTime), NULL, 1, 1, 3)
SET IDENTITY_INSERT [dbo].[Mas_Room] OFF
/****** Object:  Table [dbo].[Mas_Review]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Review](
	[Review_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Titel] [varchar](1000) NULL,
	[Review] [varchar](5000) NULL,
	[Rating] [varchar](100) NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL,
	[Ap] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Review] ON
INSERT [dbo].[Mas_Review] ([Review_Id], [Titel], [Review], [Rating], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id], [Ap]) VALUES (1, N'â€œGreat Location - Well Maintained Hotelâ€', N'Right opposite to the station, the hotel is owned by the KR Bakery group who has the Bakery and the Restaurant (top of the bakery), which is something that one would immediately notice once you enter Coimbatore via the Railway Station. The Hotel is right behind the bakery, though the hotel does not have a resturant in house, you have... ', N'4', CAST(0x0000A46800D70BAE AS DateTime), 1, CAST(0x0000A490015C1865 AS DateTime), 1, 2)
INSERT [dbo].[Mas_Review] ([Review_Id], [Titel], [Review], [Rating], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id], [Ap]) VALUES (2, N'Nice Apartment', N'I had stayed in this apartment on the 2 nd week of September in this Apartment.
Service,Hospitality,Food is excellent.
Five Star Facilities are provided in very less Tariff.
Will recommend this property for all my Friends for Official as well Family visits.
Whenever  I visit Coimbatore every time  Challenger Residency is the place for me to Stay.
This is my second visit within weeks to this Place.
Hats Off to Mr. John for His Help & Hospitality.
James /Bangalore', N'4', CAST(0x0000A51A0089E5EE AS DateTime), 1, NULL, 1, 1)
INSERT [dbo].[Mas_Review] ([Review_Id], [Titel], [Review], [Rating], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id], [Ap]) VALUES (3, N'â€œGreat Location - Well Maintained Hotelâ€', N' Just 1.4 KM from the Airport ,very Close to Codissia Trade Fair Complex,JUst behind KMCH Hospital .Closer to Suguna Hall this place is Cozy & Comfortable for all type of Travellers.
Free Airport pick up & Drop,Shuttle service in nominal price for Codissia & Marriage functions.
Five Star Faciities available in this property.
Excellent Hospitality.
Kudos to their GM & Team.', N'4', CAST(0x0000A51A008CAE37 AS DateTime), 1, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_Review] OFF
/****** Object:  Table [dbo].[Mas_RevenueGroup]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_RevenueGroup](
	[RevenueGroup_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RevenueGroup] [varchar](150) NULL,
	[Active] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
 CONSTRAINT [PK_Mas_RevenueGroup_Id] PRIMARY KEY CLUSTERED 
(
	[RevenueGroup_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_RevenueGroup] ON
INSERT [dbo].[Mas_RevenueGroup] ([RevenueGroup_Id], [RevenueGroup], [Active], [Addate], [Edate], [Uid], [Hotel_Id]) VALUES (1, N'Tariff', 1, CAST(0x0000AA5F00D01C75 AS DateTime), NULL, 1, 1)
INSERT [dbo].[Mas_RevenueGroup] ([RevenueGroup_Id], [RevenueGroup], [Active], [Addate], [Edate], [Uid], [Hotel_Id]) VALUES (2, N'Taxes ', 1, CAST(0x0000AA5F00D0242C AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_RevenueGroup] OFF
/****** Object:  Table [dbo].[Mas_Revenue]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Revenue](
	[Revenue_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RevenueHead] [varchar](150) NULL,
	[RevenueShortName] [varchar](150) NULL,
	[RevenueGroup_Id] [bigint] NULL,
	[Taxhead] [varchar](100) NULL,
	[Slabbased] [bigint] NULL,
	[Taxpercentage] [decimal](18, 2) NULL,
	[HSN/SAC_Code] [varchar](100) NULL,
	[RevenueNature] [bigint] NULL,
	[Active] [bigint] NULL,
	[BillGroup_Id] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
 CONSTRAINT [PK_Mas_Revenue] PRIMARY KEY CLUSTERED 
(
	[Revenue_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [RevenueHead] UNIQUE NONCLUSTERED 
(
	[RevenueHead] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Revenue] ON
INSERT [dbo].[Mas_Revenue] ([Revenue_Id], [RevenueHead], [RevenueShortName], [RevenueGroup_Id], [Taxhead], [Slabbased], [Taxpercentage], [HSN/SAC_Code], [RevenueNature], [Active], [BillGroup_Id], [Hotel_Id], [Addate], [Edate], [Uid]) VALUES (1, N'Room Rent', N'Tariff', 1, N'0', 0, CAST(0.00 AS Decimal(18, 2)), N'HSN ', 1, 1, 1, 1, CAST(0x0000AA5F00D0EFA9 AS DateTime), CAST(0x0000AA5F013D8DCB AS DateTime), 1)
INSERT [dbo].[Mas_Revenue] ([Revenue_Id], [RevenueHead], [RevenueShortName], [RevenueGroup_Id], [Taxhead], [Slabbased], [Taxpercentage], [HSN/SAC_Code], [RevenueNature], [Active], [BillGroup_Id], [Hotel_Id], [Addate], [Edate], [Uid]) VALUES (2, N'Guest Charges', N'GS', 1, N'GST', 0, CAST(0.00 AS Decimal(18, 2)), N'12122', 1, 0, 1, 1, CAST(0x0000AA5F013DDF25 AS DateTime), CAST(0x0000AA5F013FB523 AS DateTime), 1)
INSERT [dbo].[Mas_Revenue] ([Revenue_Id], [RevenueHead], [RevenueShortName], [RevenueGroup_Id], [Taxhead], [Slabbased], [Taxpercentage], [HSN/SAC_Code], [RevenueNature], [Active], [BillGroup_Id], [Hotel_Id], [Addate], [Edate], [Uid]) VALUES (3, N'SGST', N'SGST', 2, N'SGST', 1, CAST(0.00 AS Decimal(18, 2)), N'2234', 1, 0, 2, 1, CAST(0x0000AA5F013E601A AS DateTime), CAST(0x0000AA5F013EF01A AS DateTime), 1)
INSERT [dbo].[Mas_Revenue] ([Revenue_Id], [RevenueHead], [RevenueShortName], [RevenueGroup_Id], [Taxhead], [Slabbased], [Taxpercentage], [HSN/SAC_Code], [RevenueNature], [Active], [BillGroup_Id], [Hotel_Id], [Addate], [Edate], [Uid]) VALUES (4, N'CGST', N'CGST', 2, N'CGST', 1, CAST(0.00 AS Decimal(18, 2)), N'234r', 1, 0, 2, 1, CAST(0x0000AA5F013E8421 AS DateTime), CAST(0x0000AA5F013EC686 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Mas_Revenue] OFF
/****** Object:  Table [dbo].[Mas_ReservationMode]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_ReservationMode](
	[ReservationMode_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReservationMode] [varchar](150) NULL,
	[Active] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
 CONSTRAINT [PK_Mas_ReservationMode] PRIMARY KEY CLUSTERED 
(
	[ReservationMode_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_ReservationMode] ON
INSERT [dbo].[Mas_ReservationMode] ([ReservationMode_Id], [ReservationMode], [Active], [Addate], [Edate], [Uid], [Hotel_Id]) VALUES (1, N'Direct', 1, CAST(0x0000AA5F00D089F3 AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_ReservationMode] OFF
/****** Object:  Table [dbo].[Mas_RatePlan_Det]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_RatePlan_Det](
	[RatePlanDet_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RatePlan_Id] [bigint] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[BaseRate] [decimal](18, 2) NULL,
	[Single] [decimal](18, 2) NULL,
	[Doubles] [decimal](18, 2) NULL,
	[Triple] [decimal](18, 2) NULL,
	[Quadruple] [decimal](18, 2) NULL,
	[AdultRate] [decimal](18, 2) NULL,
	[ChildRate] [decimal](18, 2) NULL,
	[FoodPlan_Id] [bigint] NULL,
	[AdultPlanAmt] [decimal](18, 2) NULL,
	[ChildPlanAmt] [decimal](18, 2) NULL,
	[WeekSingle] [decimal](18, 2) NULL,
	[WeekDoubles] [decimal](18, 2) NULL,
	[WeekTriple] [decimal](18, 2) NULL,
	[WeekQuadruple] [decimal](18, 2) NULL,
	[Keey] [varchar](100) NULL,
 CONSTRAINT [PK_Mas_RatePlan_Det] PRIMARY KEY CLUSTERED 
(
	[RatePlanDet_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_RatePlan_Det] ON
INSERT [dbo].[Mas_RatePlan_Det] ([RatePlanDet_Id], [RatePlan_Id], [FromDate], [ToDate], [BaseRate], [Single], [Doubles], [Triple], [Quadruple], [AdultRate], [ChildRate], [FoodPlan_Id], [AdultPlanAmt], [ChildPlanAmt], [WeekSingle], [WeekDoubles], [WeekTriple], [WeekQuadruple], [Keey]) VALUES (1, 1, CAST(0x0000AA5F00000000 AS DateTime), CAST(0x0000AA6800000000 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'6191200281837317690')
INSERT [dbo].[Mas_RatePlan_Det] ([RatePlanDet_Id], [RatePlan_Id], [FromDate], [ToDate], [BaseRate], [Single], [Doubles], [Triple], [Quadruple], [AdultRate], [ChildRate], [FoodPlan_Id], [AdultPlanAmt], [ChildPlanAmt], [WeekSingle], [WeekDoubles], [WeekTriple], [WeekQuadruple], [Keey]) VALUES (2, 1, CAST(0x0000AA6900000000 AS DateTime), CAST(0x0000AA7C00000000 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'6191200281837317690')
INSERT [dbo].[Mas_RatePlan_Det] ([RatePlanDet_Id], [RatePlan_Id], [FromDate], [ToDate], [BaseRate], [Single], [Doubles], [Triple], [Quadruple], [AdultRate], [ChildRate], [FoodPlan_Id], [AdultPlanAmt], [ChildPlanAmt], [WeekSingle], [WeekDoubles], [WeekTriple], [WeekQuadruple], [Keey]) VALUES (3, 2, CAST(0x0000AA5F00000000 AS DateTime), CAST(0x0000AA7C00000000 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'1555618349273623699')
SET IDENTITY_INSERT [dbo].[Mas_RatePlan_Det] OFF
/****** Object:  Table [dbo].[Mas_RatePlan]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_RatePlan](
	[RatePlan_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoomType_Id] [bigint] NULL,
	[PlanType_Id] [bigint] NULL,
	[DPlanType_Id] [bigint] NULL,
	[TariffIncOfTaxes] [bigint] NULL,
	[TariffIncOfPlan] [bigint] NULL,
	[PlanIncTax] [bigint] NULL,
	[Mon] [bigint] NULL,
	[Tue] [bigint] NULL,
	[Wed] [bigint] NULL,
	[Thu] [bigint] NULL,
	[Fri] [bigint] NULL,
	[Sat] [bigint] NULL,
	[Sun] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
	[Uid] [bigint] NULL,
	[Act] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[ADDDATE] [datetime] NULL,
	[Keey] [varchar](100) NULL,
 CONSTRAINT [PK_Mas_RatePlan] PRIMARY KEY CLUSTERED 
(
	[RatePlan_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_RatePlan] ON
INSERT [dbo].[Mas_RatePlan] ([RatePlan_Id], [RoomType_Id], [PlanType_Id], [DPlanType_Id], [TariffIncOfTaxes], [TariffIncOfPlan], [PlanIncTax], [Mon], [Tue], [Wed], [Thu], [Fri], [Sat], [Sun], [Hotel_Id], [Uid], [Act], [EDDATE], [STOREID], [ADDDATE], [Keey]) VALUES (1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, CAST(0x0000AA5F00D6F7F8 AS DateTime), N'6191200281837317690')
INSERT [dbo].[Mas_RatePlan] ([RatePlan_Id], [RoomType_Id], [PlanType_Id], [DPlanType_Id], [TariffIncOfTaxes], [TariffIncOfPlan], [PlanIncTax], [Mon], [Tue], [Wed], [Thu], [Fri], [Sat], [Sun], [Hotel_Id], [Uid], [Act], [EDDATE], [STOREID], [ADDDATE], [Keey]) VALUES (2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, CAST(0x0000AA5F0122C0A4 AS DateTime), N'1555618349273623699')
SET IDENTITY_INSERT [dbo].[Mas_RatePlan] OFF
/****** Object:  Table [dbo].[Mas_PlanType]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_PlanType](
	[PlanType_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RateCode] [varchar](50) NULL,
	[RateCaption] [varchar](150) NULL,
	[ShortName] [varchar](150) NULL,
	[SCCB] [bigint] NULL,
	[DEFA] [bigint] NULL,
	[Act] [bigint] NULL,
	[PubTarriff] [bigint] NULL,
	[NetTarriff] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[ADDDATE] [datetime] NULL,
 CONSTRAINT [PK_Mas_PlanType] PRIMARY KEY CLUSTERED 
(
	[PlanType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_PlanType] ON
INSERT [dbo].[Mas_PlanType] ([PlanType_Id], [RateCode], [RateCaption], [ShortName], [SCCB], [DEFA], [Act], [PubTarriff], [NetTarriff], [Hotel_Id], [EDDATE], [STOREID], [ADDDATE]) VALUES (1, N'Published Tariff', N'Published Tariff', N'Tariff', 0, 0, 0, 0, 0, 1, NULL, NULL, CAST(0x0000AA5F00D41DC8 AS DateTime))
INSERT [dbo].[Mas_PlanType] ([PlanType_Id], [RateCode], [RateCaption], [ShortName], [SCCB], [DEFA], [Act], [PubTarriff], [NetTarriff], [Hotel_Id], [EDDATE], [STOREID], [ADDDATE]) VALUES (2, N'Nett Tariff', N'NETT', N'net', 0, 0, 0, 0, 1, 1, NULL, NULL, CAST(0x0000AA5F01216756 AS DateTime))
SET IDENTITY_INSERT [dbo].[Mas_PlanType] OFF
/****** Object:  Table [dbo].[Mas_Paymode]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Paymode](
	[PayMode_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PayModeCode] [varchar](50) NULL,
	[PayMode] [varchar](50) NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
 CONSTRAINT [PK_Mas_Paymode] PRIMARY KEY CLUSTERED 
(
	[PayMode_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Paymode] ON
INSERT [dbo].[Mas_Paymode] ([PayMode_Id], [PayModeCode], [PayMode], [Addate], [Edate], [Uid], [ADDDATE], [STOREID], [EDDATE]) VALUES (1, NULL, N'CASH', NULL, NULL, NULL, CAST(0x0000A7F300D9C15B AS DateTime), NULL, NULL)
INSERT [dbo].[Mas_Paymode] ([PayMode_Id], [PayModeCode], [PayMode], [Addate], [Edate], [Uid], [ADDDATE], [STOREID], [EDDATE]) VALUES (2, NULL, N'CREDIT CARD', NULL, NULL, NULL, CAST(0x0000AA50011038C2 AS DateTime), NULL, NULL)
INSERT [dbo].[Mas_Paymode] ([PayMode_Id], [PayModeCode], [PayMode], [Addate], [Edate], [Uid], [ADDDATE], [STOREID], [EDDATE]) VALUES (3, NULL, N'CITY LEDGER', NULL, NULL, NULL, CAST(0x0000AA5001104316 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mas_Paymode] OFF
/****** Object:  Table [dbo].[Mas_MarketSegment]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_MarketSegment](
	[MarketSegment_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MarketSegment] [varchar](150) NULL,
	[Active] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
 CONSTRAINT [PK_Mas_MarketSegment] PRIMARY KEY CLUSTERED 
(
	[MarketSegment_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_MarketSegment] ON
INSERT [dbo].[Mas_MarketSegment] ([MarketSegment_Id], [MarketSegment], [Active], [Addate], [Edate], [Uid], [Hotel_Id]) VALUES (1, N'Corporate ', 1, CAST(0x0000AA5F00CF845A AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_MarketSegment] OFF
/****** Object:  Table [dbo].[Mas_MailServer]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Mas_MailServer](
	[Server_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ServerName] [varchar](100) NULL,
	[Port] [varchar](50) NULL,
	[Smtp] [varchar](50) NULL,
	[Essl] [varchar](50) NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[Mas_MailServer] ADD [Email] [varchar](100) NULL
ALTER TABLE [dbo].[Mas_MailServer] ADD [Password] [varchar](100) NULL
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_MailServer] ON
INSERT [dbo].[Mas_MailServer] ([Server_Id], [ServerName], [Port], [Smtp], [Essl], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id], [Email], [Password]) VALUES (1, N'google.com', N'465', N'ssl://smtp.gmail.com', N'True', CAST(0x0000A2B7012E3ED4 AS DateTime), 1, CAST(0x0000A4F400C96906 AS DateTime), 1, N'gm@challengerrresidency.com', N'gm@12345')
SET IDENTITY_INSERT [dbo].[Mas_MailServer] OFF
/****** Object:  Table [dbo].[Mas_Linkedin]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Linkedin](
	[Linkedin_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Linkedin] [varchar](100) NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Linkedin] ON
INSERT [dbo].[Mas_Linkedin] ([Linkedin_Id], [Linkedin], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id]) VALUES (1, N'sdsd', NULL, NULL, CAST(0x0000A490015B8382 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Mas_Linkedin] OFF
/****** Object:  Table [dbo].[Mas_Hotelpolice]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Hotelpolice](
	[Hotelpolice_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Hotelpolice] [varchar](100) NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Hotelpolice] ON
INSERT [dbo].[Mas_Hotelpolice] ([Hotelpolice_Id], [Hotelpolice], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id]) VALUES (1, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Mas_Hotelpolice] ([Hotelpolice_Id], [Hotelpolice], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id]) VALUES (2, NULL, NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Mas_Hotelpolice] OFF
/****** Object:  Table [dbo].[Mas_HotelFacility]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_HotelFacility](
	[Facility_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FacilityCode] [varchar](50) NULL,
	[Facility] [varchar](50) NULL,
	[ADDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
 CONSTRAINT [PK_Mas_HotelFacility] PRIMARY KEY CLUSTERED 
(
	[Facility_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_HotelFacility] ON
INSERT [dbo].[Mas_HotelFacility] ([Facility_Id], [FacilityCode], [Facility], [ADDDATE], [Hotel_Id], [EDDATE], [STOREID]) VALUES (1, NULL, N'Swimming Pool view', CAST(0x0000AA5F00CE3FD3 AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Mas_HotelFacility] ([Facility_Id], [FacilityCode], [Facility], [ADDDATE], [Hotel_Id], [EDDATE], [STOREID]) VALUES (2, NULL, N'Temple View', CAST(0x0000AA5F00CE49A7 AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mas_HotelFacility] OFF
/****** Object:  Table [dbo].[Mas_Hotel]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Hotel](
	[Hotel_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HCode] [varchar](100) NULL,
	[Company] [varchar](200) NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Titel] [varchar](50) NULL,
	[Address] [varchar](5000) NULL,
	[City] [varchar](100) NULL,
	[PinCode] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[MobileNo] [varchar](100) NULL,
	[Act] [bigint] NULL,
	[Description] [varchar](5000) NULL,
	[Phone] [varchar](20) NULL,
	[Pass] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Hotel_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Hotel] ON
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (1, N'1001', N'HOTEL AAKASH', N'AASASH', N'AASASH', N'Mr', N' No 79/1, Chengam Road, 
Opp Ramana Ashram, 
 Thiruvannamalai
india ', N'TIRUVANNAMALAI', N'', N'hotelaakash@gmail.com', N'8883390777', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (2, N'1002', N'GRAND PLAZA', N'PRAKASH', N'PRAKASH', N'Mr', N'Gopalapuram, 
Coimbatore, 
Tamil Nadu 641018', N'COIMBATORE', N'641018', N'hotelgrandplaza@gmail.com', N'0422-2301111', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (3, N'1003', N'HOTEL RAMMUS', N'ROBERT', N'ROBERT', N'Mr', N' No.65, Davey & Co. Lane, 
Opposite Railway Station, 
Geetha Hall Road, 
Coimbatore,
 Tamil Nadu 641018
', N'COIMBATORE', N'641018', N'hotelrammus@gmail.com', N'0422 439 3000', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (4, N'1004', N'HOTEL NAVEEN', N'ROBERT', N'ROBERT', N'Mr', N'27, Davey & Co Lane, 
Opposite Railway Station, 
Race Course, Coimbatore, 
Tamil Nadu 641018
', N'COIMBATORE', N'641018', N'hotelnaveen@gmail.com', N'0422 439 2351', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (5, N'1005', N'LEGENDS INN', N'RAJESH', N'RAJESH', N'Mr', N' No.77, State Bank Road, 
Geetha Hall Road, 
Opp railway Station, 
Gopalapuram, 
Coimbatore,
 Tamil Nadu 641008
', N'COIMBATORE', N'641008', N'legendsinn@gmail.com', N'0422 435 0000', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (6, N'1006', N'GEETHA HALL', N'KARTHIKAYAN', N'KARTHIKAYAN', N'Mr', N'181, Near Wine Shop, 
Railway Station, 
Coimbatore, 
Tamil Nadu 641018
Phone: 0422 230 0049', N'COIMBATORE', N'641018', N'geethahall@gmail.com', N'0422 230 0049', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (7, N'1007', N'ANAND VIKAR', N'HARI PRIYA', N'HARI PRIYA', N'Mr', N' 95, Geetha Hall Rd, 
Opp Railway Station, 
Coimbatore, 
Tamil Nadu 641318
', N'COIMBATORE', N' 641318', N'anandvikar@gmail.com', N' 0422 230 0584', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (8, N'1008', N'AP', N'PRAKASH', N'PRAKASH', N'Mr', N' 69, Davey & Co Lane, 
(Opp Railway Station), 
Coimbatore, 
Tamil Nadu 641018
Phone: 0422 230 1773', N'COIMBATORE', N'641018', N'ap@gmail.ocm', N'0422 230 1773', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (9, N'1009', N'ESKEPI', N'SUBBIYA', N'SUBBIYA', N'Mr', N'COIMBATORE', N'COIMBATORE', N'', N'eskepi@gmail.com', N'1234567852', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (10, N'1010', N'BLUE STAR', N'RAMESH', N'RAMESH', N'Mr', N'369A, Nehru Street, 
Near Gandhipuram Bus Stop, 
Ram Nagar, Coimbatore,
 Tamil Nadu 641009
Phone: 0422 223 063', N'COIMBATORE', N' 641009', N'bluestar@gmail.com', N'0422 223 063', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (11, N'1011', N'BLUE STAR', N'RAMESH', N'RAMESH', N'Mr', N'369A, Nehru Street, 
Near Gandhipuram Bus Stop, 
Ram Nagar, Coimbatore, 
Tamil Nadu 641009
Phone: 0422 223 063', N'COIMBATORE', N' 641009', N'bluestar@gmail.com', N'0422 223 063', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (12, N'1012', N'HOTEL LALA', N'KARTHI', N'KARTHI', N'Mr', N' 5th St, Opposite Ranga Fast Food, 
Gandhi Puram, Sathy 3rd Cross Rd,
 Gandhipuram, 
Coimbatore, 
Tamil Nadu 641012
Phone: 0422 249 7910', N'COIMBATORE', N'641012', N'hotellala@gmail.com', N'0422 249 7910', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (13, N'1013', N'SUNSHINE', N'ARUN', N'ARUN', N'Mr', N'Avinashi Main Road, 
Arasur, 
coimbatore - 641407, 
Opposite Makino Pvt Ltd, , 
Arasur Pirivu', N'COIMBATORE', N'641407', N'sunshine@gmail.com', N'+(91)-8760462042,9585552602', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (14, N'1014', N'VIJAY PARADISE', N'SIVAKUMAR', N'SIVAKUMAR', N'Mr', N'173 / C, N.S.R. Road,  
Saibaba Colony, 
Coimbatore, 
Tamil Nadu 641011
Phone: 0422 245 2222', N'COIMBATORE', N'641011', N'Vijayparadise@gmail.com', N'0422 245 2222', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (15, N'1015', N'FOREST TRANSIT', N'AROON', N'AROON', N'Mr', N'Avaram Palayam Road,
 Coimbatore, 
Tamil Nadu 641044
Phone: 0422 224 4888', N'COIMBATORE', N'641044', N'foresttransit@gmail.com', N'0422 224 4888', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (16, N'1016', N'HOTEL AAKASH', N'AASASH', N'AASASH', N'Mr', N' No 79/1, Chengam Road, 
Opp Ramana Ashram, 
 Thiruvannamalai
india ', N'COIMBATORE', N'', N'hotelaakash@gmail.com', N'1234567852', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (17, N'1017', N'ESS GRANDE', N'SANDHYA', N'SANDHYA', N'Mr', N'358-360, Nehru St, 
Ram Nagar, Coimbatore, 
Tamil Nadu 641009
Phone: 093228 00100', N'COIMBATORE', N'641009', N'essgrande@gmail.com', N'093228 00100', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (18, N'1018', N'VISHNU PRIYA', N'MAKENDHARAN', N'MAKENDHARAN', N'Mr', N'14, Kalingarayan Street, 
Ram Nagar, Coimbatore,
Tamil Nadu 641009
Phone: 0422 422 8000', N'COIMBATORE', N'641009', N'vishnupriya@gmail.com', N'0422 422 8000', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (19, N'1019', N'CHALLENGER RESIDENCY', N'RAJA', N'RAJA', N'Mr', N' 764/1A, Palanisamy Naidu Colony Street, 
Kalapatti Main Rd,
 Civil Aerodrome Post, 
Coimbatore, Tamil Nadu 641014
Phone: 0422 439 4700', N'COIMBATORE', N'641014', N'challengerresidency@gmail.com', N'0422 439 4700', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (20, N'1020', N'HOTEL THE FORTUNE', N'NEELAVATHI', N'NEELAVATHI', N'Mr', N' 108, Ansari Street, 
Ram Nagar, Coimbatore, 
Tamil Nadu 641009
Phone: 0422 421 2345', N'COIMBATORE', N'641009', N'hotelthefortune@gmail.com', N'0422 421 2345', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (21, N'1021', N'VELS GRAND INN', N'GOPI', N'GOPI', N'Mr', N'8 14, raju layout,, 54,
 Chinnasamy Naidu Rd, 
Gandipuram, Coimbatore, 
Tamil Nadu 641012
Phone: 090424 23737', N'COIMBATORE', N'641012', N'velsgrandinn@gmail.com', N'090424 23737', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (22, N'1022', N'MPS RESIDENTIAL', N'MANDHIRI', N'MANDHIRI', N'Mr', N' 6, Eswaran kovil street (north),, 
Tiruppur, Tamil Nadu 641601
Phone: 0421 432 2323', N'TIRUPUR', N' 641601', N'mpsdesidential@gmail.com', N'0421 432 2323', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (23, N'1023', N'SWARD MANTRA', N'SARAVANAN', N'SARAVANAN', N'Mr', N'No: 8/4(5) Sathappa Compound,
 harvey Road, behind Eye Foundation, 
Tiruppur, Tamil Nadu 641602
Phone: 0421 220 2333', N'TIRUPUR', N'641602', N'swardmantra@gmail.com', N' 0421 220 2333', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (24, N'1024', N'HOTEL VIJAY', N'VIJAY', N'VIJAY', N'Mr', N' Tirupparankunram Rd, (TPK Road) Madurai, 
 Madurai, 
Tamil Nadu 625001
Phone: 0452 233 6321', N'MADURAI', N'625001', N'hotelmadurai@gmail.com', N'0452 233 6321', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (25, N'1025', N'METROPOLE', N'RANGITH', N'RANGITH', N'Mr', N'17 A, Melur Road Vinayaga Nagar ,
Opposite Raja Muthiah Mandram, 
Madurai, Tamil Nadu 625020
Phone: 0452 422 2222', N'MADURAI', N'625020', N'metropole@gmail.com', N'0452 422 2222', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (26, N'1026', N'NAHAR', N'SARAVANA', N'SARAVANA', N'Mr', N' 52-A, Charing Cross,
 Ooty, Tamil Nadu 643001
Phone: 0423 244 2173', N'OOTY', N'643001', N'nahar@gmail.com', N' 0423 244 2173', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (27, N'1027', N'PRINCE TOWER', N'PRINCE', N'PRINCE', N'Mr', N' New No. 97 , (Old No 133), Near Old Bus Stand,
 M G Road, 
Mayiladuthurai, Tamil Nadu 609001
Phone: 097503 99333', N'MYLADUDURAI', N' 609001', N'princetower@gmail.com', N'097503 99333', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (28, N'1028', N'RK RESIDENCY', N'RK', N'RK', N'Mr', N' No. 30, Venugopal Pillai Street
, Chidambaram, Tamil Nadu 608001
Phone: 04144 226 713', N'CHIDAMBARAM', N'608001', N'rkresidency@gmail.com', N'04144 226 713', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (29, N'1029', N'RK GRAND', N'RKGRAND', N'RK', N'Mr', N'59, East Car Street, Near Natarajar Temple, 
Chidambaram, Tamil Nadu 608001
Phone: 094883 70859
', N'CHIDAMBARAM', N'608001', N'rkgrand@gmail.com', N'094883 70859', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (30, N'1030', N'CHIDAMBARAM', N'MANIKANDAN', N'MANIKANDAN', N'Mr', N'Senayapuram Colony, 
Sivakasi, Tamil Nadu 626123', N'SIVAKASI', N' 626123', N'chidambaram@gmail.com', N'1234567852', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (31, N'1031', N'GEETHA INTERNATIONAL', N'ARUN', N'ARUN', N'Mr', N' 1/9, Polepettai, Near New Bus Stand, 
Thoothukudi, Tamil Nadu 628002
Phone: 0461 234 6174
', N'TUTICORIN', N'628002', N'geethainternational@gmail.com', N'0461 234 6174', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (32, N'1032', N'SAKTHI RIVER RESORT', N'SAKTHI', N'SAKTHI', N'Mr', N' Subbe Gounden Pudur Pirivu, 
Pollachi To Trichur Highway, 
Pollachi, Tamil Nadu 642103
Phone: 04259 253 865', N'POLLACHI', N'642103', N'sakthiriverresort@gmail.com', N' 04259 253 865', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (33, N'1033', N'SAKTHI HOTEL', N'SAKTHI', N'SAKTHI', N'Mr', N'144, Coimbatore Main Road, 
Opp. Dorais Theater, 
Pollachi, Tamil Nadu 642002
Phone: 04259 223 050', N'POLLACHI', N' 642002', N'sakthi@gmail.com', N'04259 223 050', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (34, N'1034', N'NAHAR KOTAGIRI', N'SALVAM', N'SALVAM', N'Mr', N' Kotahall Road, Near Mount Don Bosco, 
Kotagiri, Tamil Nadu 643217
Phone: 04266 274 400', N'OOTY', N'643217', N'naharkotagiri@gmail.com', N'04266 274 400', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (35, N'1035', N'SRI KRISHNA RESIDENCY', N'KRISHNA', N'KRISHNA', N'Mr', N' Raja Mill Rd, Vinayagar Kovil,
Coimbatore, Tamil Nadu 642001
Phone: 090804 65557', N'POLLACHI', N'642001', N'srikrishnaresidency@gmail.com', N'090804 65557', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (36, N'1036', N'PIONEER PARADISE', N'RAMASH', N'RAMASH', N'Mr', N'Tower Junction, Nagarcoil,
 Kanyakumari, Tamil Nadu 629702
Phone: 04652 238 541', N'NAGERCOIL', N'629702', N'pioneerparadise@gmail.com', N' 04652 238 541', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (37, N'1037', N'HOTEL SEETHARAM', N'SEETHARAM', N'SEETHARAM', N'Mr', N' No 67,, Malaviya St, Ram Nagar, 
Coimbatore, Tamil Nadu 641009
Phone: 099443 00006', N'COIMBATORE', N' 641009', N'hotelseetharam@gmail.com', N'099443 00006', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (38, N'1038', N'ANANYAS NEST', N'ANANYA', N'ANANYA', N'Mr', N' 42, Bharathi Park Cross Road No. 3, Saibaba Colony,
Coimbatore, Tamil Nadu 641011
Phone: 0422 244 4040', N'COIMBATORE', N'  641011', N'ananyasnest@gmail.com', N'0422 244 4040', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (39, N'1039', N'SBS GRAND', N'SALVAN', N'SALVAN', N'Mr', N' No. 1562, Avinashi Road, Hope College,
 Peelamedu, Coimbatore, Tamil Nadu 641004
Phone: 096777 15900', N'COIMBATORE', N'641004', N'sbsgrand@gmail.com', N'096777 15900', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (40, N'1040', N'MAHIS GATEWAY HOTEL', N'MAHIS', N'MAHIS', N'Mr', N' 11/5, Avinashi Rd, Goldwins, Civil Aerodrome Post, 
Near KMCH, Coimbatore, Tamil Nadu 641014
Phone: 0422 262 7666', N'COIMBATORE', N'641014', N'mahisgatewayhotel@gmail.com', N'0422 262 7666', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (41, N'1041', N'VIJAY PARK', N'VIJAY', N'VIJAY', N'Mr', N' 34/1, Polur Road, Tiruvannamalai, 
Tamil Nadu 606601
Phone: 04175 252 588', N'TIRUVANNAMALAI', N' 606601', N'vijaypark@gmail.com', N'04175 252 588', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (42, N'1042', N'GOWTHEM LODGE', N'GOWTHEM', N'GOWTHEM', N'Mr', N'9/36-A, Avinashi Road, Near KMCH, Sitra,,
 Civil Aerodrome Post,,
 Coimbatore, Tamil Nadu 641014', N'COIMBATORE', N' 641014', N'gowthemlodge@gmail.com', N' 0422 437 7647', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (43, N'1043', N'VIJAY ELANZA', N'VIJAY', N'VIJAY', N'Mr', N' Avinashi Road, Opposite To SMS Hotel & Behind BP Petrol Bunk,
 Peelamedu,
 Coimbatore, Tamil Nadu 641004
Phone: 0422 400 4000', N'COIMBATORE', N' 641004', N'vijayelanza@gmail.com', N' 0422 400 4000', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (44, N'1044', N'SRI NANDHANA RESIDENCY', N'NANDHANA', N'NANDHANA', N'Mr', N' 1/891, POLLACHI MAIN ROAD, EACHANARI,
 Coimbatore, Tamil Nadu 641021
Phone: 097903 34444', N'COIMBATORE', N' 641021', N'srinandhanaresidency@gmail.com', N' 097903 34444', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (45, N'1045', N'PREMIER RESIDENCY', N'PRINCE', N'PRINCE', N'Mr', N' 57, Gandhi Street, B.R.Puram, Behind Petrol Bunk, 
Hope College, Peelamedu, 
Coimbatore, Tamil Nadu 641004
Phone: 098426 50751', N'COIMBATORE', N' 641004', N'premierresidency@gmail.com', N'098426 50751', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (46, N'1046', N'AMBIKA LODGE', N'AMBIKA', N'AMBIKA', N'Mr', N' 369, Nehru St, Ram Nagar, Coimbatore, 
Tamil Nadu 641009
Phone: 0422 223 1043', N'COIMBATORE', N'641009', N'ambikalodge@gmail.com', N' 0422 223 1043', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (47, N'1047', N'FORTUNE SUITES', N'AAKASH', N'AAKASH', N'Mr', N' 134, East Periyasamy Road,, Periasamy Rd E, R.S. Puram, 
Coimbatore, Tamil Nadu 641002
Phone: 0422 435 5333', N'COIMBATORE', N' 641002', N'fortunesuites@gmail.com', N' 0422 435 5333', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (48, N'1048', N'GREEN HILLS', N'MARI', N'MARI', N'Mr', N' State Bank Road, Valparai, 
Tamil Nadu 642127
Phone: 094434 09589', N'COIMBATORE', N' 642127', N'greenhills@gmail.com', N' 094434 09589', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (49, N'1049', N'SAI KARTHIK', N'KARTHIK', N'KARTHIK', N'Mr', N'coimbatore', N'COIMBATORE', N'', N'sarkarthik@gmail.com', N'1234567810', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (50, N'1050', N'SARAVANA GRAND', N'SARAVANA', N'SARAVANA', N'Mr', N'9/73/6, State Bank Road, 
Valparai, Tamil Nadu 642127
Phone: 04253 222 467', N'COIMBATORE', N'642127', N'saravanagrand@gmail.com', N' 04253 222 467', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (51, N'1051', N'GLOBAL VILLAGE', N'MANIVANAN', N'MANIVANAN', N'Mr', N'COIMBATOE', N'COIMBATORE', N'', N'globalvillage@gmail.com', N'1234567810', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (52, N'1052', N'KANI RESIDENCY', N'KANI', N'KANI', N'Mr', N'COIMBATORE
', N'COIMBATORE', N'', N'kaniresidency@gmail.com', N'1234567810', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (53, N'1053', N'SEASON4 GUEST', N'RAM', N'RAM', N'Mr', N' 33/50, K.B.Dasan Road, Teynampet,
 Chennai, Tamil Nadu 600018
Phone: 044 2431 8083', N'COIMBATORE', N' 600018', N'season4@gmail.com', N'044 2431 8083', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (54, N'1054', N'SRI MURUGAN', N'MURUGAN', N'MURUGAN', N'Mr', N' 56, Davey & Co Lane, Opp. Railway Station,
 Coimbatore, Tamil Nadu 641018
Phone: 0422 436 2473', N'COIMBATORE', N'641018', N'srimurugan@gmail.com', N'0422 436 2473', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (55, N'1055', N'SLAVES RESTAURNT', N'KANAN', N'KANAN', N'Mr', N'12, Artin Enclave, Kamaraj Road, Mahalingapuram, 
near Mahalingapuram Arch, 
Pollachi, Tamil Nadu 642002', N'COIMBATORE', N'642002', N'slavesrestaurnt@gmail.com', N'094882 54204', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (56, N'1056', N'NIVATA RESORTS KODAIKANAL', N'NIVATA', N'NIVATA', N'Mr', N'COIMBATORE', N'COIMBATORE', N'', N'nivataresortskodaikanal@gmail.com', N'1234567810', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (57, N'1057', N'HOTEL SPR INN', N'SPR', N'SPR', N'Mr', N'42, Narayanaguru Mission Road, Saibaba Colony,Opp. Ganga Hospital, 
Coimbatore, Tamil Nadu 641011
Phone:0422 243 5678', N'COIMBATORE', N' 641011', N'hotelsprinn@gmail.com', N'0422 243 5678', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (58, N'1058', N'SHREE HOSPITALITY', N'VISHNU', N'VISHNU', N'Mr', N' 285, Kunnathur Rd, 
Perundurai, Tamil Nadu 638052
Phone: 04294 227 777', N'PERUNDURAI', N' 638052', N'shreehospitatily@gmail.com', N'04294 227 777', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (59, N'1059', N'ACACIA', N'ACACIA', N'ACACIA', N'Mr', N'DOOR NO: 2/177C, AVINASHI ROAD, Opp. KGM HOSPITAL,
 CHINNIYAM PALAYAM,,
 Coimbatore, Tamil Nadu 641062
Phone: 0422 262 6599', N'COIMBATORE', N'641062', N'acacia@gmail.com', N'0422 262 6599', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (60, N'1060', N'HAPPY NEST', N'RAJA', N'RAJA', N'Mr', N'38, Lake road, Ondikadai,
 Yercaud, Tamil Nadu 636602
Phone: 099436 55222', N'YERCAUD', N' 636602', N'happynest@gmail.com', N'099436 55222', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (61, N'1061', N'RAM INN', N'RAM', N'RAM', N'Mr', N' Ramaswamy Street, Perundurai Road,
 Near Federal Bank & KMCH, 
Erode, Tamil Nadu 638011
Phone: 088070 07011', N'ERODE', N'638011', N'raminn@gmail.com', N'088070 07011', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (62, N'1062', N'SRI BALAJI RESIDENCY', N' BALAJI ', N' BALAJI ', N'Mr', N' Veerappanchatram, 
Erode, Tamil Nadu 638001
Phone: 070920 12925', N'ERODE', N'638001', N'sribalajiresidency@gmail.com', N'070920 12925', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (63, N'1063', N'RANIS HOTEL', N'RANIS', N'RANIS', N'Mr', N' 72-74, State Bank Road, Opp. Railway Station,
 Coimbatore, Tamil Nadu 641018
Phone: 0422 437 3377', N'COIMBATORE', N'641018', N'ranishotel@gmail.com', N' 0422 437 3377', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (64, N'1064', N'SRI KRISHNA LODGE HOSUR', N'KRISHNA ', N'KRISHNA ', N'Mr', N'HOSUR', N'HOSUR', N'', N'srikrishnalodgehosur@gmail.com', N'1234567810', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (65, N'1065', N'STAYZONEBLORE', N'STAYZONE', N'STAYZONE', N'Mr', N' 2/1, 1st Main Rd, Jaladarsini Layout, 
Sanjaynagar Jaladarsini Layout, 
Sanjaynagar Bengaluru, Karnataka 560094
Phone:098809 88659', N'BANGLORE', N'560094', N'stayzoneblore@gmail.com', N'098809 88659', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (66, N'1066', N'MCIVER CONOOR', N'MANIKANDARAJA', N'MANIKANDARAJA', N'Mr', N'1-4, Orange Grove Road,  Coonoor,
 Tamil Nadu 643101
Phone: 0423 223 3323', N'OOTY', N'643101', N'mciverconoor@gmail.com', N'0423 223 3323', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (67, N'1067', N'G SQUARE', N'SAM', N'SAM', N'Mr', N'Door No- # 48-16-10/2 Opp to Dr.N.T.R University, 
Mahanadu Rd, Vijayawada,
 Andhra Pradesh 520008
Phone: 0866 254 4541
', N'VIJAYAWADA', N'520008', N'gsquare@gmail.com', N'0866 254 4541', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (68, N'1068', N'PARK INN', N'PERAKASH', N'PERAKASH', N'Mr', N'52-1/8-10F, Near NTR Health University,
NTR Colony Main Road, Vijayawada, 
Andhra Pradesh 520004
Phone: 082978 88555', N'VIJAYAWADA', N'520004', N'parkinn@gmail.com', N'082978 88555', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (69, N'1069', N'PRAKASH COMFORTS', N'PRAKASH', N'PRAKASH', N'Mr', N' 3615, 67/1, Sayyaji Rao Rd, Agrahara, 
Fort Mohalla, Mysuru, Karnataka 570021
Phone: 095354 99066', N'MYSORE', N'570021', N'prakashcomforts@gmail.com', N'095354 99066', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (70, N'1070', N'VDM LODGE', N'DURAI', N'DURAI', N'Mr', N' opp, New Bus Stand, Katpadi Road, NH234,
 Samuel Nagar, Thottapalayam,
 Vellore, Tamil Nadu 632004
Phone: 0416 222 5805', N'VALLORE', N'632004', N'vdmlodge@gmail.com', N'0416 222 5805', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (71, N'1071', N'DREAMS PARADISE', N'SAMAI', N'SAMAI', N'Mr', N' Nagalore Main Road, Opp. Petrol Bunk,
 Ondikkadai, Salem, Yercaud, 
Tamil Nadu 636602
Phone: 04281 222 053', N'YERCAUD', N'636602', N'dreamsparadise@gmail.com', N' 04281 222 053', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (72, N'1072', N'SRI GNANA VADA', N'GNANAN', N'GNANAN', N'Mr', N'VELANKANNI', N'VELANKANNI', N'', N'srignanavada@gmail.com', N'1234567810', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (73, N'1073', N'PARK PLAZA', N'KANAN', N'KANAN', N'Mr', N'90/62, Near Railway Station, 
Geetha Hall Road, Behind Cheran Towers,
 Coimbatore, Tamil Nadu 641018
Phone: 0422 436 4646', N'COIMBATORE', N' 641018', N'parkplaza@gmail.com', N'0422 436 4646', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (74, N'1074', N'BHIMA DELUXE', N'BHIMA ', N'BHIMA ', N'Mr', N'42 G Car Street, Tirupathi,
 Andhra Pradesh 517501
Phone: 0877 222 5745', N'TIRUPATI', N' 517501', N'bhimadeluxe@gmail.com', N' 0877 222 5745', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (75, N'1075', N'JOTHI LODGE', N'JOTHI', N'JOTHI', N'Mr', N'New No 26 No 8/80, Geetha Hall Road, 
Central, Coimbatore - 641018, 
Opp To Railway Station', N'COIMBATORE', N'641018', N'jothilodge@gmail.com', N'+(91)-422-2300077, 2307177', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (76, N'1076', N'CHENTHUR PARK', N'CHENTHUR', N'CHENTHUR', N'Mr', N'10/ 1-9 Avinashi Road, Near Coimbatore Airport, 
SITRA, Coimbatore, Tamil Nadu 641014
Phone: 098422 76111
', N'COIMBATORE', N'641014', N'chenthurpark@gmail.com', N'098422 76111', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (77, N'1077', N'HOTEL SARAVANA BHAVAN', N'SARAVANA', N'SARAVANA', N'Mr', N'Service Rd, Allinaickanpalayam,
 Padaiveedu, 
Tamil Nadu 637303', N'SANKARI', N'637303', N'hotelsaravanabhavan@gmail.com', N'098942 66555', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (78, N'1078', N'VAIDURIYA', N'VASANT', N'VASANT', N'Mr', N'73, Geetha Hall Road, Opposite Railway Station,
 Coimbatore, Tamil Nadu 641018
Phone: 0422 429 7777', N'COIMBATORE', N'641018', N'vaiduriya@gmail.com', N'0422 429 7777', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (79, N'1079', N'HEMA LADGE', N'HEMA', N'HEMA', N'Mr', N'Geetha Hall Rd, Gopalapuram, Coimbatore,
 Tamil Nadu 641318
Phone: 0422 230 0776', N'COIMBATORE', N' 641318', N'hemaladge@gmail.com', N' 0422 230 0776', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (80, N'1080', N'VASANTHAM', N'VASANTH', N'VASANTH', N'Mr', N'Shop No. 8/79, Geetha Hall Rd,
 Coimbatore, Tamil Nadu 641018
Phone: 0422 230 1831', N'COIMBATORE', N'641018', N'vasantham@gmail.com', N'0422 230 1831', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (81, N'1081', N'SUBBU LODGE', N'SUBBU', N'SUBBU', N'Mr', N'50/331-A, Coimbatore-Ooty-Gundlupet Hwy, 
Mettupalayam, Tamil Nadu 641305
+91-4254-223535 
', N'COIMBATORE', N'641305', N'subbulodge@gmail.com', N'+91-4254-223535 ', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (82, N'1082', N'CROWN PLAZA', N'KARTH', N'KARTH', N'Mr', N'Shop No.416, Crown Plaza, Palakkad Main Rd, 
Pulakadu, Kuniamuthur, Coimbatore,
 Tamil Nadu 641008
Phone: 0422 225 4405', N'COIMBATORE', N' 641008', N'crownplaza@gmail.com', N' 0422 225 4405', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (83, N'1083', N'VIJAY LODGE', N'VIJAY', N'VIJAY', N'Mr', N' 3, kalingarayar street, ramnagar,
 Coimbatore, Tamil Nadu 641009
Phone: 0422 223 0503', N'COIMBATORE', N'641009', N'vijaylodge@gmail.com', N'0422 223 0503', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (84, N'1084', N'SK RESIDENCY', N'SARAVANAN', N'SARAVANAN', N'Mr', N'52, Nehru Street, Senthil Kumaran Theatre Backside,
 Ramnagar, Coimbatore, Tamil Nadu 641009
Phone: 0422 422 3666', N'COIMBATORE', N' 641009', N'skresidency@gmail.com', N' 0422 422 3666', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (85, N'1085', N'RAYAPPAS CHETINAD', N'RAYAPPA', N'RAYAPPA', N'Mr', N'1/367, Bharathiar Road, Sidhapudur,
 Coimbatore, Tamil Nadu 641044', N'COIMBATORE', N'641044', N'rayappaschetinad@gmail.com', N' 098422 16000', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (86, N'1086', N'RAYAPPAS CHETINAD SINGAPORE PLAZA', N'RAYAPPA', N'RAYAPPA', N'Mr', N'Singapore Plaza, Nehru St, Peranaidu Layout, 
Ram Nagar, Coimbatore, 
Tamil Nadu 641009', N'COIMBATORE', N' 641009', N'rayappaschetinadsingaporeplaza@gmail.com', N' 0422 223 1819', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (87, N'1087', N'HOTEL NAVRATNA', N'NAVRATNA', N'NAVRATNA', N'Mr', N' 253, TV Swamy St, R.S. Puram,
 Coimbatore, Tamil Nadu 641002
Phone: 0422 254 0221', N'COIMBATORE', N' 641002', N'hotelnavratna@gmail.com', N'0422 254 0221', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (88, N'1088', N'NA LODGE', N'NASAR', N'NASAR', N'Mr', N'Avinashi Main Road Near Airport, 
Coimbatore, Tamil Nadu 640102
Phone: 098940 70922', N'COIMBATORE', N'640102', N'nalodge@gmail.com', N'098940 70922', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (89, N'1089', N'HOTEL SANDEEP', N'SANDEEP', N'SANDEEP', N'Mr', N'Sathy Rd, Sri Laxmi Nagar, Ganapathypudur,
 Coimbatore, Tamil Nadu 641006
Phone: 0422 437 6115', N'COIMBATORE', N'641006', N'hotelsandeep@gmail.com', N'0422 437 6115', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (90, N'1090', N'ANNAMALAI HOTELS', N'ANNAMALAI', N'ANNAMALAI', N'Mr', N'8/25,state bank road, near shanthi theatre, 
Coimbatore, Tamil Nadu 641018
Phone: 099430 11490', N'COIMBATORE', N' 641018', N'annamalaihotels@gmail.com', N' 099430 11490', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (91, N'1091', N'BALU LODGE', N'BALU', N'BALU', N'Mr', N' 5/25, Main Road, Mettupalayam Road, 
Koundampalayam, Coimbatore, 
Tamil Nadu 641030
Phone: 0422 244 4380', N'COIMBATORE', N' 641030', N'balulodge@gmail.com', N'0422 244 4380', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (92, N'1092', N'DEVAA HOTEL', N'DEVAA ', N'DEVAA ', N'Mr', N' No. 33, 3rd Street, Gopalapuram, near head post office, 
Railway station road, Coimbatore, 
Tamil Nadu 641018
Phone: 0422 230 0311', N'COIMBATORE', N' 641018', N'devaahotel@gmail.com', N'0422 230 0311', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (93, N'1093', N'SRI RAJA BRIYANI HOTEL', N'RAJA', N'RAJA', N'Mr', N' 242, Sastri Rd, Ram Nagar,
 Coimbatore, Tamil Nadu 641009
Phone: 0422 223 8842', N'COIMBATORE', N' 641009', N'srirajabriynihotel@gmail.com', N'0422 223 8842', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (94, N'1094', N'DAMU LODGE', N'DAMU', N'DAMU', N'Mr', N' Dhamu Towers, 285, Gandhi Road, 
Tiruppur, Tamil Nadu 641652
Phone: 098946 36369', N'TIRUPUR', N' 641652', N'damulodge@gmail.com', N' 098946 36369', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (95, N'1095', N'JP CASTLE', N'PRINCE', N'PRINCE', N'Mr', N'No 30 A, Siva Sakthi Nagar, College Road, 
Tirupur - 641602,
Old Poothar Theatre', N'TIRUPUR', N'641602', N'jpcastle@gmail.com', N'+(91)-421-2247922', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (96, N'1096', N'SIVARANJANI', N'SIVA', N'SIVA', N'Mr', N' 177, Brough Rd, Chidambaram Colony,
 Erode, Tamil Nadu 638001
Phone: 096590 40777', N'ERODE', N' 638001', N'sivaranjani@gmail.com', N'096590 40777', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (97, N'1097', N'DPLAZA', N'PANDI', N'PANDI', N'Mr', N'5/778, P.N.ROAD, PICHAMPALAYAMPUDUR,
 TIRUPUR TN 641603 IN', N'TIRUPUR', N'641603', N'dplaza@gmail.com', N'1234567810', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (98, N'1098', N'KAVERAI MAHAL', N'KAVERAI', N'KAVERAI', N'Mr', N' 15, Perumal Teppakulam,
 Madurai, Tamil Nadu 625001
Phone: 096777 25234', N'MADURI', N' 625001', N'kaveraimahal@gmail.com', N'096777 25234', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (99, N'1099', N'DEVIS GRAND', N'DAVI', N'DAVI', N'Mr', N' 237, Bussy St, MG Road Area, 
Puducherry, 605001
Phone: 0413 222 0222', N'PONDICHERRY', N'605001', N'devisgrand@gmail.com', N' 0413 222 0222', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (100, N'1100', N'HOTEL BALAJI INN', N'BALAJI ', N'BALAJI ', N'Mr', N'81,82 & 83, New Bus Stand Rd, Baskara Puram, 
Thanjavur, Tamil Nadu 613005
Phone: 04362 226 949', N'TANJAVUR', N' 613005', N'hotelbalajiinn@gmail.com', N' 04362 226 949', 1, N'', N'', N'YWRtaW4=')
GO
print 'Processed 100 total records'
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (101, N'1101', N'SAKTHI TOWERS', N'SAKTHI', N'SAKTHI', N'Mr', N'Dindigul - Palani Rd, Oddanchatram, 
Tamil Nadu 624619
Phone: 04553 240 999', N'OTTANCHATIRAM', N'624619', N'sakthitowers@gmail.com', N'04553 240 999', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (102, N'1102', N'ROYAL RESIDENCY', N'RAYAPPA', N'RAYAPPA', N'Mr', N' Paliyakottai Rd, Tamil Nadu 638701
Phone: 04257 222 344', N'KANGEYEM', N'638701', N'royalresidency@gmail.com', N'04257 222 344', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (103, N'1103', N'RAJARANI HOTEL', N'RAJA', N'RAJA', N'Mr', N' No: 1-A, Phase-II, TNHB, Krishnagiri Main Road,
 Tirupattur, Tamil Nadu 635601
Phone: 086820 00002', N'TIRUPATTUR', N' 635601', N'rajaranihotel@gmail.com', N' 086820 00002', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (104, N'1104', N'RANIS GRANDE', N'RANIS', N'RANIS', N'Mr', N' 72-74, State Bank Road, Opp. Railway Station,
 Coimbatore, Tamil Nadu 641018
Phone: 0422 437 3377', N'COIMBATORE', N' 641018', N'ranisgrande@gmail.com', N'0422 437 3377', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (105, N'1105', N'SIVAS RESIDENCY', N'SIVARAJ', N'SIVARAJ', N'Mr', N' Kavetti Naidu Layout 19a Siva Residency Peelamedu Road,
 Coimbatore 641028, 
India', N'COIMBATORE', N'641028', N'sivasresidency@gmail.com', N'1234567810', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (106, N'1106', N'AAKASH INN', N'AAKASH', N'AAKASH', N'Mr', N'No. 79/1 Chengam Road, Near Ramana Ashramam,
 National Highway 66, Tiruvannamalai, 
Tamil Nadu 606603
Phone: 04175 235 300', N'TIRUVANNAMALAI', N'606603', N'aakashinn@gmail.com', N' 04175 235 300', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (107, N'1107', N'RAMNATH HOTEL', N'RAMNATH ', N'RAMNATH ', N'Mr', N'
  
No-84-B, Vallam No 1 Road,Baskarapuram,
Near New Bus Stand,

Thanjavur,Tamilnadu- 613005.

India

Phone      04362-227181,04362-226181
                  04362-319996
Mobile      99412 70000
Email        hotelnewramnath@gmail.com
', N'TANJAVUR', N' 613005', N'hotelnewramnath@gmail.com', N' 04362-319996', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (108, N'1108', N'SAI BHAVAN', N' BHAVAN', N' BHAVAN', N'Mr', N'139/87B, Muthu Vinayagar Koil St, 
Near Railway Station, Tiruvannamalai, 
Tamil Nadu 606601
Phone: 096774 07770', N'TIRUVANNAMALAI', N'606601', N'saibhavan@gmail.com', N'096774 07770', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (109, N'1109', N'RR GRAND', N'RAVI', N'RAVI', N'Mr', N' 1 b, 67, Anaikatti Rd, PMR Nagar, 
TVS Nagar, Coimbatore, Tamil Nadu 641025
Phone: 098428 79759', N'COIMBATORE', N'641025', N'rrgrand@gmail.com', N' 098428 79759', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (110, N'1110', N'RIVA RESIDENCY', N'RAVI', N'RAVI', N'Mr', N' Coimbatore Road, Sultanpet, Palakkad,
 Kerala 678001
Phone: 090725 45654', N'COIMBATORE', N' 678001', N'rivaresidency@gmail.com', N'090725 45654', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (111, N'1111', N'CHETTINADU COUNTRY YARD', N'ANISTION', N'ANISTION', N'Mr', N'16-21, Alagesan Main Rd, Ramalingam Colony,
 Saibaba Colony, Coimbatore, 
Tamil Nadu 641011
Phone: 0422 437 3330', N'COIMBATORE', N' 641011', N'chettinaducountryyard@gmail.com', N'0422 437 3330', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (112, N'1112', N'RAGU LODGE', N'RAGU', N'RAGU', N'Mr', N' 18, Parris Nagar, Airport, SITRA,,
 Coimbatore, Tamil Nadu 641014
Phone: 098422 71313', N'COIMBATORE', N' 641014', N'ragulodge@gmail.com', N'098422 71313', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (113, N'1113', N'SK RESIDENCY NEW', N'SANGKAR', N'SANGKAR', N'Mr', N' 52, Nehru Street, Senthil Kumaran Theatre Backside,
 Ramnagar, Coimbatore, Tamil Nadu 641009
Phone: 0422 422 3666', N'COIMBATORE', N' 641009', N'skresidencynew@gmail.com', N'0422 422 3666', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (114, N'1114', N'ASK RESIDENCY', N'AKASH', N'AKASH', N'Mr', N'32/33, Trichy Main Road, Near New Bus Stand, 
Baskarapuram, Thanjavur, Tamil Nadu 613005
Phone: 04362 228 786', N'TANJAVUR', N' 613005', N'askresidency@gmail.com', N' 04362 228 786', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (115, N'1115', N'LOTUS RESIDENCY', N'RAMAN', N'RAMAN', N'Mr', N' 15, Venkatraman Street,
T.Nagar, Chennai - 600017.

Phone: +91 44 2815 7272
', N'CHENNAI', N'600017', N'rsv@thelotus.in ', N'+91 44 2815 7272', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (116, N'1116', N'PAPPER FRY', N'BALAN', N'BALAN', N'Mr', N'NAGERCOIL', N'NAGERCOIL', N'', N'papperfry@gmail.com', N'1234567810', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (117, N'1117', N'RAYAPPAS CLUB', N'RAMASH', N'RAMASH', N'Mr', N'1/367, Bharathiar Road, Sidhapudur,
Coimbatore - 641 044. Tamil Nadu, India.
Phone: (0422) 4388444, 2522251, 252220
Mobile: +91 98422 16000
', N'COIMBATORE', N' 641 044', N'info@rayappasrestaurant.com', N'91 98422 16000', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (118, N'1118', N'RS PURAM CLUB', N'SANTHIL', N'SANTHIL', N'Mr', N'1, Subramaniam Road, RS Puram,
 Coimbatore, Tamil Nadu 641002', N'COIMBATORE', N' 641002', N'rspuramclub@gmail.com', N'0422 254 7021', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (119, N'1119', N'BARATHI HOTELS', N'BARATHI', N'BARATHI', N'Mr', N' 8/59, Madurai-Rameshwaram Rd, Bharathi Nagar, 
Maruthu Pandi Nagar Bharathi Nagar, 
Maruthu Pandi Nagar Paramakudi, Tamil Nadu 623707
Phone: 091500 75518', N'PARAMAKUDI', N'623707', N'barathihotels@gmail.com', N'091500 75518', 1, N'', N'', N'YWRtaW4=')
INSERT [dbo].[Mas_Hotel] ([Hotel_Id], [HCode], [Company], [FirstName], [LastName], [Titel], [Address], [City], [PinCode], [Email], [MobileNo], [Act], [Description], [Phone], [Pass]) VALUES (120, N'1120', N'LIV INN', N'PANIER', N'PANIER', N'Mr', N' No. 125, VOC Park, Approach Road,, Near Hotel Oxford, Erode,
 Tamil Nadu 638003
Phone: 0424 222 4295', N'ERODE', N' 638003', N'livinn@gmail.com', N'0424 222 4295', 1, N'', N'', N'YWRtaW4=')
SET IDENTITY_INSERT [dbo].[Mas_Hotel] OFF
/****** Object:  Table [dbo].[Mas_GuestType]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_GuestType](
	[GuestType_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GuestType] [varchar](150) NULL,
	[Active] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
 CONSTRAINT [PK_Mas_GuestType] PRIMARY KEY CLUSTERED 
(
	[GuestType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_GuestType] ON
INSERT [dbo].[Mas_GuestType] ([GuestType_Id], [GuestType], [Active], [Addate], [Edate], [Uid], [Hotel_Id]) VALUES (1, N'CVGR', 1, CAST(0x0000AA5F00CFDBE2 AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_GuestType] OFF
/****** Object:  Table [dbo].[Mas_GuestStatus]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_GuestStatus](
	[GuestStatus_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GuestStatus] [varchar](150) NULL,
	[Active] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
 CONSTRAINT [PK_Mas_GuestStatus] PRIMARY KEY CLUSTERED 
(
	[GuestStatus_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_GuestStatus] ON
INSERT [dbo].[Mas_GuestStatus] ([GuestStatus_Id], [GuestStatus], [Active], [Addate], [Edate], [Uid], [Hotel_Id]) VALUES (1, N'House Guest', 1, CAST(0x0000AA5F00D0023B AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_GuestStatus] OFF
/****** Object:  Table [dbo].[Mas_GstType]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_GstType](
	[GstType_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GstType] [varchar](150) NULL,
	[Active] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
 CONSTRAINT [PK_Mas_GstType_Id] PRIMARY KEY CLUSTERED 
(
	[GstType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mas_GoogleMap]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_GoogleMap](
	[GoogleMap_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Map] [varchar](7800) NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_GoogleMap] ON
INSERT [dbo].[Mas_GoogleMap] ([GoogleMap_Id], [Map], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id]) VALUES (1, N'PGlmcmFtZSB3aWR0aD0iNDI1IiBoZWlnaHQ9IjM1MCIgZnJhbWVib3JkZXI9IjAiIHNjcm9sbGluZz0ibm8iIG1hcmdpbmhlaWdodD0iMCIgbWFyZ2lud2lkdGg9IjAiIHNyYz0iaHR0cHM6Ly9tYXBzLmdvb2dsZS5jb20vbWFwcz90PW0mYW1wO2hsPWVuLVVTJmFtcDtnbD1JTiZhbXA7bWFwY2xpZW50PWVtYmVkJmFtcDtjaWQ9MTAzMzQ3ODYzMjk5NzI4MjU0OTYmYW1wO2llPVVURjgmYW1wO2hxPSZhbXA7aG5lYXI9JmFtcDtsbD0xMS4wNDU0OTUsNzcuMDM5NDI5JmFtcDtzcG49MCwwJmFtcDtpd2xvYz1BJmFtcDtvdXRwdXQ9ZW1iZWQiPjwvaWZyYW1lPjxiciAvPjxzbWFsbD48YSBocmVmPSJodHRwczovL21hcHMuZ29vZ2xlLmNvbS9tYXBzP3Q9bSZhbXA7aGw9ZW4tVVMmYW1wO2dsPUlOJmFtcDttYXBjbGllbnQ9ZW1iZWQmYW1wO2NpZD0xMDMzNDc4NjMyOTk3MjgyNTQ5NiZhbXA7aWU9VVRGOCZhbXA7aHE9JmFtcDtobmVhcj0mYW1wO2xsPTExLjA0NTQ5NSw3Ny4wMzk0MjkmYW1wO3Nwbj0wLDAmYW1wO2l3bG9jPUEmYW1wO3NvdXJjZT1lbWJlZCIgc3R5bGU9ImNvbG9yOiMwMDAwRkY7dGV4dC1hbGlnbjpsZWZ0Ij5WaWV3IExhcmdlciBNYXA8L2E+PC9zbWFsbD4', CAST(0x0000A46800C84FB4 AS DateTime), 1, CAST(0x0000A490016A51CA AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Mas_GoogleMap] OFF
/****** Object:  Table [dbo].[Mas_Google]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Google](
	[Google_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Google] [varchar](100) NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Google] ON
INSERT [dbo].[Mas_Google] ([Google_Id], [Google], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id]) VALUES (1, N'gg', NULL, NULL, CAST(0x0000A490015B5429 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Mas_Google] OFF
/****** Object:  Table [dbo].[Mas_FoodPlan]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_FoodPlan](
	[FoodPlan_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FoodPlan] [varchar](100) NULL,
	[ShortName] [varchar](100) NULL,
	[Active] [bigint] NULL,
	[ADDDATE] [datetime] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_FoodPlan] ON
INSERT [dbo].[Mas_FoodPlan] ([FoodPlan_Id], [FoodPlan], [ShortName], [Active], [ADDDATE], [EDDATE], [Hotel_Id]) VALUES (1, N'CP', N'CP', 0, CAST(0x0000AA5F00D461BB AS DateTime), NULL, 1)
INSERT [dbo].[Mas_FoodPlan] ([FoodPlan_Id], [FoodPlan], [ShortName], [Active], [ADDDATE], [EDDATE], [Hotel_Id]) VALUES (2, N'AP', N'AP', 0, CAST(0x0000AA5F00D46A38 AS DateTime), NULL, 1)
INSERT [dbo].[Mas_FoodPlan] ([FoodPlan_Id], [FoodPlan], [ShortName], [Active], [ADDDATE], [EDDATE], [Hotel_Id]) VALUES (3, N'MAP', N'MAP', 0, CAST(0x0000AA5F00D47213 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Mas_FoodPlan] OFF
/****** Object:  Table [dbo].[Mas_Floor]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Floor](
	[Floor_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Floor] [varchar](100) NULL,
	[ADDDATE] [datetime] NULL,
	[EDDATE] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Floor] ON
INSERT [dbo].[Mas_Floor] ([Floor_Id], [Floor], [ADDDATE], [EDDATE], [Uid], [Hotel_Id]) VALUES (1, N'1st Floor', CAST(0x0000AA5F00CE9D13 AS DateTime), NULL, 1, 1)
INSERT [dbo].[Mas_Floor] ([Floor_Id], [Floor], [ADDDATE], [EDDATE], [Uid], [Hotel_Id]) VALUES (2, N'2nd Floor', CAST(0x0000AA5F00CEA4A3 AS DateTime), NULL, 1, 1)
INSERT [dbo].[Mas_Floor] ([Floor_Id], [Floor], [ADDDATE], [EDDATE], [Uid], [Hotel_Id]) VALUES (3, N'3rd Floor', CAST(0x0000AA5F00CEAF36 AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_Floor] OFF
/****** Object:  Table [dbo].[Mas_Facebook]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Facebook](
	[Facebook_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Facebook] [varchar](100) NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Facebook] ON
INSERT [dbo].[Mas_Facebook] ([Facebook_Id], [Facebook], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id]) VALUES (1, N'MTIz', NULL, NULL, CAST(0x0000A490016F419E AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Mas_Facebook] OFF
/****** Object:  Table [dbo].[Mas_Customer]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Customer](
	[Customer_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [varchar](80) NULL,
	[Firstname] [varchar](80) NULL,
	[Lastname] [varchar](80) NULL,
	[Mobile] [varchar](20) NULL,
	[Email_ID] [varchar](20) NULL,
	[HomeAddress1] [varchar](1000) NULL,
	[HomeAddress2] [varchar](1000) NULL,
	[Homepincode] [varchar](1000) NULL,
	[HomeCityid] [bigint] NULL,
	[Homezipcode] [varchar](120) NULL,
	[Homecountry] [varchar](120) NULL,
	[Nationality] [varchar](120) NULL,
	[Company_Id] [bigint] NULL,
	[ResidentialPhone] [varchar](25) NULL,
	[WorkAddress1] [varchar](1000) NULL,
	[WorkAddress2] [varchar](1000) NULL,
	[Workpincode] [varchar](1000) NULL,
	[WorkCityid] [varchar](20) NULL,
	[Workzipcode] [varchar](20) NULL,
	[Workcountry] [varchar](100) NULL,
	[WorPhone] [varchar](100) NULL,
	[GuestType_Id] [bigint] NULL,
	[MarketSegment_Id] [bigint] NULL,
	[BusinessSource_Id] [bigint] NULL,
	[BillingInstruction_Id] [bigint] NULL,
	[GuestStatus_Id] [bigint] NULL,
	[Facebook_ID] [varchar](100) NULL,
	[Twitter_ID] [varchar](100) NULL,
	[Language_ID] [bigint] NULL,
	[Birthcity_ID] [bigint] NULL,
	[Birthdate] [datetime] NULL,
	[Weddingdate] [datetime] NULL,
	[Spousename] [varchar](100) NULL,
	[SpouseDOB] [varchar](100) NULL,
	[Spouse_Passportno] [varchar](100) NULL,
	[Preffered_Currency_ID] [bigint] NULL,
	[GSTNo] [varchar](100) NULL,
	[Likes] [varchar](1000) NULL,
	[Dislikes] [varchar](1000) NULL,
	[passportno] [varchar](50) NULL,
	[Photopath] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Customer] ON
INSERT [dbo].[Mas_Customer] ([Customer_Id], [CustomerCode], [Firstname], [Lastname], [Mobile], [Email_ID], [HomeAddress1], [HomeAddress2], [Homepincode], [HomeCityid], [Homezipcode], [Homecountry], [Nationality], [Company_Id], [ResidentialPhone], [WorkAddress1], [WorkAddress2], [Workpincode], [WorkCityid], [Workzipcode], [Workcountry], [WorPhone], [GuestType_Id], [MarketSegment_Id], [BusinessSource_Id], [BillingInstruction_Id], [GuestStatus_Id], [Facebook_ID], [Twitter_ID], [Language_ID], [Birthcity_ID], [Birthdate], [Weddingdate], [Spousename], [SpouseDOB], [Spouse_Passportno], [Preffered_Currency_ID], [GSTNo], [Likes], [Dislikes], [passportno], [Photopath]) VALUES (5, N'001', N'Lakshmikandan', N'S', N'8883390777', N'lak@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mas_Customer] ([Customer_Id], [CustomerCode], [Firstname], [Lastname], [Mobile], [Email_ID], [HomeAddress1], [HomeAddress2], [Homepincode], [HomeCityid], [Homezipcode], [Homecountry], [Nationality], [Company_Id], [ResidentialPhone], [WorkAddress1], [WorkAddress2], [Workpincode], [WorkCityid], [Workzipcode], [Workcountry], [WorPhone], [GuestType_Id], [MarketSegment_Id], [BusinessSource_Id], [BillingInstruction_Id], [GuestStatus_Id], [Facebook_ID], [Twitter_ID], [Language_ID], [Birthcity_ID], [Birthdate], [Weddingdate], [Spousename], [SpouseDOB], [Spouse_Passportno], [Preffered_Currency_ID], [GSTNo], [Likes], [Dislikes], [passportno], [Photopath]) VALUES (6, N'002', N'Kumar', N'S', N'8883390777', N'lak@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Mas_Customer] ([Customer_Id], [CustomerCode], [Firstname], [Lastname], [Mobile], [Email_ID], [HomeAddress1], [HomeAddress2], [Homepincode], [HomeCityid], [Homezipcode], [Homecountry], [Nationality], [Company_Id], [ResidentialPhone], [WorkAddress1], [WorkAddress2], [Workpincode], [WorkCityid], [Workzipcode], [Workcountry], [WorPhone], [GuestType_Id], [MarketSegment_Id], [BusinessSource_Id], [BillingInstruction_Id], [GuestStatus_Id], [Facebook_ID], [Twitter_ID], [Language_ID], [Birthcity_ID], [Birthdate], [Weddingdate], [Spousename], [SpouseDOB], [Spouse_Passportno], [Preffered_Currency_ID], [GSTNo], [Likes], [Dislikes], [passportno], [Photopath]) VALUES (7, N'003', N'ArunKumar', N'S', N'7866376567', N'arun@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mas_Customer] OFF
/****** Object:  Table [dbo].[Mas_Country]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Country](
	[Country_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](50) NULL,
	[Vid] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
 CONSTRAINT [PK_Mas_Country] PRIMARY KEY CLUSTERED 
(
	[Country_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [Country Name] UNIQUE NONCLUSTERED 
(
	[Country] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Country] ON
INSERT [dbo].[Mas_Country] ([Country_Id], [Country], [Vid], [Addate], [Edate], [Uid]) VALUES (1, N'India', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mas_Country] ([Country_Id], [Country], [Vid], [Addate], [Edate], [Uid]) VALUES (6, N'Usa', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mas_Country] ([Country_Id], [Country], [Vid], [Addate], [Edate], [Uid]) VALUES (9, N'Uk', NULL, NULL, NULL, NULL)
INSERT [dbo].[Mas_Country] ([Country_Id], [Country], [Vid], [Addate], [Edate], [Uid]) VALUES (14, N'Sri Lanka', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mas_Country] OFF
/****** Object:  Table [dbo].[Mas_CompanyType]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_CompanyType](
	[CompanyType_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyType] [varchar](150) NULL,
	[Active] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
 CONSTRAINT [PK_Mas_CompanyType] PRIMARY KEY CLUSTERED 
(
	[CompanyType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mas_CompanyGroup]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_CompanyGroup](
	[CompanyGroup_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyGroup] [varchar](150) NULL,
	[Active] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
 CONSTRAINT [PK_Mas_CompanyGroup] PRIMARY KEY CLUSTERED 
(
	[CompanyGroup_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mas_Company]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Company](
	[Company_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Company_code] [varchar](150) NULL,
	[Company] [varchar](150) NULL,
	[Company_Shortname] [varchar](150) NULL,
	[Company_Billingname] [varchar](150) NULL,
	[Address1] [varchar](150) NULL,
	[Address2] [varchar](150) NULL,
	[Address3] [varchar](150) NULL,
	[City] [varchar](150) NULL,
	[State] [varchar](150) NULL,
	[Country] [varchar](150) NULL,
	[Zipcode] [varchar](150) NULL,
	[Phoneno] [varchar](150) NULL,
	[Fax] [varchar](150) NULL,
	[E_mail] [varchar](150) NULL,
	[Contactno] [varchar](150) NULL,
	[Cotactperson] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[CompanyType_Id] [int] NULL,
	[Contactmobileno] [int] NULL,
	[CompanyGroup_Id] [varchar](15) NULL,
	[Discount] [decimal](18, 2) NULL,
	[MarketSegment_Id] [int] NULL,
	[BusinessSource_Id] [int] NULL,
	[GuestType_Id] [int] NULL,
	[PayMode_Id] [int] NULL,
	[ReservationMode_Id] [int] NULL,
	[Gstno] [varchar](20) NULL,
	[Creditdays] [int] NULL,
	[CreditLimit] [decimal](18, 2) NULL,
	[GstType_Id] [int] NULL,
	[Approved_Dt] [datetime] NULL,
	[Approveduser_ID] [int] NULL,
	[Remarks] [text] NULL,
	[Createdatetime] [datetime] NULL,
	[Createuser_ID] [int] NULL,
	[Inactive] [int] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mas_Color]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Color](
	[Color_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](50) NULL,
	[DColor] [varchar](50) NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Color] ON
INSERT [dbo].[Mas_Color] ([Color_Id], [Color], [DColor], [Addate], [Edate], [Uid]) VALUES (1, N'FF00cc', N'0000', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mas_Color] OFF
/****** Object:  Table [dbo].[Mas_Cancellationpolicy]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Cancellationpolicy](
	[Cancellationpolicy_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Cancellationpolicy] [varchar](100) NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Cancellationpolicy] ON
INSERT [dbo].[Mas_Cancellationpolicy] ([Cancellationpolicy_Id], [Cancellationpolicy], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id]) VALUES (1, N'  Before 24 hours -  50% Retention
  After 24 hours    - 100% Retention ', NULL, NULL, CAST(0x0000A554017DF5BC AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Mas_Cancellationpolicy] OFF
/****** Object:  Table [dbo].[Mas_BusinessSource]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_BusinessSource](
	[BusinessSource_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BusinessSource] [varchar](150) NULL,
	[Active] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
 CONSTRAINT [PK_Mas_BusinessSource] PRIMARY KEY CLUSTERED 
(
	[BusinessSource_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_BusinessSource] ON
INSERT [dbo].[Mas_BusinessSource] ([BusinessSource_Id], [BusinessSource], [Active], [Addate], [Edate], [Uid], [Hotel_Id]) VALUES (1, N'Corporate', 1, CAST(0x0000AA5F00CFCFA5 AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_BusinessSource] OFF
/****** Object:  Table [dbo].[Mas_Block]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_Block](
	[Block_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Block] [varchar](100) NULL,
	[ADDDATE] [datetime] NULL,
	[EDDATE] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_Block] ON
INSERT [dbo].[Mas_Block] ([Block_Id], [Block], [ADDDATE], [EDDATE], [Uid], [Hotel_Id]) VALUES (1, N'Main Block', CAST(0x0000AA5F00CEB7A1 AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_Block] OFF
/****** Object:  Table [dbo].[Mas_BillingInstruction]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_BillingInstruction](
	[BillingInstruction_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BillingInstruction] [varchar](150) NULL,
	[Active] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
 CONSTRAINT [PK_Mas_BillingInstruction] PRIMARY KEY CLUSTERED 
(
	[BillingInstruction_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_BillingInstruction] ON
INSERT [dbo].[Mas_BillingInstruction] ([BillingInstruction_Id], [BillingInstruction], [Active], [Addate], [Edate], [Uid], [Hotel_Id]) VALUES (1, N'Direct', 1, CAST(0x0000AA5F00CFEEE9 AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_BillingInstruction] OFF
/****** Object:  Table [dbo].[Mas_BillGroup]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_BillGroup](
	[BillGroup_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BillGroup] [varchar](150) NULL,
	[Active] [bigint] NULL,
	[Addate] [datetime] NULL,
	[Edate] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
 CONSTRAINT [PK_Mas_BillGroup_Id] PRIMARY KEY CLUSTERED 
(
	[BillGroup_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_BillGroup] ON
INSERT [dbo].[Mas_BillGroup] ([BillGroup_Id], [BillGroup], [Active], [Addate], [Edate], [Uid], [Hotel_Id]) VALUES (1, N'Tariff', 1, CAST(0x0000AA5F00D05DFA AS DateTime), NULL, 1, 1)
INSERT [dbo].[Mas_BillGroup] ([BillGroup_Id], [BillGroup], [Active], [Addate], [Edate], [Uid], [Hotel_Id]) VALUES (2, N'GST', 0, CAST(0x0000AA5F013E2AFC AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_BillGroup] OFF
/****** Object:  Table [dbo].[Mas_BedType]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mas_BedType](
	[BedType_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BedType] [varchar](100) NULL,
	[ADDDATE] [datetime] NULL,
	[EDDATE] [datetime] NULL,
	[Uid] [bigint] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Mas_BedType] ON
INSERT [dbo].[Mas_BedType] ([BedType_Id], [BedType], [ADDDATE], [EDDATE], [Uid], [Hotel_Id]) VALUES (1, N'Single', CAST(0x0000AA5F00CEBFE1 AS DateTime), NULL, 1, 1)
INSERT [dbo].[Mas_BedType] ([BedType_Id], [BedType], [ADDDATE], [EDDATE], [Uid], [Hotel_Id]) VALUES (2, N'Double', CAST(0x0000AA5F00CEC691 AS DateTime), NULL, 1, 1)
INSERT [dbo].[Mas_BedType] ([BedType_Id], [BedType], [ADDDATE], [EDDATE], [Uid], [Hotel_Id]) VALUES (3, N'Twin Bed', CAST(0x0000AA5F00CECDB4 AS DateTime), NULL, 1, 1)
INSERT [dbo].[Mas_BedType] ([BedType_Id], [BedType], [ADDDATE], [EDDATE], [Uid], [Hotel_Id]) VALUES (4, N'Triple Bed ', CAST(0x0000AA5F00CED658 AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Mas_BedType] OFF
/****** Object:  UserDefinedFunction [dbo].[NumToWords]    Script Date: 10/01/2019 11:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  FUNCTION [dbo].[NumToWords](@Number Numeric(18,2),@CPaise Char(1))
RETURNS varchar(200) 
AS  
BEGIN		
	Declare @StrNumber varchar(10), @SLacs char(2), @SThou char(2), @SHun char(2)	
	Declare @STenUnt char(2), @STen char(2), @SUnt char(2), @SDecimal char(2)	
	Declare @ILacs Int, @IThou Int, @IHun Int, @ITenUnt Int, @ITen Int, @IUnt Int, @IDecimal Int	
	Declare @SNumToWords varchar(100), @Wwords varchar(10)	
	Select @StrNumber = Replicate('0',10-Len(LTrim(RTrim(convert(varchar,@Number))))) + LTrim(RTrim(Convert(varchar,@Number)))
	--Print @StrNumber	
	--Print Len(@StrNumber)	
	Select @SNumToWords = ''	
	--Print Len(LTrim(RTrim(convert(varchar,@Number))))	
	If Len(LTrim(RTrim(convert(varchar,@Number)))) > 4	
	Begin		
		--Print Len(@StrNumber)		
		Select @SLacs = Substring(@StrNumber,1,2)		
		--Print @SLacs		
		Select @ILacs = Convert(int,@SLacs)		
		If @ILacs > 0		
		Begin			
			Select @STen = Substring(@StrNumber,1,1)			
			Select @SUnt = Substring(@StrNumber,2,1)			
			if Convert(int,@STen) = 1 			
			Begin				
				Select @ITen = Convert(int,Substring(@StrNumber,1,2))				
				Select @IUnt = 0			
			End			
			Else			
			Begin				
				Select @ITen = Convert(int,@STen)*10				
				Select @IUnt = Convert(int,@SUnt)			
			End			
			If @ITen > 0 			
			Begin							
				Select @Wwords = ''				
				Select @Wwords = Wwords From M_Words Where WNumber = @ITen				
				--Print @Wwords				
				Select @SNumToWords = @SNumToWords + Space(1) + @Wwords --' Tens'			
			End			
			If @IUnt > 0 			
			Begin							
				Select @Wwords = ''				
				Select @Wwords = Wwords From M_Words Where WNumber = @IUnt				
				--Print @Wwords				
				Select @SNumToWords = @SNumToWords + Space(1) + @Wwords --' Unit'			
			End			
			--Select @Wwords = ''			
			--Select @Wwords = Wwords From M_Words Where WNumber = @ILacs			
			--Print @Wwords			
			Select @SNumToWords = @SNumToWords + ' Lacs'		
		End		
		Select @SThou = Substring(@StrNumber,3,2)		
		--Print @SThou		
		Select @IThou = Convert(int,@SThou)		
		If @IThou > 0		
		Begin			
			Select @STen = Substring(@StrNumber,3,1)			
			Select @SUnt = Substring(@StrNumber,4,1)			
			if Convert(int,@STen) = 1 			
			Begin				
				Select @ITen = Convert(int,Substring(@StrNumber,3,2))				
				Select @IUnt = 0			
			End			
			Else			
			Begin				
				Select @ITen = Convert(int,@STen)*10				
				Select @IUnt = Convert(int,@SUnt)			
			End						
			If @ITen > 0 			
			Begin							
				Select @Wwords = ''				
				Select @Wwords = Wwords From M_Words Where WNumber = @ITen				
				--Print @Wwords				
				Select @SNumToWords = @SNumToWords + Space(1) + @Wwords --' Tens'			
			End			
			If @IUnt > 0 			
			Begin							
				Select @Wwords = ''				
				Select @Wwords = Wwords From M_Words Where WNumber = @IUnt				
				--Print @Wwords				
				Select @SNumToWords = @SNumToWords + Space(1) + @Wwords --' Unit'			
			End			
			--Select @Wwords = ''			
			--Select @Wwords = Wwords From M_Words Where WNumber = @IThou			
			--Print @Wwords			
			--Select @SNumToWords = @SNumToWords + @Wwords + ' Thousand '			
			Select @SNumToWords = @SNumToWords + ' Thousand '		
		End		
		Select @SHun = Substring(@StrNumber,5,1)		
		--Print @SHun		
		Select @IHun = Convert(int,@SHun)		
		If @IHun > 0		
		Begin			
			Select @Wwords = ''			
			Select @Wwords = Wwords From M_Words Where WNumber = @IHun			
			--Print @Wwords			
			Select @SNumToWords = @SNumToWords + @Wwords + ' Hundred'		
		End		
		Select @STenUnt = Substring(@StrNumber,6,2)		
		---Print @STenUnt		
		Select @ITenUnt = Convert(int,@STenUnt)		
		If @ITenUnt > 0		
		Begin			
			Select @STen = Substring(@StrNumber,6,1)			
			Select @SUnt = Substring(@StrNumber,7,1)			
			if Convert(int,@STen) = 1 			
			Begin				
				Select @ITen = Convert(int,Substring(@StrNumber,6,2))				
				Select @IUnt = 0			
			End			
			Else			
			Begin				
				Select @ITen = Convert(int,@STen)*10				
				Select @IUnt = Convert(int,@SUnt)			
			End						
			If @ITen > 0 			
			Begin							
				Select @Wwords = ''				
				Select @Wwords = Wwords From M_Words Where WNumber = @ITen				
				--Print @Wwords				
				Select @SNumToWords = @SNumToWords + Space(1) + @Wwords --' Tens'			
			End			
			If @IUnt > 0 			
			Begin							
				Select @Wwords = ''				
				Select @Wwords = Wwords From M_Words Where WNumber = @IUnt				
				--Print @Wwords				
				Select @SNumToWords = @SNumToWords + Space(1) + @Wwords --' Unit'			
			End		
		End		
		Select @SNumToWords = @SNumToWords + Space(1) + 'Rupees'		--Only/-	
	End	
	Else	
	Begin		
		--Print Len(@StrNumber)		
		--Print LTrim(RTrim(convert(varchar,@Number)))		
		Select @SLacs = Substring(LTrim(RTrim(convert(varchar,@Number))),1,1)		
		--Print @SLacs		
		Select @ILacs = Convert(int,@SLacs)		
		If @ILacs > 0 and @ILacs <> 1		
		Begin			
			Select @Wwords = ''			
			Select @Wwords = Wwords From M_Words Where WNumber = @ILacs			
			--Print @Wwords			
			Select @SNumToWords = @SNumToWords + Space(1) + @Wwords + Space(1) + 'Rupees'		
		End		
		Else		
		Begin			
			Select @Wwords = ''			
			Select @Wwords = Wwords From M_Words Where WNumber = @ILacs			
			--Print @Wwords			
			Select @SNumToWords = @SNumToWords + @Wwords + Space(1) + 'Rupee'		
		End	
	End	
	If @CPaise = 'Y'	
	Begin		
		Select @SDecimal = Substring(@StrNumber,9,2)		
		Select @IDecimal = Convert(int,@SDecimal)		
		If @IDecimal > 0		
		Begin			
			Select @SNumToWords = @SNumToWords + ' and'			
			Select @STen = Substring(@SDecimal,1,1)			
			Select @SUnt = Substring(@SDecimal,2,1)				

			if Convert(int,@STen) = 1 			
			Begin				
				Select @ITen = Convert(int,Substring(@StrNumber,9,2))				
				Select @IUnt = 0			
			End			
			Else			
			Begin				
				Select @ITen = Convert(int,@STen)*10				
				Select @IUnt = Convert(int,@SUnt)			
			End						
		If @ITen > 0 			
		Begin							
			Select @Wwords = ''				
			Select @Wwords = Wwords From M_Words Where WNumber = @ITen				
			--Print @Wwords				
			Select @SNumToWords = @SNumToWords + Space(1) + @Wwords --' Tens'			
		End				
		If @IUnt > 0 			
		Begin							
			Select @Wwords = ''				
			Select @Wwords = Wwords From M_Words Where WNumber = @IUnt				
			--Print @Wwords				
			Select @SNumToWords = @SNumToWords + Space(1) + @Wwords --' Unit'			
		End				
		Select @SNumToWords = @SNumToWords + Space(1) + 'Paise'				
	End	
End	
--Print LTrim(RTrim(@SNumToWords))	
Return LTrim(RTrim(@SNumToWords))
End
GO
/****** Object:  StoredProcedure [dbo].[Exec_GstType_Id]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_GstType_Id] 
@GstType_Id VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
@IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_GstType_Id (GstType_Id,Active,Uid,Hotel_Id,Addate)
	  VALUES (@GstType_Id,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_GstType_Id
SET 
	GstType_Id = @GstType_Id,
	Active = @active,
    Edate = getdate(),
	Uid = @uid  WHERE GstType_Id_Id = @IDD
   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Get_GstType_Id]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_GstType_Id] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_GstType_Id WHERE 
 GstType_Id_Id =(CASE WHEN @ID=0 THEN GstType_Id_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  UserDefinedFunction [dbo].[GetNum]    Script Date: 10/01/2019 11:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetNum]
(@strAlphaNumeric VARCHAR(256))
RETURNS BIGINT
AS
BEGIN
DECLARE @intAlpha INT
SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric)
BEGIN
WHILE @intAlpha > 0
BEGIN
SET @strAlphaNumeric = STUFF(@strAlphaNumeric, @intAlpha, 1, '' )
SET @intAlpha = PATINDEX('%[^0-9]%', @strAlphaNumeric )
END
END
RETURN ISNULL(@strAlphaNumeric,0)
END
GO
/****** Object:  StoredProcedure [dbo].[GETDATE]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GETDATE] @DT BIGINT,@DATE DATETIME AS 

SELECT convert(VARCHAR,dateadd(day,@DT,@DATE),101) AS DAT,
convert(VARCHAR,dateadd(day,@DT,@DATE),103) AS DATT
GO
/****** Object:  Table [dbo].[Trans_Room_Chart]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trans_Room_Chart](
	[Room_Chart_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Hotel_Id] [bigint] NULL,
	[Room_Id] [bigint] NULL,
	[Dat] [datetime] NULL,
 CONSTRAINT [PK_Trans_Room_Charte] PRIMARY KEY CLUSTERED 
(
	[Room_Chart_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Trans_Room_Chart] ON
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1, 1, 1, CAST(0x0000AA5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2, 1, 1, CAST(0x0000AA5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (3, 1, 1, CAST(0x0000AA6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (4, 1, 1, CAST(0x0000AA6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (5, 1, 1, CAST(0x0000AA6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (6, 1, 1, CAST(0x0000AA6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (7, 1, 1, CAST(0x0000AA6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (8, 1, 1, CAST(0x0000AA6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (9, 1, 1, CAST(0x0000AA6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (10, 1, 1, CAST(0x0000AA6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (11, 1, 1, CAST(0x0000AA6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (12, 1, 1, CAST(0x0000AA6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (13, 1, 1, CAST(0x0000AA6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (14, 1, 1, CAST(0x0000AA6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (15, 1, 1, CAST(0x0000AA6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (16, 1, 1, CAST(0x0000AA6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (17, 1, 1, CAST(0x0000AA6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (18, 1, 1, CAST(0x0000AA6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (19, 1, 1, CAST(0x0000AA7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (20, 1, 1, CAST(0x0000AA7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (21, 1, 1, CAST(0x0000AA7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (22, 1, 1, CAST(0x0000AA7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (23, 1, 1, CAST(0x0000AA7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (24, 1, 1, CAST(0x0000AA7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (25, 1, 1, CAST(0x0000AA7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (26, 1, 1, CAST(0x0000AA7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (27, 1, 1, CAST(0x0000AA7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (28, 1, 1, CAST(0x0000AA7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (29, 1, 1, CAST(0x0000AA7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (30, 1, 1, CAST(0x0000AA7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (31, 1, 1, CAST(0x0000AA7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (32, 1, 1, CAST(0x0000AA7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (33, 1, 1, CAST(0x0000AA7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (34, 1, 1, CAST(0x0000AA7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (35, 1, 1, CAST(0x0000AA8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (36, 1, 1, CAST(0x0000AA8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (37, 1, 1, CAST(0x0000AA8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (38, 1, 1, CAST(0x0000AA8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (39, 1, 1, CAST(0x0000AA8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (40, 1, 1, CAST(0x0000AA8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (41, 1, 1, CAST(0x0000AA8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (42, 1, 1, CAST(0x0000AA8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (43, 1, 1, CAST(0x0000AA8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (44, 1, 1, CAST(0x0000AA8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (45, 1, 1, CAST(0x0000AA8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (46, 1, 1, CAST(0x0000AA8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (47, 1, 1, CAST(0x0000AA8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (48, 1, 1, CAST(0x0000AA8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (49, 1, 1, CAST(0x0000AA8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (50, 1, 1, CAST(0x0000AA8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (51, 1, 1, CAST(0x0000AA9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (52, 1, 1, CAST(0x0000AA9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (53, 1, 1, CAST(0x0000AA9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (54, 1, 1, CAST(0x0000AA9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (55, 1, 1, CAST(0x0000AA9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (56, 1, 1, CAST(0x0000AA9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (57, 1, 1, CAST(0x0000AA9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (58, 1, 1, CAST(0x0000AA9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (59, 1, 1, CAST(0x0000AA9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (60, 1, 1, CAST(0x0000AA9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (61, 1, 1, CAST(0x0000AA9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (62, 1, 1, CAST(0x0000AA9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (63, 1, 1, CAST(0x0000AA9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (64, 1, 1, CAST(0x0000AA9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (65, 1, 1, CAST(0x0000AA9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (66, 1, 1, CAST(0x0000AA9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (67, 1, 1, CAST(0x0000AAA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (68, 1, 1, CAST(0x0000AAA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (69, 1, 1, CAST(0x0000AAA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (70, 1, 1, CAST(0x0000AAA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (71, 1, 1, CAST(0x0000AAA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (72, 1, 1, CAST(0x0000AAA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (73, 1, 1, CAST(0x0000AAA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (74, 1, 1, CAST(0x0000AAA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (75, 1, 1, CAST(0x0000AAA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (76, 1, 1, CAST(0x0000AAA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (77, 1, 1, CAST(0x0000AAAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (78, 1, 1, CAST(0x0000AAAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (79, 1, 1, CAST(0x0000AAAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (80, 1, 1, CAST(0x0000AAAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (81, 1, 1, CAST(0x0000AAAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (82, 1, 1, CAST(0x0000AAAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (83, 1, 1, CAST(0x0000AAB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (84, 1, 1, CAST(0x0000AAB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (85, 1, 1, CAST(0x0000AAB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (86, 1, 1, CAST(0x0000AAB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (87, 1, 1, CAST(0x0000AAB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (88, 1, 1, CAST(0x0000AAB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (89, 1, 1, CAST(0x0000AAB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (90, 1, 1, CAST(0x0000AAB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (91, 1, 1, CAST(0x0000AAB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (92, 1, 1, CAST(0x0000AAB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (93, 1, 1, CAST(0x0000AABA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (94, 1, 1, CAST(0x0000AABB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (95, 1, 1, CAST(0x0000AABC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (96, 1, 1, CAST(0x0000AABD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (97, 1, 1, CAST(0x0000AABE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (98, 1, 1, CAST(0x0000AABF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (99, 1, 1, CAST(0x0000AAC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (100, 1, 1, CAST(0x0000AAC100000000 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (101, 1, 1, CAST(0x0000AAC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (102, 1, 1, CAST(0x0000AAC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (103, 1, 1, CAST(0x0000AAC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (104, 1, 1, CAST(0x0000AAC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (105, 1, 1, CAST(0x0000AAC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (106, 1, 1, CAST(0x0000AAC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (107, 1, 1, CAST(0x0000AAC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (108, 1, 1, CAST(0x0000AAC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (109, 1, 1, CAST(0x0000AACA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (110, 1, 1, CAST(0x0000AACB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (111, 1, 1, CAST(0x0000AACC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (112, 1, 1, CAST(0x0000AACD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (113, 1, 1, CAST(0x0000AACE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (114, 1, 1, CAST(0x0000AACF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (115, 1, 1, CAST(0x0000AAD000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (116, 1, 1, CAST(0x0000AAD100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (117, 1, 1, CAST(0x0000AAD200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (118, 1, 1, CAST(0x0000AAD300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (119, 1, 1, CAST(0x0000AAD400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (120, 1, 1, CAST(0x0000AAD500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (121, 1, 1, CAST(0x0000AAD600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (122, 1, 1, CAST(0x0000AAD700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (123, 1, 1, CAST(0x0000AAD800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (124, 1, 1, CAST(0x0000AAD900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (125, 1, 1, CAST(0x0000AADA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (126, 1, 1, CAST(0x0000AADB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (127, 1, 1, CAST(0x0000AADC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (128, 1, 1, CAST(0x0000AADD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (129, 1, 1, CAST(0x0000AADE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (130, 1, 1, CAST(0x0000AADF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (131, 1, 1, CAST(0x0000AAE000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (132, 1, 1, CAST(0x0000AAE100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (133, 1, 1, CAST(0x0000AAE200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (134, 1, 1, CAST(0x0000AAE300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (135, 1, 1, CAST(0x0000AAE400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (136, 1, 1, CAST(0x0000AAE500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (137, 1, 1, CAST(0x0000AAE600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (138, 1, 1, CAST(0x0000AAE700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (139, 1, 1, CAST(0x0000AAE800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (140, 1, 1, CAST(0x0000AAE900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (141, 1, 1, CAST(0x0000AAEA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (142, 1, 1, CAST(0x0000AAEB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (143, 1, 1, CAST(0x0000AAEC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (144, 1, 1, CAST(0x0000AAED00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (145, 1, 1, CAST(0x0000AAEE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (146, 1, 1, CAST(0x0000AAEF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (147, 1, 1, CAST(0x0000AAF000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (148, 1, 1, CAST(0x0000AAF100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (149, 1, 1, CAST(0x0000AAF200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (150, 1, 1, CAST(0x0000AAF300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (151, 1, 1, CAST(0x0000AAF400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (152, 1, 1, CAST(0x0000AAF500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (153, 1, 1, CAST(0x0000AAF600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (154, 1, 1, CAST(0x0000AAF700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (155, 1, 1, CAST(0x0000AAF800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (156, 1, 1, CAST(0x0000AAF900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (157, 1, 1, CAST(0x0000AAFA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (158, 1, 1, CAST(0x0000AAFB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (159, 1, 1, CAST(0x0000AAFC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (160, 1, 1, CAST(0x0000AAFD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (161, 1, 1, CAST(0x0000AAFE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (162, 1, 1, CAST(0x0000AAFF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (163, 1, 1, CAST(0x0000AB0000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (164, 1, 1, CAST(0x0000AB0100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (165, 1, 1, CAST(0x0000AB0200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (166, 1, 1, CAST(0x0000AB0300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (167, 1, 1, CAST(0x0000AB0400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (168, 1, 1, CAST(0x0000AB0500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (169, 1, 1, CAST(0x0000AB0600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (170, 1, 1, CAST(0x0000AB0700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (171, 1, 1, CAST(0x0000AB0800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (172, 1, 1, CAST(0x0000AB0900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (173, 1, 1, CAST(0x0000AB0A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (174, 1, 1, CAST(0x0000AB0B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (175, 1, 1, CAST(0x0000AB0C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (176, 1, 1, CAST(0x0000AB0D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (177, 1, 1, CAST(0x0000AB0E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (178, 1, 1, CAST(0x0000AB0F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (179, 1, 1, CAST(0x0000AB1000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (180, 1, 1, CAST(0x0000AB1100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (181, 1, 1, CAST(0x0000AB1200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (182, 1, 1, CAST(0x0000AB1300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (183, 1, 1, CAST(0x0000AB1400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (184, 1, 1, CAST(0x0000AB1500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (185, 1, 1, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (186, 1, 1, CAST(0x0000AB1700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (187, 1, 1, CAST(0x0000AB1800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (188, 1, 1, CAST(0x0000AB1900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (189, 1, 1, CAST(0x0000AB1A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (190, 1, 1, CAST(0x0000AB1B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (191, 1, 1, CAST(0x0000AB1C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (192, 1, 1, CAST(0x0000AB1D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (193, 1, 1, CAST(0x0000AB1E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (194, 1, 1, CAST(0x0000AB1F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (195, 1, 1, CAST(0x0000AB2000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (196, 1, 1, CAST(0x0000AB2100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (197, 1, 1, CAST(0x0000AB2200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (198, 1, 1, CAST(0x0000AB2300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (199, 1, 1, CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (200, 1, 1, CAST(0x0000AB2500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (201, 1, 1, CAST(0x0000AB2600000000 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (202, 1, 1, CAST(0x0000AB2700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (203, 1, 1, CAST(0x0000AB2800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (204, 1, 1, CAST(0x0000AB2900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (205, 1, 1, CAST(0x0000AB2A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (206, 1, 1, CAST(0x0000AB2B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (207, 1, 1, CAST(0x0000AB2C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (208, 1, 1, CAST(0x0000AB2D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (209, 1, 1, CAST(0x0000AB2E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (210, 1, 1, CAST(0x0000AB2F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (211, 1, 1, CAST(0x0000AB3000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (212, 1, 1, CAST(0x0000AB3100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (213, 1, 1, CAST(0x0000AB3200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (214, 1, 1, CAST(0x0000AB3300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (215, 1, 1, CAST(0x0000AB3400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (216, 1, 1, CAST(0x0000AB3500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (217, 1, 1, CAST(0x0000AB3600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (218, 1, 1, CAST(0x0000AB3700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (219, 1, 1, CAST(0x0000AB3800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (220, 1, 1, CAST(0x0000AB3900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (221, 1, 1, CAST(0x0000AB3A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (222, 1, 1, CAST(0x0000AB3B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (223, 1, 1, CAST(0x0000AB3C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (224, 1, 1, CAST(0x0000AB3D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (225, 1, 1, CAST(0x0000AB3E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (226, 1, 1, CAST(0x0000AB3F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (227, 1, 1, CAST(0x0000AB4000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (228, 1, 1, CAST(0x0000AB4100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (229, 1, 1, CAST(0x0000AB4200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (230, 1, 1, CAST(0x0000AB4300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (231, 1, 1, CAST(0x0000AB4400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (232, 1, 1, CAST(0x0000AB4500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (233, 1, 1, CAST(0x0000AB4600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (234, 1, 1, CAST(0x0000AB4700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (235, 1, 1, CAST(0x0000AB4800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (236, 1, 1, CAST(0x0000AB4900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (237, 1, 1, CAST(0x0000AB4A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (238, 1, 1, CAST(0x0000AB4B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (239, 1, 1, CAST(0x0000AB4C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (240, 1, 1, CAST(0x0000AB4D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (241, 1, 1, CAST(0x0000AB4E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (242, 1, 1, CAST(0x0000AB4F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (243, 1, 1, CAST(0x0000AB5000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (244, 1, 1, CAST(0x0000AB5100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (245, 1, 1, CAST(0x0000AB5200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (246, 1, 1, CAST(0x0000AB5300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (247, 1, 1, CAST(0x0000AB5400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (248, 1, 1, CAST(0x0000AB5500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (249, 1, 1, CAST(0x0000AB5600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (250, 1, 1, CAST(0x0000AB5700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (251, 1, 1, CAST(0x0000AB5800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (252, 1, 1, CAST(0x0000AB5900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (253, 1, 1, CAST(0x0000AB5A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (254, 1, 1, CAST(0x0000AB5B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (255, 1, 1, CAST(0x0000AB5C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (256, 1, 1, CAST(0x0000AB5D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (257, 1, 1, CAST(0x0000AB5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (258, 1, 1, CAST(0x0000AB5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (259, 1, 1, CAST(0x0000AB6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (260, 1, 1, CAST(0x0000AB6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (261, 1, 1, CAST(0x0000AB6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (262, 1, 1, CAST(0x0000AB6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (263, 1, 1, CAST(0x0000AB6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (264, 1, 1, CAST(0x0000AB6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (265, 1, 1, CAST(0x0000AB6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (266, 1, 1, CAST(0x0000AB6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (267, 1, 1, CAST(0x0000AB6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (268, 1, 1, CAST(0x0000AB6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (269, 1, 1, CAST(0x0000AB6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (270, 1, 1, CAST(0x0000AB6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (271, 1, 1, CAST(0x0000AB6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (272, 1, 1, CAST(0x0000AB6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (273, 1, 1, CAST(0x0000AB6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (274, 1, 1, CAST(0x0000AB6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (275, 1, 1, CAST(0x0000AB7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (276, 1, 1, CAST(0x0000AB7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (277, 1, 1, CAST(0x0000AB7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (278, 1, 1, CAST(0x0000AB7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (279, 1, 1, CAST(0x0000AB7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (280, 1, 1, CAST(0x0000AB7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (281, 1, 1, CAST(0x0000AB7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (282, 1, 1, CAST(0x0000AB7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (283, 1, 1, CAST(0x0000AB7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (284, 1, 1, CAST(0x0000AB7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (285, 1, 1, CAST(0x0000AB7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (286, 1, 1, CAST(0x0000AB7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (287, 1, 1, CAST(0x0000AB7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (288, 1, 1, CAST(0x0000AB7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (289, 1, 1, CAST(0x0000AB7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (290, 1, 1, CAST(0x0000AB7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (291, 1, 1, CAST(0x0000AB8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (292, 1, 1, CAST(0x0000AB8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (293, 1, 1, CAST(0x0000AB8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (294, 1, 1, CAST(0x0000AB8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (295, 1, 1, CAST(0x0000AB8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (296, 1, 1, CAST(0x0000AB8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (297, 1, 1, CAST(0x0000AB8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (298, 1, 1, CAST(0x0000AB8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (299, 1, 1, CAST(0x0000AB8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (300, 1, 1, CAST(0x0000AB8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (301, 1, 1, CAST(0x0000AB8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (302, 1, 1, CAST(0x0000AB8B00000000 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (303, 1, 1, CAST(0x0000AB8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (304, 1, 1, CAST(0x0000AB8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (305, 1, 1, CAST(0x0000AB8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (306, 1, 1, CAST(0x0000AB8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (307, 1, 1, CAST(0x0000AB9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (308, 1, 1, CAST(0x0000AB9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (309, 1, 1, CAST(0x0000AB9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (310, 1, 1, CAST(0x0000AB9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (311, 1, 1, CAST(0x0000AB9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (312, 1, 1, CAST(0x0000AB9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (313, 1, 1, CAST(0x0000AB9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (314, 1, 1, CAST(0x0000AB9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (315, 1, 1, CAST(0x0000AB9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (316, 1, 1, CAST(0x0000AB9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (317, 1, 1, CAST(0x0000AB9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (318, 1, 1, CAST(0x0000AB9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (319, 1, 1, CAST(0x0000AB9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (320, 1, 1, CAST(0x0000AB9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (321, 1, 1, CAST(0x0000AB9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (322, 1, 1, CAST(0x0000AB9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (323, 1, 1, CAST(0x0000ABA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (324, 1, 1, CAST(0x0000ABA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (325, 1, 1, CAST(0x0000ABA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (326, 1, 1, CAST(0x0000ABA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (327, 1, 1, CAST(0x0000ABA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (328, 1, 1, CAST(0x0000ABA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (329, 1, 1, CAST(0x0000ABA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (330, 1, 1, CAST(0x0000ABA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (331, 1, 1, CAST(0x0000ABA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (332, 1, 1, CAST(0x0000ABA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (333, 1, 1, CAST(0x0000ABAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (334, 1, 1, CAST(0x0000ABAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (335, 1, 1, CAST(0x0000ABAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (336, 1, 1, CAST(0x0000ABAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (337, 1, 1, CAST(0x0000ABAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (338, 1, 1, CAST(0x0000ABAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (339, 1, 1, CAST(0x0000ABB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (340, 1, 1, CAST(0x0000ABB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (341, 1, 1, CAST(0x0000ABB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (342, 1, 1, CAST(0x0000ABB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (343, 1, 1, CAST(0x0000ABB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (344, 1, 1, CAST(0x0000ABB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (345, 1, 1, CAST(0x0000ABB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (346, 1, 1, CAST(0x0000ABB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (347, 1, 1, CAST(0x0000ABB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (348, 1, 1, CAST(0x0000ABB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (349, 1, 1, CAST(0x0000ABBA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (350, 1, 1, CAST(0x0000ABBB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (351, 1, 1, CAST(0x0000ABBC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (352, 1, 1, CAST(0x0000ABBD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (353, 1, 1, CAST(0x0000ABBE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (354, 1, 1, CAST(0x0000ABBF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (355, 1, 1, CAST(0x0000ABC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (356, 1, 1, CAST(0x0000ABC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (357, 1, 1, CAST(0x0000ABC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (358, 1, 1, CAST(0x0000ABC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (359, 1, 1, CAST(0x0000ABC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (360, 1, 1, CAST(0x0000ABC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (361, 1, 1, CAST(0x0000ABC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (362, 1, 1, CAST(0x0000ABC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (363, 1, 1, CAST(0x0000ABC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (364, 1, 1, CAST(0x0000ABC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (365, 1, 1, CAST(0x0000ABCA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (366, 1, 1, CAST(0x0000ABCB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (367, 1, 2, CAST(0x0000AA5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (368, 1, 2, CAST(0x0000AA5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (369, 1, 2, CAST(0x0000AA6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (370, 1, 2, CAST(0x0000AA6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (371, 1, 2, CAST(0x0000AA6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (372, 1, 2, CAST(0x0000AA6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (373, 1, 2, CAST(0x0000AA6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (374, 1, 2, CAST(0x0000AA6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (375, 1, 2, CAST(0x0000AA6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (376, 1, 2, CAST(0x0000AA6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (377, 1, 2, CAST(0x0000AA6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (378, 1, 2, CAST(0x0000AA6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (379, 1, 2, CAST(0x0000AA6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (380, 1, 2, CAST(0x0000AA6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (381, 1, 2, CAST(0x0000AA6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (382, 1, 2, CAST(0x0000AA6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (383, 1, 2, CAST(0x0000AA6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (384, 1, 2, CAST(0x0000AA6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (385, 1, 2, CAST(0x0000AA7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (386, 1, 2, CAST(0x0000AA7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (387, 1, 2, CAST(0x0000AA7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (388, 1, 2, CAST(0x0000AA7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (389, 1, 2, CAST(0x0000AA7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (390, 1, 2, CAST(0x0000AA7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (391, 1, 2, CAST(0x0000AA7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (392, 1, 2, CAST(0x0000AA7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (393, 1, 2, CAST(0x0000AA7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (394, 1, 2, CAST(0x0000AA7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (395, 1, 2, CAST(0x0000AA7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (396, 1, 2, CAST(0x0000AA7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (397, 1, 2, CAST(0x0000AA7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (398, 1, 2, CAST(0x0000AA7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (399, 1, 2, CAST(0x0000AA7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (400, 1, 2, CAST(0x0000AA7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (401, 1, 2, CAST(0x0000AA8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (402, 1, 2, CAST(0x0000AA8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (403, 1, 2, CAST(0x0000AA8200000000 AS DateTime))
GO
print 'Processed 400 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (404, 1, 2, CAST(0x0000AA8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (405, 1, 2, CAST(0x0000AA8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (406, 1, 2, CAST(0x0000AA8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (407, 1, 2, CAST(0x0000AA8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (408, 1, 2, CAST(0x0000AA8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (409, 1, 2, CAST(0x0000AA8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (410, 1, 2, CAST(0x0000AA8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (411, 1, 2, CAST(0x0000AA8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (412, 1, 2, CAST(0x0000AA8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (413, 1, 2, CAST(0x0000AA8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (414, 1, 2, CAST(0x0000AA8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (415, 1, 2, CAST(0x0000AA8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (416, 1, 2, CAST(0x0000AA8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (417, 1, 2, CAST(0x0000AA9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (418, 1, 2, CAST(0x0000AA9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (419, 1, 2, CAST(0x0000AA9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (420, 1, 2, CAST(0x0000AA9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (421, 1, 2, CAST(0x0000AA9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (422, 1, 2, CAST(0x0000AA9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (423, 1, 2, CAST(0x0000AA9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (424, 1, 2, CAST(0x0000AA9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (425, 1, 2, CAST(0x0000AA9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (426, 1, 2, CAST(0x0000AA9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (427, 1, 2, CAST(0x0000AA9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (428, 1, 2, CAST(0x0000AA9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (429, 1, 2, CAST(0x0000AA9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (430, 1, 2, CAST(0x0000AA9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (431, 1, 2, CAST(0x0000AA9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (432, 1, 2, CAST(0x0000AA9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (433, 1, 2, CAST(0x0000AAA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (434, 1, 2, CAST(0x0000AAA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (435, 1, 2, CAST(0x0000AAA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (436, 1, 2, CAST(0x0000AAA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (437, 1, 2, CAST(0x0000AAA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (438, 1, 2, CAST(0x0000AAA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (439, 1, 2, CAST(0x0000AAA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (440, 1, 2, CAST(0x0000AAA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (441, 1, 2, CAST(0x0000AAA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (442, 1, 2, CAST(0x0000AAA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (443, 1, 2, CAST(0x0000AAAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (444, 1, 2, CAST(0x0000AAAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (445, 1, 2, CAST(0x0000AAAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (446, 1, 2, CAST(0x0000AAAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (447, 1, 2, CAST(0x0000AAAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (448, 1, 2, CAST(0x0000AAAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (449, 1, 2, CAST(0x0000AAB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (450, 1, 2, CAST(0x0000AAB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (451, 1, 2, CAST(0x0000AAB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (452, 1, 2, CAST(0x0000AAB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (453, 1, 2, CAST(0x0000AAB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (454, 1, 2, CAST(0x0000AAB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (455, 1, 2, CAST(0x0000AAB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (456, 1, 2, CAST(0x0000AAB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (457, 1, 2, CAST(0x0000AAB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (458, 1, 2, CAST(0x0000AAB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (459, 1, 2, CAST(0x0000AABA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (460, 1, 2, CAST(0x0000AABB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (461, 1, 2, CAST(0x0000AABC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (462, 1, 2, CAST(0x0000AABD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (463, 1, 2, CAST(0x0000AABE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (464, 1, 2, CAST(0x0000AABF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (465, 1, 2, CAST(0x0000AAC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (466, 1, 2, CAST(0x0000AAC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (467, 1, 2, CAST(0x0000AAC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (468, 1, 2, CAST(0x0000AAC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (469, 1, 2, CAST(0x0000AAC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (470, 1, 2, CAST(0x0000AAC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (471, 1, 2, CAST(0x0000AAC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (472, 1, 2, CAST(0x0000AAC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (473, 1, 2, CAST(0x0000AAC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (474, 1, 2, CAST(0x0000AAC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (475, 1, 2, CAST(0x0000AACA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (476, 1, 2, CAST(0x0000AACB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (477, 1, 2, CAST(0x0000AACC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (478, 1, 2, CAST(0x0000AACD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (479, 1, 2, CAST(0x0000AACE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (480, 1, 2, CAST(0x0000AACF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (481, 1, 2, CAST(0x0000AAD000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (482, 1, 2, CAST(0x0000AAD100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (483, 1, 2, CAST(0x0000AAD200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (484, 1, 2, CAST(0x0000AAD300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (485, 1, 2, CAST(0x0000AAD400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (486, 1, 2, CAST(0x0000AAD500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (487, 1, 2, CAST(0x0000AAD600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (488, 1, 2, CAST(0x0000AAD700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (489, 1, 2, CAST(0x0000AAD800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (490, 1, 2, CAST(0x0000AAD900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (491, 1, 2, CAST(0x0000AADA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (492, 1, 2, CAST(0x0000AADB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (493, 1, 2, CAST(0x0000AADC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (494, 1, 2, CAST(0x0000AADD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (495, 1, 2, CAST(0x0000AADE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (496, 1, 2, CAST(0x0000AADF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (497, 1, 2, CAST(0x0000AAE000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (498, 1, 2, CAST(0x0000AAE100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (499, 1, 2, CAST(0x0000AAE200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (500, 1, 2, CAST(0x0000AAE300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (501, 1, 2, CAST(0x0000AAE400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (502, 1, 2, CAST(0x0000AAE500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (503, 1, 2, CAST(0x0000AAE600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (504, 1, 2, CAST(0x0000AAE700000000 AS DateTime))
GO
print 'Processed 500 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (505, 1, 2, CAST(0x0000AAE800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (506, 1, 2, CAST(0x0000AAE900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (507, 1, 2, CAST(0x0000AAEA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (508, 1, 2, CAST(0x0000AAEB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (509, 1, 2, CAST(0x0000AAEC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (510, 1, 2, CAST(0x0000AAED00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (511, 1, 2, CAST(0x0000AAEE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (512, 1, 2, CAST(0x0000AAEF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (513, 1, 2, CAST(0x0000AAF000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (514, 1, 2, CAST(0x0000AAF100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (515, 1, 2, CAST(0x0000AAF200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (516, 1, 2, CAST(0x0000AAF300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (517, 1, 2, CAST(0x0000AAF400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (518, 1, 2, CAST(0x0000AAF500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (519, 1, 2, CAST(0x0000AAF600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (520, 1, 2, CAST(0x0000AAF700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (521, 1, 2, CAST(0x0000AAF800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (522, 1, 2, CAST(0x0000AAF900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (523, 1, 2, CAST(0x0000AAFA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (524, 1, 2, CAST(0x0000AAFB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (525, 1, 2, CAST(0x0000AAFC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (526, 1, 2, CAST(0x0000AAFD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (527, 1, 2, CAST(0x0000AAFE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (528, 1, 2, CAST(0x0000AAFF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (529, 1, 2, CAST(0x0000AB0000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (530, 1, 2, CAST(0x0000AB0100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (531, 1, 2, CAST(0x0000AB0200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (532, 1, 2, CAST(0x0000AB0300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (533, 1, 2, CAST(0x0000AB0400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (534, 1, 2, CAST(0x0000AB0500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (535, 1, 2, CAST(0x0000AB0600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (536, 1, 2, CAST(0x0000AB0700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (537, 1, 2, CAST(0x0000AB0800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (538, 1, 2, CAST(0x0000AB0900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (539, 1, 2, CAST(0x0000AB0A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (540, 1, 2, CAST(0x0000AB0B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (541, 1, 2, CAST(0x0000AB0C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (542, 1, 2, CAST(0x0000AB0D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (543, 1, 2, CAST(0x0000AB0E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (544, 1, 2, CAST(0x0000AB0F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (545, 1, 2, CAST(0x0000AB1000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (546, 1, 2, CAST(0x0000AB1100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (547, 1, 2, CAST(0x0000AB1200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (548, 1, 2, CAST(0x0000AB1300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (549, 1, 2, CAST(0x0000AB1400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (550, 1, 2, CAST(0x0000AB1500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (551, 1, 2, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (552, 1, 2, CAST(0x0000AB1700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (553, 1, 2, CAST(0x0000AB1800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (554, 1, 2, CAST(0x0000AB1900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (555, 1, 2, CAST(0x0000AB1A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (556, 1, 2, CAST(0x0000AB1B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (557, 1, 2, CAST(0x0000AB1C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (558, 1, 2, CAST(0x0000AB1D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (559, 1, 2, CAST(0x0000AB1E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (560, 1, 2, CAST(0x0000AB1F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (561, 1, 2, CAST(0x0000AB2000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (562, 1, 2, CAST(0x0000AB2100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (563, 1, 2, CAST(0x0000AB2200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (564, 1, 2, CAST(0x0000AB2300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (565, 1, 2, CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (566, 1, 2, CAST(0x0000AB2500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (567, 1, 2, CAST(0x0000AB2600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (568, 1, 2, CAST(0x0000AB2700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (569, 1, 2, CAST(0x0000AB2800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (570, 1, 2, CAST(0x0000AB2900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (571, 1, 2, CAST(0x0000AB2A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (572, 1, 2, CAST(0x0000AB2B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (573, 1, 2, CAST(0x0000AB2C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (574, 1, 2, CAST(0x0000AB2D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (575, 1, 2, CAST(0x0000AB2E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (576, 1, 2, CAST(0x0000AB2F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (577, 1, 2, CAST(0x0000AB3000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (578, 1, 2, CAST(0x0000AB3100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (579, 1, 2, CAST(0x0000AB3200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (580, 1, 2, CAST(0x0000AB3300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (581, 1, 2, CAST(0x0000AB3400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (582, 1, 2, CAST(0x0000AB3500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (583, 1, 2, CAST(0x0000AB3600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (584, 1, 2, CAST(0x0000AB3700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (585, 1, 2, CAST(0x0000AB3800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (586, 1, 2, CAST(0x0000AB3900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (587, 1, 2, CAST(0x0000AB3A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (588, 1, 2, CAST(0x0000AB3B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (589, 1, 2, CAST(0x0000AB3C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (590, 1, 2, CAST(0x0000AB3D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (591, 1, 2, CAST(0x0000AB3E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (592, 1, 2, CAST(0x0000AB3F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (593, 1, 2, CAST(0x0000AB4000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (594, 1, 2, CAST(0x0000AB4100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (595, 1, 2, CAST(0x0000AB4200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (596, 1, 2, CAST(0x0000AB4300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (597, 1, 2, CAST(0x0000AB4400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (598, 1, 2, CAST(0x0000AB4500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (599, 1, 2, CAST(0x0000AB4600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (600, 1, 2, CAST(0x0000AB4700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (601, 1, 2, CAST(0x0000AB4800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (602, 1, 2, CAST(0x0000AB4900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (603, 1, 2, CAST(0x0000AB4A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (604, 1, 2, CAST(0x0000AB4B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (605, 1, 2, CAST(0x0000AB4C00000000 AS DateTime))
GO
print 'Processed 600 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (606, 1, 2, CAST(0x0000AB4D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (607, 1, 2, CAST(0x0000AB4E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (608, 1, 2, CAST(0x0000AB4F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (609, 1, 2, CAST(0x0000AB5000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (610, 1, 2, CAST(0x0000AB5100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (611, 1, 2, CAST(0x0000AB5200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (612, 1, 2, CAST(0x0000AB5300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (613, 1, 2, CAST(0x0000AB5400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (614, 1, 2, CAST(0x0000AB5500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (615, 1, 2, CAST(0x0000AB5600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (616, 1, 2, CAST(0x0000AB5700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (617, 1, 2, CAST(0x0000AB5800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (618, 1, 2, CAST(0x0000AB5900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (619, 1, 2, CAST(0x0000AB5A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (620, 1, 2, CAST(0x0000AB5B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (621, 1, 2, CAST(0x0000AB5C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (622, 1, 2, CAST(0x0000AB5D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (623, 1, 2, CAST(0x0000AB5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (624, 1, 2, CAST(0x0000AB5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (625, 1, 2, CAST(0x0000AB6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (626, 1, 2, CAST(0x0000AB6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (627, 1, 2, CAST(0x0000AB6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (628, 1, 2, CAST(0x0000AB6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (629, 1, 2, CAST(0x0000AB6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (630, 1, 2, CAST(0x0000AB6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (631, 1, 2, CAST(0x0000AB6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (632, 1, 2, CAST(0x0000AB6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (633, 1, 2, CAST(0x0000AB6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (634, 1, 2, CAST(0x0000AB6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (635, 1, 2, CAST(0x0000AB6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (636, 1, 2, CAST(0x0000AB6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (637, 1, 2, CAST(0x0000AB6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (638, 1, 2, CAST(0x0000AB6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (639, 1, 2, CAST(0x0000AB6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (640, 1, 2, CAST(0x0000AB6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (641, 1, 2, CAST(0x0000AB7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (642, 1, 2, CAST(0x0000AB7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (643, 1, 2, CAST(0x0000AB7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (644, 1, 2, CAST(0x0000AB7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (645, 1, 2, CAST(0x0000AB7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (646, 1, 2, CAST(0x0000AB7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (647, 1, 2, CAST(0x0000AB7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (648, 1, 2, CAST(0x0000AB7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (649, 1, 2, CAST(0x0000AB7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (650, 1, 2, CAST(0x0000AB7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (651, 1, 2, CAST(0x0000AB7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (652, 1, 2, CAST(0x0000AB7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (653, 1, 2, CAST(0x0000AB7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (654, 1, 2, CAST(0x0000AB7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (655, 1, 2, CAST(0x0000AB7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (656, 1, 2, CAST(0x0000AB7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (657, 1, 2, CAST(0x0000AB8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (658, 1, 2, CAST(0x0000AB8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (659, 1, 2, CAST(0x0000AB8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (660, 1, 2, CAST(0x0000AB8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (661, 1, 2, CAST(0x0000AB8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (662, 1, 2, CAST(0x0000AB8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (663, 1, 2, CAST(0x0000AB8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (664, 1, 2, CAST(0x0000AB8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (665, 1, 2, CAST(0x0000AB8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (666, 1, 2, CAST(0x0000AB8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (667, 1, 2, CAST(0x0000AB8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (668, 1, 2, CAST(0x0000AB8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (669, 1, 2, CAST(0x0000AB8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (670, 1, 2, CAST(0x0000AB8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (671, 1, 2, CAST(0x0000AB8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (672, 1, 2, CAST(0x0000AB8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (673, 1, 2, CAST(0x0000AB9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (674, 1, 2, CAST(0x0000AB9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (675, 1, 2, CAST(0x0000AB9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (676, 1, 2, CAST(0x0000AB9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (677, 1, 2, CAST(0x0000AB9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (678, 1, 2, CAST(0x0000AB9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (679, 1, 2, CAST(0x0000AB9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (680, 1, 2, CAST(0x0000AB9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (681, 1, 2, CAST(0x0000AB9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (682, 1, 2, CAST(0x0000AB9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (683, 1, 2, CAST(0x0000AB9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (684, 1, 2, CAST(0x0000AB9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (685, 1, 2, CAST(0x0000AB9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (686, 1, 2, CAST(0x0000AB9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (687, 1, 2, CAST(0x0000AB9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (688, 1, 2, CAST(0x0000AB9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (689, 1, 2, CAST(0x0000ABA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (690, 1, 2, CAST(0x0000ABA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (691, 1, 2, CAST(0x0000ABA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (692, 1, 2, CAST(0x0000ABA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (693, 1, 2, CAST(0x0000ABA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (694, 1, 2, CAST(0x0000ABA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (695, 1, 2, CAST(0x0000ABA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (696, 1, 2, CAST(0x0000ABA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (697, 1, 2, CAST(0x0000ABA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (698, 1, 2, CAST(0x0000ABA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (699, 1, 2, CAST(0x0000ABAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (700, 1, 2, CAST(0x0000ABAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (701, 1, 2, CAST(0x0000ABAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (702, 1, 2, CAST(0x0000ABAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (703, 1, 2, CAST(0x0000ABAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (704, 1, 2, CAST(0x0000ABAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (705, 1, 2, CAST(0x0000ABB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (706, 1, 2, CAST(0x0000ABB100000000 AS DateTime))
GO
print 'Processed 700 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (707, 1, 2, CAST(0x0000ABB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (708, 1, 2, CAST(0x0000ABB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (709, 1, 2, CAST(0x0000ABB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (710, 1, 2, CAST(0x0000ABB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (711, 1, 2, CAST(0x0000ABB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (712, 1, 2, CAST(0x0000ABB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (713, 1, 2, CAST(0x0000ABB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (714, 1, 2, CAST(0x0000ABB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (715, 1, 2, CAST(0x0000ABBA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (716, 1, 2, CAST(0x0000ABBB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (717, 1, 2, CAST(0x0000ABBC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (718, 1, 2, CAST(0x0000ABBD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (719, 1, 2, CAST(0x0000ABBE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (720, 1, 2, CAST(0x0000ABBF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (721, 1, 2, CAST(0x0000ABC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (722, 1, 2, CAST(0x0000ABC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (723, 1, 2, CAST(0x0000ABC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (724, 1, 2, CAST(0x0000ABC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (725, 1, 2, CAST(0x0000ABC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (726, 1, 2, CAST(0x0000ABC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (727, 1, 2, CAST(0x0000ABC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (728, 1, 2, CAST(0x0000ABC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (729, 1, 2, CAST(0x0000ABC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (730, 1, 2, CAST(0x0000ABC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (731, 1, 2, CAST(0x0000ABCA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (732, 1, 2, CAST(0x0000ABCB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (733, 1, 3, CAST(0x0000AA5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (734, 1, 3, CAST(0x0000AA5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (735, 1, 3, CAST(0x0000AA6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (736, 1, 3, CAST(0x0000AA6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (737, 1, 3, CAST(0x0000AA6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (738, 1, 3, CAST(0x0000AA6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (739, 1, 3, CAST(0x0000AA6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (740, 1, 3, CAST(0x0000AA6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (741, 1, 3, CAST(0x0000AA6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (742, 1, 3, CAST(0x0000AA6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (743, 1, 3, CAST(0x0000AA6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (744, 1, 3, CAST(0x0000AA6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (745, 1, 3, CAST(0x0000AA6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (746, 1, 3, CAST(0x0000AA6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (747, 1, 3, CAST(0x0000AA6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (748, 1, 3, CAST(0x0000AA6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (749, 1, 3, CAST(0x0000AA6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (750, 1, 3, CAST(0x0000AA6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (751, 1, 3, CAST(0x0000AA7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (752, 1, 3, CAST(0x0000AA7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (753, 1, 3, CAST(0x0000AA7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (754, 1, 3, CAST(0x0000AA7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (755, 1, 3, CAST(0x0000AA7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (756, 1, 3, CAST(0x0000AA7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (757, 1, 3, CAST(0x0000AA7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (758, 1, 3, CAST(0x0000AA7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (759, 1, 3, CAST(0x0000AA7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (760, 1, 3, CAST(0x0000AA7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (761, 1, 3, CAST(0x0000AA7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (762, 1, 3, CAST(0x0000AA7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (763, 1, 3, CAST(0x0000AA7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (764, 1, 3, CAST(0x0000AA7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (765, 1, 3, CAST(0x0000AA7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (766, 1, 3, CAST(0x0000AA7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (767, 1, 3, CAST(0x0000AA8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (768, 1, 3, CAST(0x0000AA8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (769, 1, 3, CAST(0x0000AA8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (770, 1, 3, CAST(0x0000AA8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (771, 1, 3, CAST(0x0000AA8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (772, 1, 3, CAST(0x0000AA8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (773, 1, 3, CAST(0x0000AA8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (774, 1, 3, CAST(0x0000AA8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (775, 1, 3, CAST(0x0000AA8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (776, 1, 3, CAST(0x0000AA8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (777, 1, 3, CAST(0x0000AA8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (778, 1, 3, CAST(0x0000AA8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (779, 1, 3, CAST(0x0000AA8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (780, 1, 3, CAST(0x0000AA8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (781, 1, 3, CAST(0x0000AA8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (782, 1, 3, CAST(0x0000AA8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (783, 1, 3, CAST(0x0000AA9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (784, 1, 3, CAST(0x0000AA9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (785, 1, 3, CAST(0x0000AA9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (786, 1, 3, CAST(0x0000AA9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (787, 1, 3, CAST(0x0000AA9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (788, 1, 3, CAST(0x0000AA9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (789, 1, 3, CAST(0x0000AA9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (790, 1, 3, CAST(0x0000AA9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (791, 1, 3, CAST(0x0000AA9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (792, 1, 3, CAST(0x0000AA9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (793, 1, 3, CAST(0x0000AA9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (794, 1, 3, CAST(0x0000AA9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (795, 1, 3, CAST(0x0000AA9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (796, 1, 3, CAST(0x0000AA9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (797, 1, 3, CAST(0x0000AA9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (798, 1, 3, CAST(0x0000AA9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (799, 1, 3, CAST(0x0000AAA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (800, 1, 3, CAST(0x0000AAA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (801, 1, 3, CAST(0x0000AAA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (802, 1, 3, CAST(0x0000AAA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (803, 1, 3, CAST(0x0000AAA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (804, 1, 3, CAST(0x0000AAA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (805, 1, 3, CAST(0x0000AAA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (806, 1, 3, CAST(0x0000AAA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (807, 1, 3, CAST(0x0000AAA800000000 AS DateTime))
GO
print 'Processed 800 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (808, 1, 3, CAST(0x0000AAA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (809, 1, 3, CAST(0x0000AAAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (810, 1, 3, CAST(0x0000AAAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (811, 1, 3, CAST(0x0000AAAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (812, 1, 3, CAST(0x0000AAAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (813, 1, 3, CAST(0x0000AAAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (814, 1, 3, CAST(0x0000AAAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (815, 1, 3, CAST(0x0000AAB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (816, 1, 3, CAST(0x0000AAB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (817, 1, 3, CAST(0x0000AAB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (818, 1, 3, CAST(0x0000AAB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (819, 1, 3, CAST(0x0000AAB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (820, 1, 3, CAST(0x0000AAB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (821, 1, 3, CAST(0x0000AAB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (822, 1, 3, CAST(0x0000AAB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (823, 1, 3, CAST(0x0000AAB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (824, 1, 3, CAST(0x0000AAB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (825, 1, 3, CAST(0x0000AABA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (826, 1, 3, CAST(0x0000AABB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (827, 1, 3, CAST(0x0000AABC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (828, 1, 3, CAST(0x0000AABD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (829, 1, 3, CAST(0x0000AABE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (830, 1, 3, CAST(0x0000AABF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (831, 1, 3, CAST(0x0000AAC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (832, 1, 3, CAST(0x0000AAC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (833, 1, 3, CAST(0x0000AAC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (834, 1, 3, CAST(0x0000AAC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (835, 1, 3, CAST(0x0000AAC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (836, 1, 3, CAST(0x0000AAC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (837, 1, 3, CAST(0x0000AAC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (838, 1, 3, CAST(0x0000AAC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (839, 1, 3, CAST(0x0000AAC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (840, 1, 3, CAST(0x0000AAC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (841, 1, 3, CAST(0x0000AACA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (842, 1, 3, CAST(0x0000AACB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (843, 1, 3, CAST(0x0000AACC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (844, 1, 3, CAST(0x0000AACD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (845, 1, 3, CAST(0x0000AACE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (846, 1, 3, CAST(0x0000AACF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (847, 1, 3, CAST(0x0000AAD000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (848, 1, 3, CAST(0x0000AAD100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (849, 1, 3, CAST(0x0000AAD200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (850, 1, 3, CAST(0x0000AAD300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (851, 1, 3, CAST(0x0000AAD400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (852, 1, 3, CAST(0x0000AAD500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (853, 1, 3, CAST(0x0000AAD600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (854, 1, 3, CAST(0x0000AAD700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (855, 1, 3, CAST(0x0000AAD800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (856, 1, 3, CAST(0x0000AAD900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (857, 1, 3, CAST(0x0000AADA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (858, 1, 3, CAST(0x0000AADB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (859, 1, 3, CAST(0x0000AADC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (860, 1, 3, CAST(0x0000AADD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (861, 1, 3, CAST(0x0000AADE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (862, 1, 3, CAST(0x0000AADF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (863, 1, 3, CAST(0x0000AAE000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (864, 1, 3, CAST(0x0000AAE100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (865, 1, 3, CAST(0x0000AAE200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (866, 1, 3, CAST(0x0000AAE300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (867, 1, 3, CAST(0x0000AAE400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (868, 1, 3, CAST(0x0000AAE500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (869, 1, 3, CAST(0x0000AAE600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (870, 1, 3, CAST(0x0000AAE700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (871, 1, 3, CAST(0x0000AAE800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (872, 1, 3, CAST(0x0000AAE900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (873, 1, 3, CAST(0x0000AAEA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (874, 1, 3, CAST(0x0000AAEB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (875, 1, 3, CAST(0x0000AAEC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (876, 1, 3, CAST(0x0000AAED00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (877, 1, 3, CAST(0x0000AAEE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (878, 1, 3, CAST(0x0000AAEF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (879, 1, 3, CAST(0x0000AAF000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (880, 1, 3, CAST(0x0000AAF100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (881, 1, 3, CAST(0x0000AAF200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (882, 1, 3, CAST(0x0000AAF300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (883, 1, 3, CAST(0x0000AAF400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (884, 1, 3, CAST(0x0000AAF500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (885, 1, 3, CAST(0x0000AAF600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (886, 1, 3, CAST(0x0000AAF700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (887, 1, 3, CAST(0x0000AAF800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (888, 1, 3, CAST(0x0000AAF900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (889, 1, 3, CAST(0x0000AAFA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (890, 1, 3, CAST(0x0000AAFB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (891, 1, 3, CAST(0x0000AAFC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (892, 1, 3, CAST(0x0000AAFD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (893, 1, 3, CAST(0x0000AAFE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (894, 1, 3, CAST(0x0000AAFF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (895, 1, 3, CAST(0x0000AB0000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (896, 1, 3, CAST(0x0000AB0100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (897, 1, 3, CAST(0x0000AB0200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (898, 1, 3, CAST(0x0000AB0300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (899, 1, 3, CAST(0x0000AB0400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (900, 1, 3, CAST(0x0000AB0500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (901, 1, 3, CAST(0x0000AB0600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (902, 1, 3, CAST(0x0000AB0700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (903, 1, 3, CAST(0x0000AB0800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (904, 1, 3, CAST(0x0000AB0900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (905, 1, 3, CAST(0x0000AB0A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (906, 1, 3, CAST(0x0000AB0B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (907, 1, 3, CAST(0x0000AB0C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (908, 1, 3, CAST(0x0000AB0D00000000 AS DateTime))
GO
print 'Processed 900 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (909, 1, 3, CAST(0x0000AB0E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (910, 1, 3, CAST(0x0000AB0F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (911, 1, 3, CAST(0x0000AB1000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (912, 1, 3, CAST(0x0000AB1100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (913, 1, 3, CAST(0x0000AB1200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (914, 1, 3, CAST(0x0000AB1300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (915, 1, 3, CAST(0x0000AB1400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (916, 1, 3, CAST(0x0000AB1500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (917, 1, 3, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (918, 1, 3, CAST(0x0000AB1700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (919, 1, 3, CAST(0x0000AB1800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (920, 1, 3, CAST(0x0000AB1900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (921, 1, 3, CAST(0x0000AB1A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (922, 1, 3, CAST(0x0000AB1B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (923, 1, 3, CAST(0x0000AB1C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (924, 1, 3, CAST(0x0000AB1D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (925, 1, 3, CAST(0x0000AB1E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (926, 1, 3, CAST(0x0000AB1F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (927, 1, 3, CAST(0x0000AB2000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (928, 1, 3, CAST(0x0000AB2100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (929, 1, 3, CAST(0x0000AB2200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (930, 1, 3, CAST(0x0000AB2300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (931, 1, 3, CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (932, 1, 3, CAST(0x0000AB2500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (933, 1, 3, CAST(0x0000AB2600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (934, 1, 3, CAST(0x0000AB2700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (935, 1, 3, CAST(0x0000AB2800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (936, 1, 3, CAST(0x0000AB2900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (937, 1, 3, CAST(0x0000AB2A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (938, 1, 3, CAST(0x0000AB2B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (939, 1, 3, CAST(0x0000AB2C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (940, 1, 3, CAST(0x0000AB2D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (941, 1, 3, CAST(0x0000AB2E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (942, 1, 3, CAST(0x0000AB2F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (943, 1, 3, CAST(0x0000AB3000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (944, 1, 3, CAST(0x0000AB3100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (945, 1, 3, CAST(0x0000AB3200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (946, 1, 3, CAST(0x0000AB3300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (947, 1, 3, CAST(0x0000AB3400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (948, 1, 3, CAST(0x0000AB3500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (949, 1, 3, CAST(0x0000AB3600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (950, 1, 3, CAST(0x0000AB3700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (951, 1, 3, CAST(0x0000AB3800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (952, 1, 3, CAST(0x0000AB3900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (953, 1, 3, CAST(0x0000AB3A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (954, 1, 3, CAST(0x0000AB3B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (955, 1, 3, CAST(0x0000AB3C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (956, 1, 3, CAST(0x0000AB3D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (957, 1, 3, CAST(0x0000AB3E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (958, 1, 3, CAST(0x0000AB3F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (959, 1, 3, CAST(0x0000AB4000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (960, 1, 3, CAST(0x0000AB4100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (961, 1, 3, CAST(0x0000AB4200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (962, 1, 3, CAST(0x0000AB4300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (963, 1, 3, CAST(0x0000AB4400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (964, 1, 3, CAST(0x0000AB4500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (965, 1, 3, CAST(0x0000AB4600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (966, 1, 3, CAST(0x0000AB4700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (967, 1, 3, CAST(0x0000AB4800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (968, 1, 3, CAST(0x0000AB4900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (969, 1, 3, CAST(0x0000AB4A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (970, 1, 3, CAST(0x0000AB4B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (971, 1, 3, CAST(0x0000AB4C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (972, 1, 3, CAST(0x0000AB4D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (973, 1, 3, CAST(0x0000AB4E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (974, 1, 3, CAST(0x0000AB4F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (975, 1, 3, CAST(0x0000AB5000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (976, 1, 3, CAST(0x0000AB5100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (977, 1, 3, CAST(0x0000AB5200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (978, 1, 3, CAST(0x0000AB5300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (979, 1, 3, CAST(0x0000AB5400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (980, 1, 3, CAST(0x0000AB5500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (981, 1, 3, CAST(0x0000AB5600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (982, 1, 3, CAST(0x0000AB5700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (983, 1, 3, CAST(0x0000AB5800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (984, 1, 3, CAST(0x0000AB5900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (985, 1, 3, CAST(0x0000AB5A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (986, 1, 3, CAST(0x0000AB5B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (987, 1, 3, CAST(0x0000AB5C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (988, 1, 3, CAST(0x0000AB5D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (989, 1, 3, CAST(0x0000AB5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (990, 1, 3, CAST(0x0000AB5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (991, 1, 3, CAST(0x0000AB6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (992, 1, 3, CAST(0x0000AB6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (993, 1, 3, CAST(0x0000AB6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (994, 1, 3, CAST(0x0000AB6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (995, 1, 3, CAST(0x0000AB6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (996, 1, 3, CAST(0x0000AB6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (997, 1, 3, CAST(0x0000AB6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (998, 1, 3, CAST(0x0000AB6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (999, 1, 3, CAST(0x0000AB6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1000, 1, 3, CAST(0x0000AB6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1001, 1, 3, CAST(0x0000AB6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1002, 1, 3, CAST(0x0000AB6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1003, 1, 3, CAST(0x0000AB6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1004, 1, 3, CAST(0x0000AB6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1005, 1, 3, CAST(0x0000AB6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1006, 1, 3, CAST(0x0000AB6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1007, 1, 3, CAST(0x0000AB7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1008, 1, 3, CAST(0x0000AB7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1009, 1, 3, CAST(0x0000AB7200000000 AS DateTime))
GO
print 'Processed 1000 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1010, 1, 3, CAST(0x0000AB7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1011, 1, 3, CAST(0x0000AB7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1012, 1, 3, CAST(0x0000AB7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1013, 1, 3, CAST(0x0000AB7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1014, 1, 3, CAST(0x0000AB7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1015, 1, 3, CAST(0x0000AB7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1016, 1, 3, CAST(0x0000AB7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1017, 1, 3, CAST(0x0000AB7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1018, 1, 3, CAST(0x0000AB7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1019, 1, 3, CAST(0x0000AB7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1020, 1, 3, CAST(0x0000AB7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1021, 1, 3, CAST(0x0000AB7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1022, 1, 3, CAST(0x0000AB7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1023, 1, 3, CAST(0x0000AB8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1024, 1, 3, CAST(0x0000AB8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1025, 1, 3, CAST(0x0000AB8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1026, 1, 3, CAST(0x0000AB8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1027, 1, 3, CAST(0x0000AB8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1028, 1, 3, CAST(0x0000AB8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1029, 1, 3, CAST(0x0000AB8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1030, 1, 3, CAST(0x0000AB8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1031, 1, 3, CAST(0x0000AB8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1032, 1, 3, CAST(0x0000AB8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1033, 1, 3, CAST(0x0000AB8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1034, 1, 3, CAST(0x0000AB8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1035, 1, 3, CAST(0x0000AB8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1036, 1, 3, CAST(0x0000AB8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1037, 1, 3, CAST(0x0000AB8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1038, 1, 3, CAST(0x0000AB8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1039, 1, 3, CAST(0x0000AB9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1040, 1, 3, CAST(0x0000AB9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1041, 1, 3, CAST(0x0000AB9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1042, 1, 3, CAST(0x0000AB9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1043, 1, 3, CAST(0x0000AB9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1044, 1, 3, CAST(0x0000AB9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1045, 1, 3, CAST(0x0000AB9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1046, 1, 3, CAST(0x0000AB9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1047, 1, 3, CAST(0x0000AB9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1048, 1, 3, CAST(0x0000AB9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1049, 1, 3, CAST(0x0000AB9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1050, 1, 3, CAST(0x0000AB9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1051, 1, 3, CAST(0x0000AB9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1052, 1, 3, CAST(0x0000AB9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1053, 1, 3, CAST(0x0000AB9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1054, 1, 3, CAST(0x0000AB9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1055, 1, 3, CAST(0x0000ABA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1056, 1, 3, CAST(0x0000ABA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1057, 1, 3, CAST(0x0000ABA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1058, 1, 3, CAST(0x0000ABA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1059, 1, 3, CAST(0x0000ABA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1060, 1, 3, CAST(0x0000ABA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1061, 1, 3, CAST(0x0000ABA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1062, 1, 3, CAST(0x0000ABA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1063, 1, 3, CAST(0x0000ABA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1064, 1, 3, CAST(0x0000ABA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1065, 1, 3, CAST(0x0000ABAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1066, 1, 3, CAST(0x0000ABAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1067, 1, 3, CAST(0x0000ABAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1068, 1, 3, CAST(0x0000ABAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1069, 1, 3, CAST(0x0000ABAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1070, 1, 3, CAST(0x0000ABAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1071, 1, 3, CAST(0x0000ABB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1072, 1, 3, CAST(0x0000ABB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1073, 1, 3, CAST(0x0000ABB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1074, 1, 3, CAST(0x0000ABB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1075, 1, 3, CAST(0x0000ABB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1076, 1, 3, CAST(0x0000ABB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1077, 1, 3, CAST(0x0000ABB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1078, 1, 3, CAST(0x0000ABB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1079, 1, 3, CAST(0x0000ABB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1080, 1, 3, CAST(0x0000ABB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1081, 1, 3, CAST(0x0000ABBA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1082, 1, 3, CAST(0x0000ABBB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1083, 1, 3, CAST(0x0000ABBC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1084, 1, 3, CAST(0x0000ABBD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1085, 1, 3, CAST(0x0000ABBE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1086, 1, 3, CAST(0x0000ABBF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1087, 1, 3, CAST(0x0000ABC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1088, 1, 3, CAST(0x0000ABC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1089, 1, 3, CAST(0x0000ABC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1090, 1, 3, CAST(0x0000ABC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1091, 1, 3, CAST(0x0000ABC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1092, 1, 3, CAST(0x0000ABC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1093, 1, 3, CAST(0x0000ABC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1094, 1, 3, CAST(0x0000ABC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1095, 1, 3, CAST(0x0000ABC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1096, 1, 3, CAST(0x0000ABC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1097, 1, 3, CAST(0x0000ABCA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1098, 1, 3, CAST(0x0000ABCB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1099, 1, 4, CAST(0x0000AA5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1100, 1, 4, CAST(0x0000AA5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1101, 1, 4, CAST(0x0000AA6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1102, 1, 4, CAST(0x0000AA6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1103, 1, 4, CAST(0x0000AA6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1104, 1, 4, CAST(0x0000AA6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1105, 1, 4, CAST(0x0000AA6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1106, 1, 4, CAST(0x0000AA6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1107, 1, 4, CAST(0x0000AA6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1108, 1, 4, CAST(0x0000AA6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1109, 1, 4, CAST(0x0000AA6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1110, 1, 4, CAST(0x0000AA6900000000 AS DateTime))
GO
print 'Processed 1100 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1111, 1, 4, CAST(0x0000AA6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1112, 1, 4, CAST(0x0000AA6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1113, 1, 4, CAST(0x0000AA6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1114, 1, 4, CAST(0x0000AA6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1115, 1, 4, CAST(0x0000AA6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1116, 1, 4, CAST(0x0000AA6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1117, 1, 4, CAST(0x0000AA7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1118, 1, 4, CAST(0x0000AA7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1119, 1, 4, CAST(0x0000AA7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1120, 1, 4, CAST(0x0000AA7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1121, 1, 4, CAST(0x0000AA7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1122, 1, 4, CAST(0x0000AA7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1123, 1, 4, CAST(0x0000AA7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1124, 1, 4, CAST(0x0000AA7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1125, 1, 4, CAST(0x0000AA7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1126, 1, 4, CAST(0x0000AA7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1127, 1, 4, CAST(0x0000AA7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1128, 1, 4, CAST(0x0000AA7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1129, 1, 4, CAST(0x0000AA7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1130, 1, 4, CAST(0x0000AA7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1131, 1, 4, CAST(0x0000AA7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1132, 1, 4, CAST(0x0000AA7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1133, 1, 4, CAST(0x0000AA8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1134, 1, 4, CAST(0x0000AA8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1135, 1, 4, CAST(0x0000AA8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1136, 1, 4, CAST(0x0000AA8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1137, 1, 4, CAST(0x0000AA8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1138, 1, 4, CAST(0x0000AA8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1139, 1, 4, CAST(0x0000AA8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1140, 1, 4, CAST(0x0000AA8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1141, 1, 4, CAST(0x0000AA8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1142, 1, 4, CAST(0x0000AA8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1143, 1, 4, CAST(0x0000AA8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1144, 1, 4, CAST(0x0000AA8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1145, 1, 4, CAST(0x0000AA8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1146, 1, 4, CAST(0x0000AA8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1147, 1, 4, CAST(0x0000AA8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1148, 1, 4, CAST(0x0000AA8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1149, 1, 4, CAST(0x0000AA9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1150, 1, 4, CAST(0x0000AA9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1151, 1, 4, CAST(0x0000AA9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1152, 1, 4, CAST(0x0000AA9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1153, 1, 4, CAST(0x0000AA9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1154, 1, 4, CAST(0x0000AA9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1155, 1, 4, CAST(0x0000AA9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1156, 1, 4, CAST(0x0000AA9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1157, 1, 4, CAST(0x0000AA9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1158, 1, 4, CAST(0x0000AA9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1159, 1, 4, CAST(0x0000AA9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1160, 1, 4, CAST(0x0000AA9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1161, 1, 4, CAST(0x0000AA9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1162, 1, 4, CAST(0x0000AA9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1163, 1, 4, CAST(0x0000AA9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1164, 1, 4, CAST(0x0000AA9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1165, 1, 4, CAST(0x0000AAA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1166, 1, 4, CAST(0x0000AAA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1167, 1, 4, CAST(0x0000AAA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1168, 1, 4, CAST(0x0000AAA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1169, 1, 4, CAST(0x0000AAA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1170, 1, 4, CAST(0x0000AAA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1171, 1, 4, CAST(0x0000AAA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1172, 1, 4, CAST(0x0000AAA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1173, 1, 4, CAST(0x0000AAA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1174, 1, 4, CAST(0x0000AAA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1175, 1, 4, CAST(0x0000AAAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1176, 1, 4, CAST(0x0000AAAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1177, 1, 4, CAST(0x0000AAAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1178, 1, 4, CAST(0x0000AAAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1179, 1, 4, CAST(0x0000AAAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1180, 1, 4, CAST(0x0000AAAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1181, 1, 4, CAST(0x0000AAB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1182, 1, 4, CAST(0x0000AAB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1183, 1, 4, CAST(0x0000AAB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1184, 1, 4, CAST(0x0000AAB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1185, 1, 4, CAST(0x0000AAB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1186, 1, 4, CAST(0x0000AAB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1187, 1, 4, CAST(0x0000AAB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1188, 1, 4, CAST(0x0000AAB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1189, 1, 4, CAST(0x0000AAB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1190, 1, 4, CAST(0x0000AAB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1191, 1, 4, CAST(0x0000AABA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1192, 1, 4, CAST(0x0000AABB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1193, 1, 4, CAST(0x0000AABC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1194, 1, 4, CAST(0x0000AABD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1195, 1, 4, CAST(0x0000AABE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1196, 1, 4, CAST(0x0000AABF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1197, 1, 4, CAST(0x0000AAC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1198, 1, 4, CAST(0x0000AAC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1199, 1, 4, CAST(0x0000AAC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1200, 1, 4, CAST(0x0000AAC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1201, 1, 4, CAST(0x0000AAC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1202, 1, 4, CAST(0x0000AAC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1203, 1, 4, CAST(0x0000AAC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1204, 1, 4, CAST(0x0000AAC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1205, 1, 4, CAST(0x0000AAC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1206, 1, 4, CAST(0x0000AAC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1207, 1, 4, CAST(0x0000AACA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1208, 1, 4, CAST(0x0000AACB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1209, 1, 4, CAST(0x0000AACC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1210, 1, 4, CAST(0x0000AACD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1211, 1, 4, CAST(0x0000AACE00000000 AS DateTime))
GO
print 'Processed 1200 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1212, 1, 4, CAST(0x0000AACF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1213, 1, 4, CAST(0x0000AAD000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1214, 1, 4, CAST(0x0000AAD100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1215, 1, 4, CAST(0x0000AAD200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1216, 1, 4, CAST(0x0000AAD300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1217, 1, 4, CAST(0x0000AAD400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1218, 1, 4, CAST(0x0000AAD500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1219, 1, 4, CAST(0x0000AAD600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1220, 1, 4, CAST(0x0000AAD700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1221, 1, 4, CAST(0x0000AAD800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1222, 1, 4, CAST(0x0000AAD900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1223, 1, 4, CAST(0x0000AADA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1224, 1, 4, CAST(0x0000AADB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1225, 1, 4, CAST(0x0000AADC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1226, 1, 4, CAST(0x0000AADD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1227, 1, 4, CAST(0x0000AADE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1228, 1, 4, CAST(0x0000AADF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1229, 1, 4, CAST(0x0000AAE000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1230, 1, 4, CAST(0x0000AAE100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1231, 1, 4, CAST(0x0000AAE200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1232, 1, 4, CAST(0x0000AAE300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1233, 1, 4, CAST(0x0000AAE400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1234, 1, 4, CAST(0x0000AAE500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1235, 1, 4, CAST(0x0000AAE600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1236, 1, 4, CAST(0x0000AAE700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1237, 1, 4, CAST(0x0000AAE800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1238, 1, 4, CAST(0x0000AAE900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1239, 1, 4, CAST(0x0000AAEA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1240, 1, 4, CAST(0x0000AAEB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1241, 1, 4, CAST(0x0000AAEC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1242, 1, 4, CAST(0x0000AAED00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1243, 1, 4, CAST(0x0000AAEE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1244, 1, 4, CAST(0x0000AAEF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1245, 1, 4, CAST(0x0000AAF000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1246, 1, 4, CAST(0x0000AAF100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1247, 1, 4, CAST(0x0000AAF200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1248, 1, 4, CAST(0x0000AAF300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1249, 1, 4, CAST(0x0000AAF400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1250, 1, 4, CAST(0x0000AAF500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1251, 1, 4, CAST(0x0000AAF600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1252, 1, 4, CAST(0x0000AAF700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1253, 1, 4, CAST(0x0000AAF800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1254, 1, 4, CAST(0x0000AAF900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1255, 1, 4, CAST(0x0000AAFA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1256, 1, 4, CAST(0x0000AAFB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1257, 1, 4, CAST(0x0000AAFC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1258, 1, 4, CAST(0x0000AAFD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1259, 1, 4, CAST(0x0000AAFE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1260, 1, 4, CAST(0x0000AAFF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1261, 1, 4, CAST(0x0000AB0000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1262, 1, 4, CAST(0x0000AB0100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1263, 1, 4, CAST(0x0000AB0200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1264, 1, 4, CAST(0x0000AB0300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1265, 1, 4, CAST(0x0000AB0400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1266, 1, 4, CAST(0x0000AB0500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1267, 1, 4, CAST(0x0000AB0600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1268, 1, 4, CAST(0x0000AB0700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1269, 1, 4, CAST(0x0000AB0800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1270, 1, 4, CAST(0x0000AB0900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1271, 1, 4, CAST(0x0000AB0A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1272, 1, 4, CAST(0x0000AB0B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1273, 1, 4, CAST(0x0000AB0C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1274, 1, 4, CAST(0x0000AB0D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1275, 1, 4, CAST(0x0000AB0E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1276, 1, 4, CAST(0x0000AB0F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1277, 1, 4, CAST(0x0000AB1000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1278, 1, 4, CAST(0x0000AB1100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1279, 1, 4, CAST(0x0000AB1200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1280, 1, 4, CAST(0x0000AB1300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1281, 1, 4, CAST(0x0000AB1400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1282, 1, 4, CAST(0x0000AB1500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1283, 1, 4, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1284, 1, 4, CAST(0x0000AB1700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1285, 1, 4, CAST(0x0000AB1800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1286, 1, 4, CAST(0x0000AB1900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1287, 1, 4, CAST(0x0000AB1A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1288, 1, 4, CAST(0x0000AB1B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1289, 1, 4, CAST(0x0000AB1C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1290, 1, 4, CAST(0x0000AB1D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1291, 1, 4, CAST(0x0000AB1E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1292, 1, 4, CAST(0x0000AB1F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1293, 1, 4, CAST(0x0000AB2000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1294, 1, 4, CAST(0x0000AB2100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1295, 1, 4, CAST(0x0000AB2200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1296, 1, 4, CAST(0x0000AB2300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1297, 1, 4, CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1298, 1, 4, CAST(0x0000AB2500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1299, 1, 4, CAST(0x0000AB2600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1300, 1, 4, CAST(0x0000AB2700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1301, 1, 4, CAST(0x0000AB2800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1302, 1, 4, CAST(0x0000AB2900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1303, 1, 4, CAST(0x0000AB2A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1304, 1, 4, CAST(0x0000AB2B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1305, 1, 4, CAST(0x0000AB2C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1306, 1, 4, CAST(0x0000AB2D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1307, 1, 4, CAST(0x0000AB2E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1308, 1, 4, CAST(0x0000AB2F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1309, 1, 4, CAST(0x0000AB3000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1310, 1, 4, CAST(0x0000AB3100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1311, 1, 4, CAST(0x0000AB3200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1312, 1, 4, CAST(0x0000AB3300000000 AS DateTime))
GO
print 'Processed 1300 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1313, 1, 4, CAST(0x0000AB3400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1314, 1, 4, CAST(0x0000AB3500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1315, 1, 4, CAST(0x0000AB3600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1316, 1, 4, CAST(0x0000AB3700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1317, 1, 4, CAST(0x0000AB3800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1318, 1, 4, CAST(0x0000AB3900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1319, 1, 4, CAST(0x0000AB3A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1320, 1, 4, CAST(0x0000AB3B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1321, 1, 4, CAST(0x0000AB3C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1322, 1, 4, CAST(0x0000AB3D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1323, 1, 4, CAST(0x0000AB3E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1324, 1, 4, CAST(0x0000AB3F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1325, 1, 4, CAST(0x0000AB4000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1326, 1, 4, CAST(0x0000AB4100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1327, 1, 4, CAST(0x0000AB4200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1328, 1, 4, CAST(0x0000AB4300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1329, 1, 4, CAST(0x0000AB4400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1330, 1, 4, CAST(0x0000AB4500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1331, 1, 4, CAST(0x0000AB4600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1332, 1, 4, CAST(0x0000AB4700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1333, 1, 4, CAST(0x0000AB4800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1334, 1, 4, CAST(0x0000AB4900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1335, 1, 4, CAST(0x0000AB4A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1336, 1, 4, CAST(0x0000AB4B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1337, 1, 4, CAST(0x0000AB4C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1338, 1, 4, CAST(0x0000AB4D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1339, 1, 4, CAST(0x0000AB4E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1340, 1, 4, CAST(0x0000AB4F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1341, 1, 4, CAST(0x0000AB5000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1342, 1, 4, CAST(0x0000AB5100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1343, 1, 4, CAST(0x0000AB5200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1344, 1, 4, CAST(0x0000AB5300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1345, 1, 4, CAST(0x0000AB5400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1346, 1, 4, CAST(0x0000AB5500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1347, 1, 4, CAST(0x0000AB5600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1348, 1, 4, CAST(0x0000AB5700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1349, 1, 4, CAST(0x0000AB5800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1350, 1, 4, CAST(0x0000AB5900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1351, 1, 4, CAST(0x0000AB5A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1352, 1, 4, CAST(0x0000AB5B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1353, 1, 4, CAST(0x0000AB5C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1354, 1, 4, CAST(0x0000AB5D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1355, 1, 4, CAST(0x0000AB5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1356, 1, 4, CAST(0x0000AB5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1357, 1, 4, CAST(0x0000AB6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1358, 1, 4, CAST(0x0000AB6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1359, 1, 4, CAST(0x0000AB6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1360, 1, 4, CAST(0x0000AB6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1361, 1, 4, CAST(0x0000AB6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1362, 1, 4, CAST(0x0000AB6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1363, 1, 4, CAST(0x0000AB6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1364, 1, 4, CAST(0x0000AB6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1365, 1, 4, CAST(0x0000AB6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1366, 1, 4, CAST(0x0000AB6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1367, 1, 4, CAST(0x0000AB6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1368, 1, 4, CAST(0x0000AB6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1369, 1, 4, CAST(0x0000AB6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1370, 1, 4, CAST(0x0000AB6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1371, 1, 4, CAST(0x0000AB6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1372, 1, 4, CAST(0x0000AB6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1373, 1, 4, CAST(0x0000AB7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1374, 1, 4, CAST(0x0000AB7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1375, 1, 4, CAST(0x0000AB7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1376, 1, 4, CAST(0x0000AB7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1377, 1, 4, CAST(0x0000AB7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1378, 1, 4, CAST(0x0000AB7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1379, 1, 4, CAST(0x0000AB7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1380, 1, 4, CAST(0x0000AB7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1381, 1, 4, CAST(0x0000AB7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1382, 1, 4, CAST(0x0000AB7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1383, 1, 4, CAST(0x0000AB7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1384, 1, 4, CAST(0x0000AB7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1385, 1, 4, CAST(0x0000AB7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1386, 1, 4, CAST(0x0000AB7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1387, 1, 4, CAST(0x0000AB7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1388, 1, 4, CAST(0x0000AB7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1389, 1, 4, CAST(0x0000AB8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1390, 1, 4, CAST(0x0000AB8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1391, 1, 4, CAST(0x0000AB8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1392, 1, 4, CAST(0x0000AB8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1393, 1, 4, CAST(0x0000AB8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1394, 1, 4, CAST(0x0000AB8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1395, 1, 4, CAST(0x0000AB8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1396, 1, 4, CAST(0x0000AB8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1397, 1, 4, CAST(0x0000AB8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1398, 1, 4, CAST(0x0000AB8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1399, 1, 4, CAST(0x0000AB8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1400, 1, 4, CAST(0x0000AB8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1401, 1, 4, CAST(0x0000AB8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1402, 1, 4, CAST(0x0000AB8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1403, 1, 4, CAST(0x0000AB8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1404, 1, 4, CAST(0x0000AB8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1405, 1, 4, CAST(0x0000AB9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1406, 1, 4, CAST(0x0000AB9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1407, 1, 4, CAST(0x0000AB9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1408, 1, 4, CAST(0x0000AB9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1409, 1, 4, CAST(0x0000AB9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1410, 1, 4, CAST(0x0000AB9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1411, 1, 4, CAST(0x0000AB9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1412, 1, 4, CAST(0x0000AB9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1413, 1, 4, CAST(0x0000AB9800000000 AS DateTime))
GO
print 'Processed 1400 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1414, 1, 4, CAST(0x0000AB9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1415, 1, 4, CAST(0x0000AB9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1416, 1, 4, CAST(0x0000AB9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1417, 1, 4, CAST(0x0000AB9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1418, 1, 4, CAST(0x0000AB9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1419, 1, 4, CAST(0x0000AB9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1420, 1, 4, CAST(0x0000AB9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1421, 1, 4, CAST(0x0000ABA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1422, 1, 4, CAST(0x0000ABA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1423, 1, 4, CAST(0x0000ABA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1424, 1, 4, CAST(0x0000ABA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1425, 1, 4, CAST(0x0000ABA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1426, 1, 4, CAST(0x0000ABA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1427, 1, 4, CAST(0x0000ABA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1428, 1, 4, CAST(0x0000ABA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1429, 1, 4, CAST(0x0000ABA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1430, 1, 4, CAST(0x0000ABA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1431, 1, 4, CAST(0x0000ABAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1432, 1, 4, CAST(0x0000ABAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1433, 1, 4, CAST(0x0000ABAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1434, 1, 4, CAST(0x0000ABAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1435, 1, 4, CAST(0x0000ABAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1436, 1, 4, CAST(0x0000ABAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1437, 1, 4, CAST(0x0000ABB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1438, 1, 4, CAST(0x0000ABB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1439, 1, 4, CAST(0x0000ABB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1440, 1, 4, CAST(0x0000ABB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1441, 1, 4, CAST(0x0000ABB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1442, 1, 4, CAST(0x0000ABB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1443, 1, 4, CAST(0x0000ABB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1444, 1, 4, CAST(0x0000ABB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1445, 1, 4, CAST(0x0000ABB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1446, 1, 4, CAST(0x0000ABB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1447, 1, 4, CAST(0x0000ABBA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1448, 1, 4, CAST(0x0000ABBB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1449, 1, 4, CAST(0x0000ABBC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1450, 1, 4, CAST(0x0000ABBD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1451, 1, 4, CAST(0x0000ABBE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1452, 1, 4, CAST(0x0000ABBF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1453, 1, 4, CAST(0x0000ABC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1454, 1, 4, CAST(0x0000ABC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1455, 1, 4, CAST(0x0000ABC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1456, 1, 4, CAST(0x0000ABC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1457, 1, 4, CAST(0x0000ABC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1458, 1, 4, CAST(0x0000ABC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1459, 1, 4, CAST(0x0000ABC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1460, 1, 4, CAST(0x0000ABC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1461, 1, 4, CAST(0x0000ABC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1462, 1, 4, CAST(0x0000ABC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1463, 1, 4, CAST(0x0000ABCA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1464, 1, 4, CAST(0x0000ABCB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1465, 1, 5, CAST(0x0000AA5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1466, 1, 5, CAST(0x0000AA5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1467, 1, 5, CAST(0x0000AA6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1468, 1, 5, CAST(0x0000AA6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1469, 1, 5, CAST(0x0000AA6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1470, 1, 5, CAST(0x0000AA6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1471, 1, 5, CAST(0x0000AA6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1472, 1, 5, CAST(0x0000AA6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1473, 1, 5, CAST(0x0000AA6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1474, 1, 5, CAST(0x0000AA6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1475, 1, 5, CAST(0x0000AA6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1476, 1, 5, CAST(0x0000AA6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1477, 1, 5, CAST(0x0000AA6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1478, 1, 5, CAST(0x0000AA6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1479, 1, 5, CAST(0x0000AA6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1480, 1, 5, CAST(0x0000AA6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1481, 1, 5, CAST(0x0000AA6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1482, 1, 5, CAST(0x0000AA6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1483, 1, 5, CAST(0x0000AA7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1484, 1, 5, CAST(0x0000AA7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1485, 1, 5, CAST(0x0000AA7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1486, 1, 5, CAST(0x0000AA7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1487, 1, 5, CAST(0x0000AA7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1488, 1, 5, CAST(0x0000AA7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1489, 1, 5, CAST(0x0000AA7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1490, 1, 5, CAST(0x0000AA7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1491, 1, 5, CAST(0x0000AA7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1492, 1, 5, CAST(0x0000AA7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1493, 1, 5, CAST(0x0000AA7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1494, 1, 5, CAST(0x0000AA7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1495, 1, 5, CAST(0x0000AA7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1496, 1, 5, CAST(0x0000AA7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1497, 1, 5, CAST(0x0000AA7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1498, 1, 5, CAST(0x0000AA7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1499, 1, 5, CAST(0x0000AA8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1500, 1, 5, CAST(0x0000AA8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1501, 1, 5, CAST(0x0000AA8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1502, 1, 5, CAST(0x0000AA8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1503, 1, 5, CAST(0x0000AA8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1504, 1, 5, CAST(0x0000AA8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1505, 1, 5, CAST(0x0000AA8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1506, 1, 5, CAST(0x0000AA8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1507, 1, 5, CAST(0x0000AA8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1508, 1, 5, CAST(0x0000AA8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1509, 1, 5, CAST(0x0000AA8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1510, 1, 5, CAST(0x0000AA8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1511, 1, 5, CAST(0x0000AA8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1512, 1, 5, CAST(0x0000AA8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1513, 1, 5, CAST(0x0000AA8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1514, 1, 5, CAST(0x0000AA8F00000000 AS DateTime))
GO
print 'Processed 1500 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1515, 1, 5, CAST(0x0000AA9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1516, 1, 5, CAST(0x0000AA9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1517, 1, 5, CAST(0x0000AA9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1518, 1, 5, CAST(0x0000AA9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1519, 1, 5, CAST(0x0000AA9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1520, 1, 5, CAST(0x0000AA9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1521, 1, 5, CAST(0x0000AA9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1522, 1, 5, CAST(0x0000AA9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1523, 1, 5, CAST(0x0000AA9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1524, 1, 5, CAST(0x0000AA9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1525, 1, 5, CAST(0x0000AA9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1526, 1, 5, CAST(0x0000AA9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1527, 1, 5, CAST(0x0000AA9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1528, 1, 5, CAST(0x0000AA9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1529, 1, 5, CAST(0x0000AA9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1530, 1, 5, CAST(0x0000AA9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1531, 1, 5, CAST(0x0000AAA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1532, 1, 5, CAST(0x0000AAA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1533, 1, 5, CAST(0x0000AAA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1534, 1, 5, CAST(0x0000AAA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1535, 1, 5, CAST(0x0000AAA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1536, 1, 5, CAST(0x0000AAA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1537, 1, 5, CAST(0x0000AAA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1538, 1, 5, CAST(0x0000AAA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1539, 1, 5, CAST(0x0000AAA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1540, 1, 5, CAST(0x0000AAA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1541, 1, 5, CAST(0x0000AAAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1542, 1, 5, CAST(0x0000AAAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1543, 1, 5, CAST(0x0000AAAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1544, 1, 5, CAST(0x0000AAAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1545, 1, 5, CAST(0x0000AAAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1546, 1, 5, CAST(0x0000AAAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1547, 1, 5, CAST(0x0000AAB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1548, 1, 5, CAST(0x0000AAB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1549, 1, 5, CAST(0x0000AAB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1550, 1, 5, CAST(0x0000AAB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1551, 1, 5, CAST(0x0000AAB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1552, 1, 5, CAST(0x0000AAB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1553, 1, 5, CAST(0x0000AAB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1554, 1, 5, CAST(0x0000AAB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1555, 1, 5, CAST(0x0000AAB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1556, 1, 5, CAST(0x0000AAB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1557, 1, 5, CAST(0x0000AABA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1558, 1, 5, CAST(0x0000AABB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1559, 1, 5, CAST(0x0000AABC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1560, 1, 5, CAST(0x0000AABD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1561, 1, 5, CAST(0x0000AABE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1562, 1, 5, CAST(0x0000AABF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1563, 1, 5, CAST(0x0000AAC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1564, 1, 5, CAST(0x0000AAC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1565, 1, 5, CAST(0x0000AAC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1566, 1, 5, CAST(0x0000AAC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1567, 1, 5, CAST(0x0000AAC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1568, 1, 5, CAST(0x0000AAC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1569, 1, 5, CAST(0x0000AAC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1570, 1, 5, CAST(0x0000AAC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1571, 1, 5, CAST(0x0000AAC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1572, 1, 5, CAST(0x0000AAC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1573, 1, 5, CAST(0x0000AACA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1574, 1, 5, CAST(0x0000AACB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1575, 1, 5, CAST(0x0000AACC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1576, 1, 5, CAST(0x0000AACD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1577, 1, 5, CAST(0x0000AACE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1578, 1, 5, CAST(0x0000AACF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1579, 1, 5, CAST(0x0000AAD000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1580, 1, 5, CAST(0x0000AAD100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1581, 1, 5, CAST(0x0000AAD200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1582, 1, 5, CAST(0x0000AAD300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1583, 1, 5, CAST(0x0000AAD400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1584, 1, 5, CAST(0x0000AAD500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1585, 1, 5, CAST(0x0000AAD600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1586, 1, 5, CAST(0x0000AAD700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1587, 1, 5, CAST(0x0000AAD800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1588, 1, 5, CAST(0x0000AAD900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1589, 1, 5, CAST(0x0000AADA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1590, 1, 5, CAST(0x0000AADB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1591, 1, 5, CAST(0x0000AADC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1592, 1, 5, CAST(0x0000AADD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1593, 1, 5, CAST(0x0000AADE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1594, 1, 5, CAST(0x0000AADF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1595, 1, 5, CAST(0x0000AAE000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1596, 1, 5, CAST(0x0000AAE100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1597, 1, 5, CAST(0x0000AAE200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1598, 1, 5, CAST(0x0000AAE300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1599, 1, 5, CAST(0x0000AAE400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1600, 1, 5, CAST(0x0000AAE500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1601, 1, 5, CAST(0x0000AAE600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1602, 1, 5, CAST(0x0000AAE700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1603, 1, 5, CAST(0x0000AAE800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1604, 1, 5, CAST(0x0000AAE900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1605, 1, 5, CAST(0x0000AAEA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1606, 1, 5, CAST(0x0000AAEB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1607, 1, 5, CAST(0x0000AAEC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1608, 1, 5, CAST(0x0000AAED00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1609, 1, 5, CAST(0x0000AAEE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1610, 1, 5, CAST(0x0000AAEF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1611, 1, 5, CAST(0x0000AAF000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1612, 1, 5, CAST(0x0000AAF100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1613, 1, 5, CAST(0x0000AAF200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1614, 1, 5, CAST(0x0000AAF300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1615, 1, 5, CAST(0x0000AAF400000000 AS DateTime))
GO
print 'Processed 1600 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1616, 1, 5, CAST(0x0000AAF500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1617, 1, 5, CAST(0x0000AAF600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1618, 1, 5, CAST(0x0000AAF700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1619, 1, 5, CAST(0x0000AAF800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1620, 1, 5, CAST(0x0000AAF900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1621, 1, 5, CAST(0x0000AAFA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1622, 1, 5, CAST(0x0000AAFB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1623, 1, 5, CAST(0x0000AAFC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1624, 1, 5, CAST(0x0000AAFD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1625, 1, 5, CAST(0x0000AAFE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1626, 1, 5, CAST(0x0000AAFF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1627, 1, 5, CAST(0x0000AB0000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1628, 1, 5, CAST(0x0000AB0100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1629, 1, 5, CAST(0x0000AB0200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1630, 1, 5, CAST(0x0000AB0300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1631, 1, 5, CAST(0x0000AB0400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1632, 1, 5, CAST(0x0000AB0500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1633, 1, 5, CAST(0x0000AB0600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1634, 1, 5, CAST(0x0000AB0700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1635, 1, 5, CAST(0x0000AB0800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1636, 1, 5, CAST(0x0000AB0900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1637, 1, 5, CAST(0x0000AB0A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1638, 1, 5, CAST(0x0000AB0B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1639, 1, 5, CAST(0x0000AB0C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1640, 1, 5, CAST(0x0000AB0D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1641, 1, 5, CAST(0x0000AB0E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1642, 1, 5, CAST(0x0000AB0F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1643, 1, 5, CAST(0x0000AB1000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1644, 1, 5, CAST(0x0000AB1100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1645, 1, 5, CAST(0x0000AB1200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1646, 1, 5, CAST(0x0000AB1300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1647, 1, 5, CAST(0x0000AB1400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1648, 1, 5, CAST(0x0000AB1500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1649, 1, 5, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1650, 1, 5, CAST(0x0000AB1700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1651, 1, 5, CAST(0x0000AB1800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1652, 1, 5, CAST(0x0000AB1900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1653, 1, 5, CAST(0x0000AB1A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1654, 1, 5, CAST(0x0000AB1B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1655, 1, 5, CAST(0x0000AB1C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1656, 1, 5, CAST(0x0000AB1D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1657, 1, 5, CAST(0x0000AB1E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1658, 1, 5, CAST(0x0000AB1F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1659, 1, 5, CAST(0x0000AB2000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1660, 1, 5, CAST(0x0000AB2100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1661, 1, 5, CAST(0x0000AB2200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1662, 1, 5, CAST(0x0000AB2300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1663, 1, 5, CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1664, 1, 5, CAST(0x0000AB2500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1665, 1, 5, CAST(0x0000AB2600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1666, 1, 5, CAST(0x0000AB2700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1667, 1, 5, CAST(0x0000AB2800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1668, 1, 5, CAST(0x0000AB2900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1669, 1, 5, CAST(0x0000AB2A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1670, 1, 5, CAST(0x0000AB2B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1671, 1, 5, CAST(0x0000AB2C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1672, 1, 5, CAST(0x0000AB2D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1673, 1, 5, CAST(0x0000AB2E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1674, 1, 5, CAST(0x0000AB2F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1675, 1, 5, CAST(0x0000AB3000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1676, 1, 5, CAST(0x0000AB3100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1677, 1, 5, CAST(0x0000AB3200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1678, 1, 5, CAST(0x0000AB3300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1679, 1, 5, CAST(0x0000AB3400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1680, 1, 5, CAST(0x0000AB3500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1681, 1, 5, CAST(0x0000AB3600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1682, 1, 5, CAST(0x0000AB3700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1683, 1, 5, CAST(0x0000AB3800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1684, 1, 5, CAST(0x0000AB3900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1685, 1, 5, CAST(0x0000AB3A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1686, 1, 5, CAST(0x0000AB3B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1687, 1, 5, CAST(0x0000AB3C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1688, 1, 5, CAST(0x0000AB3D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1689, 1, 5, CAST(0x0000AB3E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1690, 1, 5, CAST(0x0000AB3F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1691, 1, 5, CAST(0x0000AB4000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1692, 1, 5, CAST(0x0000AB4100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1693, 1, 5, CAST(0x0000AB4200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1694, 1, 5, CAST(0x0000AB4300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1695, 1, 5, CAST(0x0000AB4400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1696, 1, 5, CAST(0x0000AB4500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1697, 1, 5, CAST(0x0000AB4600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1698, 1, 5, CAST(0x0000AB4700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1699, 1, 5, CAST(0x0000AB4800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1700, 1, 5, CAST(0x0000AB4900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1701, 1, 5, CAST(0x0000AB4A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1702, 1, 5, CAST(0x0000AB4B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1703, 1, 5, CAST(0x0000AB4C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1704, 1, 5, CAST(0x0000AB4D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1705, 1, 5, CAST(0x0000AB4E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1706, 1, 5, CAST(0x0000AB4F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1707, 1, 5, CAST(0x0000AB5000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1708, 1, 5, CAST(0x0000AB5100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1709, 1, 5, CAST(0x0000AB5200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1710, 1, 5, CAST(0x0000AB5300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1711, 1, 5, CAST(0x0000AB5400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1712, 1, 5, CAST(0x0000AB5500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1713, 1, 5, CAST(0x0000AB5600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1714, 1, 5, CAST(0x0000AB5700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1715, 1, 5, CAST(0x0000AB5800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1716, 1, 5, CAST(0x0000AB5900000000 AS DateTime))
GO
print 'Processed 1700 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1717, 1, 5, CAST(0x0000AB5A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1718, 1, 5, CAST(0x0000AB5B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1719, 1, 5, CAST(0x0000AB5C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1720, 1, 5, CAST(0x0000AB5D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1721, 1, 5, CAST(0x0000AB5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1722, 1, 5, CAST(0x0000AB5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1723, 1, 5, CAST(0x0000AB6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1724, 1, 5, CAST(0x0000AB6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1725, 1, 5, CAST(0x0000AB6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1726, 1, 5, CAST(0x0000AB6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1727, 1, 5, CAST(0x0000AB6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1728, 1, 5, CAST(0x0000AB6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1729, 1, 5, CAST(0x0000AB6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1730, 1, 5, CAST(0x0000AB6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1731, 1, 5, CAST(0x0000AB6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1732, 1, 5, CAST(0x0000AB6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1733, 1, 5, CAST(0x0000AB6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1734, 1, 5, CAST(0x0000AB6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1735, 1, 5, CAST(0x0000AB6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1736, 1, 5, CAST(0x0000AB6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1737, 1, 5, CAST(0x0000AB6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1738, 1, 5, CAST(0x0000AB6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1739, 1, 5, CAST(0x0000AB7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1740, 1, 5, CAST(0x0000AB7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1741, 1, 5, CAST(0x0000AB7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1742, 1, 5, CAST(0x0000AB7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1743, 1, 5, CAST(0x0000AB7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1744, 1, 5, CAST(0x0000AB7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1745, 1, 5, CAST(0x0000AB7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1746, 1, 5, CAST(0x0000AB7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1747, 1, 5, CAST(0x0000AB7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1748, 1, 5, CAST(0x0000AB7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1749, 1, 5, CAST(0x0000AB7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1750, 1, 5, CAST(0x0000AB7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1751, 1, 5, CAST(0x0000AB7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1752, 1, 5, CAST(0x0000AB7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1753, 1, 5, CAST(0x0000AB7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1754, 1, 5, CAST(0x0000AB7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1755, 1, 5, CAST(0x0000AB8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1756, 1, 5, CAST(0x0000AB8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1757, 1, 5, CAST(0x0000AB8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1758, 1, 5, CAST(0x0000AB8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1759, 1, 5, CAST(0x0000AB8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1760, 1, 5, CAST(0x0000AB8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1761, 1, 5, CAST(0x0000AB8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1762, 1, 5, CAST(0x0000AB8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1763, 1, 5, CAST(0x0000AB8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1764, 1, 5, CAST(0x0000AB8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1765, 1, 5, CAST(0x0000AB8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1766, 1, 5, CAST(0x0000AB8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1767, 1, 5, CAST(0x0000AB8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1768, 1, 5, CAST(0x0000AB8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1769, 1, 5, CAST(0x0000AB8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1770, 1, 5, CAST(0x0000AB8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1771, 1, 5, CAST(0x0000AB9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1772, 1, 5, CAST(0x0000AB9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1773, 1, 5, CAST(0x0000AB9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1774, 1, 5, CAST(0x0000AB9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1775, 1, 5, CAST(0x0000AB9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1776, 1, 5, CAST(0x0000AB9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1777, 1, 5, CAST(0x0000AB9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1778, 1, 5, CAST(0x0000AB9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1779, 1, 5, CAST(0x0000AB9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1780, 1, 5, CAST(0x0000AB9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1781, 1, 5, CAST(0x0000AB9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1782, 1, 5, CAST(0x0000AB9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1783, 1, 5, CAST(0x0000AB9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1784, 1, 5, CAST(0x0000AB9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1785, 1, 5, CAST(0x0000AB9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1786, 1, 5, CAST(0x0000AB9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1787, 1, 5, CAST(0x0000ABA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1788, 1, 5, CAST(0x0000ABA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1789, 1, 5, CAST(0x0000ABA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1790, 1, 5, CAST(0x0000ABA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1791, 1, 5, CAST(0x0000ABA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1792, 1, 5, CAST(0x0000ABA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1793, 1, 5, CAST(0x0000ABA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1794, 1, 5, CAST(0x0000ABA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1795, 1, 5, CAST(0x0000ABA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1796, 1, 5, CAST(0x0000ABA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1797, 1, 5, CAST(0x0000ABAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1798, 1, 5, CAST(0x0000ABAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1799, 1, 5, CAST(0x0000ABAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1800, 1, 5, CAST(0x0000ABAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1801, 1, 5, CAST(0x0000ABAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1802, 1, 5, CAST(0x0000ABAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1803, 1, 5, CAST(0x0000ABB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1804, 1, 5, CAST(0x0000ABB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1805, 1, 5, CAST(0x0000ABB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1806, 1, 5, CAST(0x0000ABB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1807, 1, 5, CAST(0x0000ABB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1808, 1, 5, CAST(0x0000ABB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1809, 1, 5, CAST(0x0000ABB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1810, 1, 5, CAST(0x0000ABB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1811, 1, 5, CAST(0x0000ABB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1812, 1, 5, CAST(0x0000ABB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1813, 1, 5, CAST(0x0000ABBA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1814, 1, 5, CAST(0x0000ABBB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1815, 1, 5, CAST(0x0000ABBC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1816, 1, 5, CAST(0x0000ABBD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1817, 1, 5, CAST(0x0000ABBE00000000 AS DateTime))
GO
print 'Processed 1800 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1818, 1, 5, CAST(0x0000ABBF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1819, 1, 5, CAST(0x0000ABC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1820, 1, 5, CAST(0x0000ABC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1821, 1, 5, CAST(0x0000ABC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1822, 1, 5, CAST(0x0000ABC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1823, 1, 5, CAST(0x0000ABC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1824, 1, 5, CAST(0x0000ABC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1825, 1, 5, CAST(0x0000ABC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1826, 1, 5, CAST(0x0000ABC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1827, 1, 5, CAST(0x0000ABC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1828, 1, 5, CAST(0x0000ABC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1829, 1, 5, CAST(0x0000ABCA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1830, 1, 5, CAST(0x0000ABCB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1831, 1, 6, CAST(0x0000AA5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1832, 1, 6, CAST(0x0000AA5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1833, 1, 6, CAST(0x0000AA6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1834, 1, 6, CAST(0x0000AA6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1835, 1, 6, CAST(0x0000AA6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1836, 1, 6, CAST(0x0000AA6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1837, 1, 6, CAST(0x0000AA6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1838, 1, 6, CAST(0x0000AA6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1839, 1, 6, CAST(0x0000AA6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1840, 1, 6, CAST(0x0000AA6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1841, 1, 6, CAST(0x0000AA6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1842, 1, 6, CAST(0x0000AA6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1843, 1, 6, CAST(0x0000AA6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1844, 1, 6, CAST(0x0000AA6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1845, 1, 6, CAST(0x0000AA6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1846, 1, 6, CAST(0x0000AA6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1847, 1, 6, CAST(0x0000AA6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1848, 1, 6, CAST(0x0000AA6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1849, 1, 6, CAST(0x0000AA7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1850, 1, 6, CAST(0x0000AA7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1851, 1, 6, CAST(0x0000AA7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1852, 1, 6, CAST(0x0000AA7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1853, 1, 6, CAST(0x0000AA7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1854, 1, 6, CAST(0x0000AA7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1855, 1, 6, CAST(0x0000AA7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1856, 1, 6, CAST(0x0000AA7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1857, 1, 6, CAST(0x0000AA7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1858, 1, 6, CAST(0x0000AA7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1859, 1, 6, CAST(0x0000AA7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1860, 1, 6, CAST(0x0000AA7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1861, 1, 6, CAST(0x0000AA7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1862, 1, 6, CAST(0x0000AA7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1863, 1, 6, CAST(0x0000AA7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1864, 1, 6, CAST(0x0000AA7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1865, 1, 6, CAST(0x0000AA8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1866, 1, 6, CAST(0x0000AA8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1867, 1, 6, CAST(0x0000AA8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1868, 1, 6, CAST(0x0000AA8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1869, 1, 6, CAST(0x0000AA8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1870, 1, 6, CAST(0x0000AA8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1871, 1, 6, CAST(0x0000AA8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1872, 1, 6, CAST(0x0000AA8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1873, 1, 6, CAST(0x0000AA8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1874, 1, 6, CAST(0x0000AA8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1875, 1, 6, CAST(0x0000AA8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1876, 1, 6, CAST(0x0000AA8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1877, 1, 6, CAST(0x0000AA8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1878, 1, 6, CAST(0x0000AA8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1879, 1, 6, CAST(0x0000AA8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1880, 1, 6, CAST(0x0000AA8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1881, 1, 6, CAST(0x0000AA9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1882, 1, 6, CAST(0x0000AA9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1883, 1, 6, CAST(0x0000AA9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1884, 1, 6, CAST(0x0000AA9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1885, 1, 6, CAST(0x0000AA9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1886, 1, 6, CAST(0x0000AA9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1887, 1, 6, CAST(0x0000AA9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1888, 1, 6, CAST(0x0000AA9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1889, 1, 6, CAST(0x0000AA9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1890, 1, 6, CAST(0x0000AA9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1891, 1, 6, CAST(0x0000AA9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1892, 1, 6, CAST(0x0000AA9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1893, 1, 6, CAST(0x0000AA9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1894, 1, 6, CAST(0x0000AA9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1895, 1, 6, CAST(0x0000AA9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1896, 1, 6, CAST(0x0000AA9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1897, 1, 6, CAST(0x0000AAA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1898, 1, 6, CAST(0x0000AAA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1899, 1, 6, CAST(0x0000AAA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1900, 1, 6, CAST(0x0000AAA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1901, 1, 6, CAST(0x0000AAA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1902, 1, 6, CAST(0x0000AAA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1903, 1, 6, CAST(0x0000AAA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1904, 1, 6, CAST(0x0000AAA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1905, 1, 6, CAST(0x0000AAA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1906, 1, 6, CAST(0x0000AAA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1907, 1, 6, CAST(0x0000AAAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1908, 1, 6, CAST(0x0000AAAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1909, 1, 6, CAST(0x0000AAAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1910, 1, 6, CAST(0x0000AAAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1911, 1, 6, CAST(0x0000AAAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1912, 1, 6, CAST(0x0000AAAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1913, 1, 6, CAST(0x0000AAB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1914, 1, 6, CAST(0x0000AAB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1915, 1, 6, CAST(0x0000AAB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1916, 1, 6, CAST(0x0000AAB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1917, 1, 6, CAST(0x0000AAB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1918, 1, 6, CAST(0x0000AAB500000000 AS DateTime))
GO
print 'Processed 1900 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1919, 1, 6, CAST(0x0000AAB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1920, 1, 6, CAST(0x0000AAB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1921, 1, 6, CAST(0x0000AAB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1922, 1, 6, CAST(0x0000AAB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1923, 1, 6, CAST(0x0000AABA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1924, 1, 6, CAST(0x0000AABB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1925, 1, 6, CAST(0x0000AABC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1926, 1, 6, CAST(0x0000AABD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1927, 1, 6, CAST(0x0000AABE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1928, 1, 6, CAST(0x0000AABF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1929, 1, 6, CAST(0x0000AAC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1930, 1, 6, CAST(0x0000AAC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1931, 1, 6, CAST(0x0000AAC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1932, 1, 6, CAST(0x0000AAC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1933, 1, 6, CAST(0x0000AAC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1934, 1, 6, CAST(0x0000AAC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1935, 1, 6, CAST(0x0000AAC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1936, 1, 6, CAST(0x0000AAC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1937, 1, 6, CAST(0x0000AAC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1938, 1, 6, CAST(0x0000AAC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1939, 1, 6, CAST(0x0000AACA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1940, 1, 6, CAST(0x0000AACB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1941, 1, 6, CAST(0x0000AACC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1942, 1, 6, CAST(0x0000AACD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1943, 1, 6, CAST(0x0000AACE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1944, 1, 6, CAST(0x0000AACF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1945, 1, 6, CAST(0x0000AAD000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1946, 1, 6, CAST(0x0000AAD100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1947, 1, 6, CAST(0x0000AAD200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1948, 1, 6, CAST(0x0000AAD300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1949, 1, 6, CAST(0x0000AAD400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1950, 1, 6, CAST(0x0000AAD500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1951, 1, 6, CAST(0x0000AAD600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1952, 1, 6, CAST(0x0000AAD700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1953, 1, 6, CAST(0x0000AAD800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1954, 1, 6, CAST(0x0000AAD900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1955, 1, 6, CAST(0x0000AADA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1956, 1, 6, CAST(0x0000AADB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1957, 1, 6, CAST(0x0000AADC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1958, 1, 6, CAST(0x0000AADD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1959, 1, 6, CAST(0x0000AADE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1960, 1, 6, CAST(0x0000AADF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1961, 1, 6, CAST(0x0000AAE000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1962, 1, 6, CAST(0x0000AAE100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1963, 1, 6, CAST(0x0000AAE200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1964, 1, 6, CAST(0x0000AAE300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1965, 1, 6, CAST(0x0000AAE400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1966, 1, 6, CAST(0x0000AAE500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1967, 1, 6, CAST(0x0000AAE600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1968, 1, 6, CAST(0x0000AAE700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1969, 1, 6, CAST(0x0000AAE800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1970, 1, 6, CAST(0x0000AAE900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1971, 1, 6, CAST(0x0000AAEA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1972, 1, 6, CAST(0x0000AAEB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1973, 1, 6, CAST(0x0000AAEC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1974, 1, 6, CAST(0x0000AAED00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1975, 1, 6, CAST(0x0000AAEE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1976, 1, 6, CAST(0x0000AAEF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1977, 1, 6, CAST(0x0000AAF000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1978, 1, 6, CAST(0x0000AAF100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1979, 1, 6, CAST(0x0000AAF200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1980, 1, 6, CAST(0x0000AAF300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1981, 1, 6, CAST(0x0000AAF400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1982, 1, 6, CAST(0x0000AAF500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1983, 1, 6, CAST(0x0000AAF600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1984, 1, 6, CAST(0x0000AAF700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1985, 1, 6, CAST(0x0000AAF800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1986, 1, 6, CAST(0x0000AAF900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1987, 1, 6, CAST(0x0000AAFA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1988, 1, 6, CAST(0x0000AAFB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1989, 1, 6, CAST(0x0000AAFC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1990, 1, 6, CAST(0x0000AAFD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1991, 1, 6, CAST(0x0000AAFE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1992, 1, 6, CAST(0x0000AAFF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1993, 1, 6, CAST(0x0000AB0000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1994, 1, 6, CAST(0x0000AB0100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1995, 1, 6, CAST(0x0000AB0200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1996, 1, 6, CAST(0x0000AB0300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1997, 1, 6, CAST(0x0000AB0400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1998, 1, 6, CAST(0x0000AB0500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (1999, 1, 6, CAST(0x0000AB0600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2000, 1, 6, CAST(0x0000AB0700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2001, 1, 6, CAST(0x0000AB0800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2002, 1, 6, CAST(0x0000AB0900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2003, 1, 6, CAST(0x0000AB0A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2004, 1, 6, CAST(0x0000AB0B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2005, 1, 6, CAST(0x0000AB0C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2006, 1, 6, CAST(0x0000AB0D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2007, 1, 6, CAST(0x0000AB0E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2008, 1, 6, CAST(0x0000AB0F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2009, 1, 6, CAST(0x0000AB1000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2010, 1, 6, CAST(0x0000AB1100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2011, 1, 6, CAST(0x0000AB1200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2012, 1, 6, CAST(0x0000AB1300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2013, 1, 6, CAST(0x0000AB1400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2014, 1, 6, CAST(0x0000AB1500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2015, 1, 6, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2016, 1, 6, CAST(0x0000AB1700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2017, 1, 6, CAST(0x0000AB1800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2018, 1, 6, CAST(0x0000AB1900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2019, 1, 6, CAST(0x0000AB1A00000000 AS DateTime))
GO
print 'Processed 2000 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2020, 1, 6, CAST(0x0000AB1B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2021, 1, 6, CAST(0x0000AB1C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2022, 1, 6, CAST(0x0000AB1D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2023, 1, 6, CAST(0x0000AB1E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2024, 1, 6, CAST(0x0000AB1F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2025, 1, 6, CAST(0x0000AB2000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2026, 1, 6, CAST(0x0000AB2100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2027, 1, 6, CAST(0x0000AB2200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2028, 1, 6, CAST(0x0000AB2300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2029, 1, 6, CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2030, 1, 6, CAST(0x0000AB2500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2031, 1, 6, CAST(0x0000AB2600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2032, 1, 6, CAST(0x0000AB2700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2033, 1, 6, CAST(0x0000AB2800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2034, 1, 6, CAST(0x0000AB2900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2035, 1, 6, CAST(0x0000AB2A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2036, 1, 6, CAST(0x0000AB2B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2037, 1, 6, CAST(0x0000AB2C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2038, 1, 6, CAST(0x0000AB2D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2039, 1, 6, CAST(0x0000AB2E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2040, 1, 6, CAST(0x0000AB2F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2041, 1, 6, CAST(0x0000AB3000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2042, 1, 6, CAST(0x0000AB3100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2043, 1, 6, CAST(0x0000AB3200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2044, 1, 6, CAST(0x0000AB3300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2045, 1, 6, CAST(0x0000AB3400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2046, 1, 6, CAST(0x0000AB3500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2047, 1, 6, CAST(0x0000AB3600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2048, 1, 6, CAST(0x0000AB3700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2049, 1, 6, CAST(0x0000AB3800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2050, 1, 6, CAST(0x0000AB3900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2051, 1, 6, CAST(0x0000AB3A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2052, 1, 6, CAST(0x0000AB3B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2053, 1, 6, CAST(0x0000AB3C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2054, 1, 6, CAST(0x0000AB3D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2055, 1, 6, CAST(0x0000AB3E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2056, 1, 6, CAST(0x0000AB3F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2057, 1, 6, CAST(0x0000AB4000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2058, 1, 6, CAST(0x0000AB4100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2059, 1, 6, CAST(0x0000AB4200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2060, 1, 6, CAST(0x0000AB4300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2061, 1, 6, CAST(0x0000AB4400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2062, 1, 6, CAST(0x0000AB4500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2063, 1, 6, CAST(0x0000AB4600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2064, 1, 6, CAST(0x0000AB4700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2065, 1, 6, CAST(0x0000AB4800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2066, 1, 6, CAST(0x0000AB4900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2067, 1, 6, CAST(0x0000AB4A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2068, 1, 6, CAST(0x0000AB4B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2069, 1, 6, CAST(0x0000AB4C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2070, 1, 6, CAST(0x0000AB4D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2071, 1, 6, CAST(0x0000AB4E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2072, 1, 6, CAST(0x0000AB4F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2073, 1, 6, CAST(0x0000AB5000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2074, 1, 6, CAST(0x0000AB5100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2075, 1, 6, CAST(0x0000AB5200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2076, 1, 6, CAST(0x0000AB5300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2077, 1, 6, CAST(0x0000AB5400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2078, 1, 6, CAST(0x0000AB5500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2079, 1, 6, CAST(0x0000AB5600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2080, 1, 6, CAST(0x0000AB5700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2081, 1, 6, CAST(0x0000AB5800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2082, 1, 6, CAST(0x0000AB5900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2083, 1, 6, CAST(0x0000AB5A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2084, 1, 6, CAST(0x0000AB5B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2085, 1, 6, CAST(0x0000AB5C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2086, 1, 6, CAST(0x0000AB5D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2087, 1, 6, CAST(0x0000AB5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2088, 1, 6, CAST(0x0000AB5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2089, 1, 6, CAST(0x0000AB6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2090, 1, 6, CAST(0x0000AB6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2091, 1, 6, CAST(0x0000AB6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2092, 1, 6, CAST(0x0000AB6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2093, 1, 6, CAST(0x0000AB6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2094, 1, 6, CAST(0x0000AB6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2095, 1, 6, CAST(0x0000AB6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2096, 1, 6, CAST(0x0000AB6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2097, 1, 6, CAST(0x0000AB6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2098, 1, 6, CAST(0x0000AB6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2099, 1, 6, CAST(0x0000AB6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2100, 1, 6, CAST(0x0000AB6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2101, 1, 6, CAST(0x0000AB6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2102, 1, 6, CAST(0x0000AB6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2103, 1, 6, CAST(0x0000AB6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2104, 1, 6, CAST(0x0000AB6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2105, 1, 6, CAST(0x0000AB7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2106, 1, 6, CAST(0x0000AB7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2107, 1, 6, CAST(0x0000AB7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2108, 1, 6, CAST(0x0000AB7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2109, 1, 6, CAST(0x0000AB7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2110, 1, 6, CAST(0x0000AB7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2111, 1, 6, CAST(0x0000AB7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2112, 1, 6, CAST(0x0000AB7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2113, 1, 6, CAST(0x0000AB7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2114, 1, 6, CAST(0x0000AB7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2115, 1, 6, CAST(0x0000AB7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2116, 1, 6, CAST(0x0000AB7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2117, 1, 6, CAST(0x0000AB7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2118, 1, 6, CAST(0x0000AB7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2119, 1, 6, CAST(0x0000AB7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2120, 1, 6, CAST(0x0000AB7F00000000 AS DateTime))
GO
print 'Processed 2100 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2121, 1, 6, CAST(0x0000AB8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2122, 1, 6, CAST(0x0000AB8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2123, 1, 6, CAST(0x0000AB8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2124, 1, 6, CAST(0x0000AB8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2125, 1, 6, CAST(0x0000AB8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2126, 1, 6, CAST(0x0000AB8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2127, 1, 6, CAST(0x0000AB8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2128, 1, 6, CAST(0x0000AB8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2129, 1, 6, CAST(0x0000AB8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2130, 1, 6, CAST(0x0000AB8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2131, 1, 6, CAST(0x0000AB8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2132, 1, 6, CAST(0x0000AB8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2133, 1, 6, CAST(0x0000AB8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2134, 1, 6, CAST(0x0000AB8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2135, 1, 6, CAST(0x0000AB8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2136, 1, 6, CAST(0x0000AB8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2137, 1, 6, CAST(0x0000AB9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2138, 1, 6, CAST(0x0000AB9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2139, 1, 6, CAST(0x0000AB9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2140, 1, 6, CAST(0x0000AB9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2141, 1, 6, CAST(0x0000AB9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2142, 1, 6, CAST(0x0000AB9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2143, 1, 6, CAST(0x0000AB9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2144, 1, 6, CAST(0x0000AB9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2145, 1, 6, CAST(0x0000AB9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2146, 1, 6, CAST(0x0000AB9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2147, 1, 6, CAST(0x0000AB9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2148, 1, 6, CAST(0x0000AB9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2149, 1, 6, CAST(0x0000AB9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2150, 1, 6, CAST(0x0000AB9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2151, 1, 6, CAST(0x0000AB9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2152, 1, 6, CAST(0x0000AB9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2153, 1, 6, CAST(0x0000ABA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2154, 1, 6, CAST(0x0000ABA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2155, 1, 6, CAST(0x0000ABA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2156, 1, 6, CAST(0x0000ABA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2157, 1, 6, CAST(0x0000ABA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2158, 1, 6, CAST(0x0000ABA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2159, 1, 6, CAST(0x0000ABA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2160, 1, 6, CAST(0x0000ABA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2161, 1, 6, CAST(0x0000ABA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2162, 1, 6, CAST(0x0000ABA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2163, 1, 6, CAST(0x0000ABAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2164, 1, 6, CAST(0x0000ABAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2165, 1, 6, CAST(0x0000ABAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2166, 1, 6, CAST(0x0000ABAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2167, 1, 6, CAST(0x0000ABAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2168, 1, 6, CAST(0x0000ABAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2169, 1, 6, CAST(0x0000ABB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2170, 1, 6, CAST(0x0000ABB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2171, 1, 6, CAST(0x0000ABB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2172, 1, 6, CAST(0x0000ABB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2173, 1, 6, CAST(0x0000ABB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2174, 1, 6, CAST(0x0000ABB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2175, 1, 6, CAST(0x0000ABB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2176, 1, 6, CAST(0x0000ABB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2177, 1, 6, CAST(0x0000ABB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2178, 1, 6, CAST(0x0000ABB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2179, 1, 6, CAST(0x0000ABBA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2180, 1, 6, CAST(0x0000ABBB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2181, 1, 6, CAST(0x0000ABBC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2182, 1, 6, CAST(0x0000ABBD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2183, 1, 6, CAST(0x0000ABBE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2184, 1, 6, CAST(0x0000ABBF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2185, 1, 6, CAST(0x0000ABC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2186, 1, 6, CAST(0x0000ABC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2187, 1, 6, CAST(0x0000ABC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2188, 1, 6, CAST(0x0000ABC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2189, 1, 6, CAST(0x0000ABC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2190, 1, 6, CAST(0x0000ABC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2191, 1, 6, CAST(0x0000ABC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2192, 1, 6, CAST(0x0000ABC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2193, 1, 6, CAST(0x0000ABC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2194, 1, 6, CAST(0x0000ABC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2195, 1, 6, CAST(0x0000ABCA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2196, 1, 6, CAST(0x0000ABCB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2197, 1, 7, CAST(0x0000AA5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2198, 1, 7, CAST(0x0000AA5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2199, 1, 7, CAST(0x0000AA6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2200, 1, 7, CAST(0x0000AA6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2201, 1, 7, CAST(0x0000AA6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2202, 1, 7, CAST(0x0000AA6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2203, 1, 7, CAST(0x0000AA6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2204, 1, 7, CAST(0x0000AA6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2205, 1, 7, CAST(0x0000AA6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2206, 1, 7, CAST(0x0000AA6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2207, 1, 7, CAST(0x0000AA6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2208, 1, 7, CAST(0x0000AA6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2209, 1, 7, CAST(0x0000AA6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2210, 1, 7, CAST(0x0000AA6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2211, 1, 7, CAST(0x0000AA6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2212, 1, 7, CAST(0x0000AA6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2213, 1, 7, CAST(0x0000AA6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2214, 1, 7, CAST(0x0000AA6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2215, 1, 7, CAST(0x0000AA7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2216, 1, 7, CAST(0x0000AA7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2217, 1, 7, CAST(0x0000AA7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2218, 1, 7, CAST(0x0000AA7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2219, 1, 7, CAST(0x0000AA7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2220, 1, 7, CAST(0x0000AA7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2221, 1, 7, CAST(0x0000AA7600000000 AS DateTime))
GO
print 'Processed 2200 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2222, 1, 7, CAST(0x0000AA7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2223, 1, 7, CAST(0x0000AA7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2224, 1, 7, CAST(0x0000AA7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2225, 1, 7, CAST(0x0000AA7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2226, 1, 7, CAST(0x0000AA7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2227, 1, 7, CAST(0x0000AA7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2228, 1, 7, CAST(0x0000AA7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2229, 1, 7, CAST(0x0000AA7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2230, 1, 7, CAST(0x0000AA7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2231, 1, 7, CAST(0x0000AA8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2232, 1, 7, CAST(0x0000AA8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2233, 1, 7, CAST(0x0000AA8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2234, 1, 7, CAST(0x0000AA8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2235, 1, 7, CAST(0x0000AA8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2236, 1, 7, CAST(0x0000AA8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2237, 1, 7, CAST(0x0000AA8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2238, 1, 7, CAST(0x0000AA8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2239, 1, 7, CAST(0x0000AA8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2240, 1, 7, CAST(0x0000AA8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2241, 1, 7, CAST(0x0000AA8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2242, 1, 7, CAST(0x0000AA8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2243, 1, 7, CAST(0x0000AA8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2244, 1, 7, CAST(0x0000AA8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2245, 1, 7, CAST(0x0000AA8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2246, 1, 7, CAST(0x0000AA8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2247, 1, 7, CAST(0x0000AA9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2248, 1, 7, CAST(0x0000AA9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2249, 1, 7, CAST(0x0000AA9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2250, 1, 7, CAST(0x0000AA9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2251, 1, 7, CAST(0x0000AA9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2252, 1, 7, CAST(0x0000AA9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2253, 1, 7, CAST(0x0000AA9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2254, 1, 7, CAST(0x0000AA9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2255, 1, 7, CAST(0x0000AA9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2256, 1, 7, CAST(0x0000AA9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2257, 1, 7, CAST(0x0000AA9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2258, 1, 7, CAST(0x0000AA9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2259, 1, 7, CAST(0x0000AA9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2260, 1, 7, CAST(0x0000AA9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2261, 1, 7, CAST(0x0000AA9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2262, 1, 7, CAST(0x0000AA9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2263, 1, 7, CAST(0x0000AAA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2264, 1, 7, CAST(0x0000AAA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2265, 1, 7, CAST(0x0000AAA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2266, 1, 7, CAST(0x0000AAA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2267, 1, 7, CAST(0x0000AAA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2268, 1, 7, CAST(0x0000AAA500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2269, 1, 7, CAST(0x0000AAA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2270, 1, 7, CAST(0x0000AAA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2271, 1, 7, CAST(0x0000AAA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2272, 1, 7, CAST(0x0000AAA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2273, 1, 7, CAST(0x0000AAAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2274, 1, 7, CAST(0x0000AAAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2275, 1, 7, CAST(0x0000AAAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2276, 1, 7, CAST(0x0000AAAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2277, 1, 7, CAST(0x0000AAAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2278, 1, 7, CAST(0x0000AAAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2279, 1, 7, CAST(0x0000AAB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2280, 1, 7, CAST(0x0000AAB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2281, 1, 7, CAST(0x0000AAB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2282, 1, 7, CAST(0x0000AAB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2283, 1, 7, CAST(0x0000AAB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2284, 1, 7, CAST(0x0000AAB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2285, 1, 7, CAST(0x0000AAB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2286, 1, 7, CAST(0x0000AAB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2287, 1, 7, CAST(0x0000AAB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2288, 1, 7, CAST(0x0000AAB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2289, 1, 7, CAST(0x0000AABA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2290, 1, 7, CAST(0x0000AABB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2291, 1, 7, CAST(0x0000AABC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2292, 1, 7, CAST(0x0000AABD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2293, 1, 7, CAST(0x0000AABE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2294, 1, 7, CAST(0x0000AABF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2295, 1, 7, CAST(0x0000AAC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2296, 1, 7, CAST(0x0000AAC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2297, 1, 7, CAST(0x0000AAC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2298, 1, 7, CAST(0x0000AAC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2299, 1, 7, CAST(0x0000AAC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2300, 1, 7, CAST(0x0000AAC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2301, 1, 7, CAST(0x0000AAC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2302, 1, 7, CAST(0x0000AAC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2303, 1, 7, CAST(0x0000AAC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2304, 1, 7, CAST(0x0000AAC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2305, 1, 7, CAST(0x0000AACA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2306, 1, 7, CAST(0x0000AACB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2307, 1, 7, CAST(0x0000AACC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2308, 1, 7, CAST(0x0000AACD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2309, 1, 7, CAST(0x0000AACE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2310, 1, 7, CAST(0x0000AACF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2311, 1, 7, CAST(0x0000AAD000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2312, 1, 7, CAST(0x0000AAD100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2313, 1, 7, CAST(0x0000AAD200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2314, 1, 7, CAST(0x0000AAD300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2315, 1, 7, CAST(0x0000AAD400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2316, 1, 7, CAST(0x0000AAD500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2317, 1, 7, CAST(0x0000AAD600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2318, 1, 7, CAST(0x0000AAD700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2319, 1, 7, CAST(0x0000AAD800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2320, 1, 7, CAST(0x0000AAD900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2321, 1, 7, CAST(0x0000AADA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2322, 1, 7, CAST(0x0000AADB00000000 AS DateTime))
GO
print 'Processed 2300 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2323, 1, 7, CAST(0x0000AADC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2324, 1, 7, CAST(0x0000AADD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2325, 1, 7, CAST(0x0000AADE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2326, 1, 7, CAST(0x0000AADF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2327, 1, 7, CAST(0x0000AAE000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2328, 1, 7, CAST(0x0000AAE100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2329, 1, 7, CAST(0x0000AAE200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2330, 1, 7, CAST(0x0000AAE300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2331, 1, 7, CAST(0x0000AAE400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2332, 1, 7, CAST(0x0000AAE500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2333, 1, 7, CAST(0x0000AAE600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2334, 1, 7, CAST(0x0000AAE700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2335, 1, 7, CAST(0x0000AAE800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2336, 1, 7, CAST(0x0000AAE900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2337, 1, 7, CAST(0x0000AAEA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2338, 1, 7, CAST(0x0000AAEB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2339, 1, 7, CAST(0x0000AAEC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2340, 1, 7, CAST(0x0000AAED00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2341, 1, 7, CAST(0x0000AAEE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2342, 1, 7, CAST(0x0000AAEF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2343, 1, 7, CAST(0x0000AAF000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2344, 1, 7, CAST(0x0000AAF100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2345, 1, 7, CAST(0x0000AAF200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2346, 1, 7, CAST(0x0000AAF300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2347, 1, 7, CAST(0x0000AAF400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2348, 1, 7, CAST(0x0000AAF500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2349, 1, 7, CAST(0x0000AAF600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2350, 1, 7, CAST(0x0000AAF700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2351, 1, 7, CAST(0x0000AAF800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2352, 1, 7, CAST(0x0000AAF900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2353, 1, 7, CAST(0x0000AAFA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2354, 1, 7, CAST(0x0000AAFB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2355, 1, 7, CAST(0x0000AAFC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2356, 1, 7, CAST(0x0000AAFD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2357, 1, 7, CAST(0x0000AAFE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2358, 1, 7, CAST(0x0000AAFF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2359, 1, 7, CAST(0x0000AB0000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2360, 1, 7, CAST(0x0000AB0100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2361, 1, 7, CAST(0x0000AB0200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2362, 1, 7, CAST(0x0000AB0300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2363, 1, 7, CAST(0x0000AB0400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2364, 1, 7, CAST(0x0000AB0500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2365, 1, 7, CAST(0x0000AB0600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2366, 1, 7, CAST(0x0000AB0700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2367, 1, 7, CAST(0x0000AB0800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2368, 1, 7, CAST(0x0000AB0900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2369, 1, 7, CAST(0x0000AB0A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2370, 1, 7, CAST(0x0000AB0B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2371, 1, 7, CAST(0x0000AB0C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2372, 1, 7, CAST(0x0000AB0D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2373, 1, 7, CAST(0x0000AB0E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2374, 1, 7, CAST(0x0000AB0F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2375, 1, 7, CAST(0x0000AB1000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2376, 1, 7, CAST(0x0000AB1100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2377, 1, 7, CAST(0x0000AB1200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2378, 1, 7, CAST(0x0000AB1300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2379, 1, 7, CAST(0x0000AB1400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2380, 1, 7, CAST(0x0000AB1500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2381, 1, 7, CAST(0x0000AB1600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2382, 1, 7, CAST(0x0000AB1700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2383, 1, 7, CAST(0x0000AB1800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2384, 1, 7, CAST(0x0000AB1900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2385, 1, 7, CAST(0x0000AB1A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2386, 1, 7, CAST(0x0000AB1B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2387, 1, 7, CAST(0x0000AB1C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2388, 1, 7, CAST(0x0000AB1D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2389, 1, 7, CAST(0x0000AB1E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2390, 1, 7, CAST(0x0000AB1F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2391, 1, 7, CAST(0x0000AB2000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2392, 1, 7, CAST(0x0000AB2100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2393, 1, 7, CAST(0x0000AB2200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2394, 1, 7, CAST(0x0000AB2300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2395, 1, 7, CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2396, 1, 7, CAST(0x0000AB2500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2397, 1, 7, CAST(0x0000AB2600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2398, 1, 7, CAST(0x0000AB2700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2399, 1, 7, CAST(0x0000AB2800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2400, 1, 7, CAST(0x0000AB2900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2401, 1, 7, CAST(0x0000AB2A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2402, 1, 7, CAST(0x0000AB2B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2403, 1, 7, CAST(0x0000AB2C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2404, 1, 7, CAST(0x0000AB2D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2405, 1, 7, CAST(0x0000AB2E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2406, 1, 7, CAST(0x0000AB2F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2407, 1, 7, CAST(0x0000AB3000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2408, 1, 7, CAST(0x0000AB3100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2409, 1, 7, CAST(0x0000AB3200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2410, 1, 7, CAST(0x0000AB3300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2411, 1, 7, CAST(0x0000AB3400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2412, 1, 7, CAST(0x0000AB3500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2413, 1, 7, CAST(0x0000AB3600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2414, 1, 7, CAST(0x0000AB3700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2415, 1, 7, CAST(0x0000AB3800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2416, 1, 7, CAST(0x0000AB3900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2417, 1, 7, CAST(0x0000AB3A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2418, 1, 7, CAST(0x0000AB3B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2419, 1, 7, CAST(0x0000AB3C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2420, 1, 7, CAST(0x0000AB3D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2421, 1, 7, CAST(0x0000AB3E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2422, 1, 7, CAST(0x0000AB3F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2423, 1, 7, CAST(0x0000AB4000000000 AS DateTime))
GO
print 'Processed 2400 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2424, 1, 7, CAST(0x0000AB4100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2425, 1, 7, CAST(0x0000AB4200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2426, 1, 7, CAST(0x0000AB4300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2427, 1, 7, CAST(0x0000AB4400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2428, 1, 7, CAST(0x0000AB4500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2429, 1, 7, CAST(0x0000AB4600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2430, 1, 7, CAST(0x0000AB4700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2431, 1, 7, CAST(0x0000AB4800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2432, 1, 7, CAST(0x0000AB4900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2433, 1, 7, CAST(0x0000AB4A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2434, 1, 7, CAST(0x0000AB4B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2435, 1, 7, CAST(0x0000AB4C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2436, 1, 7, CAST(0x0000AB4D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2437, 1, 7, CAST(0x0000AB4E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2438, 1, 7, CAST(0x0000AB4F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2439, 1, 7, CAST(0x0000AB5000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2440, 1, 7, CAST(0x0000AB5100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2441, 1, 7, CAST(0x0000AB5200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2442, 1, 7, CAST(0x0000AB5300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2443, 1, 7, CAST(0x0000AB5400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2444, 1, 7, CAST(0x0000AB5500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2445, 1, 7, CAST(0x0000AB5600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2446, 1, 7, CAST(0x0000AB5700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2447, 1, 7, CAST(0x0000AB5800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2448, 1, 7, CAST(0x0000AB5900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2449, 1, 7, CAST(0x0000AB5A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2450, 1, 7, CAST(0x0000AB5B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2451, 1, 7, CAST(0x0000AB5C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2452, 1, 7, CAST(0x0000AB5D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2453, 1, 7, CAST(0x0000AB5E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2454, 1, 7, CAST(0x0000AB5F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2455, 1, 7, CAST(0x0000AB6000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2456, 1, 7, CAST(0x0000AB6100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2457, 1, 7, CAST(0x0000AB6200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2458, 1, 7, CAST(0x0000AB6300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2459, 1, 7, CAST(0x0000AB6400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2460, 1, 7, CAST(0x0000AB6500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2461, 1, 7, CAST(0x0000AB6600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2462, 1, 7, CAST(0x0000AB6700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2463, 1, 7, CAST(0x0000AB6800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2464, 1, 7, CAST(0x0000AB6900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2465, 1, 7, CAST(0x0000AB6A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2466, 1, 7, CAST(0x0000AB6B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2467, 1, 7, CAST(0x0000AB6C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2468, 1, 7, CAST(0x0000AB6D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2469, 1, 7, CAST(0x0000AB6E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2470, 1, 7, CAST(0x0000AB6F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2471, 1, 7, CAST(0x0000AB7000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2472, 1, 7, CAST(0x0000AB7100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2473, 1, 7, CAST(0x0000AB7200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2474, 1, 7, CAST(0x0000AB7300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2475, 1, 7, CAST(0x0000AB7400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2476, 1, 7, CAST(0x0000AB7500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2477, 1, 7, CAST(0x0000AB7600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2478, 1, 7, CAST(0x0000AB7700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2479, 1, 7, CAST(0x0000AB7800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2480, 1, 7, CAST(0x0000AB7900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2481, 1, 7, CAST(0x0000AB7A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2482, 1, 7, CAST(0x0000AB7B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2483, 1, 7, CAST(0x0000AB7C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2484, 1, 7, CAST(0x0000AB7D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2485, 1, 7, CAST(0x0000AB7E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2486, 1, 7, CAST(0x0000AB7F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2487, 1, 7, CAST(0x0000AB8000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2488, 1, 7, CAST(0x0000AB8100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2489, 1, 7, CAST(0x0000AB8200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2490, 1, 7, CAST(0x0000AB8300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2491, 1, 7, CAST(0x0000AB8400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2492, 1, 7, CAST(0x0000AB8500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2493, 1, 7, CAST(0x0000AB8600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2494, 1, 7, CAST(0x0000AB8700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2495, 1, 7, CAST(0x0000AB8800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2496, 1, 7, CAST(0x0000AB8900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2497, 1, 7, CAST(0x0000AB8A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2498, 1, 7, CAST(0x0000AB8B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2499, 1, 7, CAST(0x0000AB8C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2500, 1, 7, CAST(0x0000AB8D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2501, 1, 7, CAST(0x0000AB8E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2502, 1, 7, CAST(0x0000AB8F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2503, 1, 7, CAST(0x0000AB9000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2504, 1, 7, CAST(0x0000AB9100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2505, 1, 7, CAST(0x0000AB9200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2506, 1, 7, CAST(0x0000AB9300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2507, 1, 7, CAST(0x0000AB9400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2508, 1, 7, CAST(0x0000AB9500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2509, 1, 7, CAST(0x0000AB9600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2510, 1, 7, CAST(0x0000AB9700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2511, 1, 7, CAST(0x0000AB9800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2512, 1, 7, CAST(0x0000AB9900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2513, 1, 7, CAST(0x0000AB9A00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2514, 1, 7, CAST(0x0000AB9B00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2515, 1, 7, CAST(0x0000AB9C00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2516, 1, 7, CAST(0x0000AB9D00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2517, 1, 7, CAST(0x0000AB9E00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2518, 1, 7, CAST(0x0000AB9F00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2519, 1, 7, CAST(0x0000ABA000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2520, 1, 7, CAST(0x0000ABA100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2521, 1, 7, CAST(0x0000ABA200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2522, 1, 7, CAST(0x0000ABA300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2523, 1, 7, CAST(0x0000ABA400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2524, 1, 7, CAST(0x0000ABA500000000 AS DateTime))
GO
print 'Processed 2500 total records'
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2525, 1, 7, CAST(0x0000ABA600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2526, 1, 7, CAST(0x0000ABA700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2527, 1, 7, CAST(0x0000ABA800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2528, 1, 7, CAST(0x0000ABA900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2529, 1, 7, CAST(0x0000ABAA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2530, 1, 7, CAST(0x0000ABAB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2531, 1, 7, CAST(0x0000ABAC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2532, 1, 7, CAST(0x0000ABAD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2533, 1, 7, CAST(0x0000ABAE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2534, 1, 7, CAST(0x0000ABAF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2535, 1, 7, CAST(0x0000ABB000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2536, 1, 7, CAST(0x0000ABB100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2537, 1, 7, CAST(0x0000ABB200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2538, 1, 7, CAST(0x0000ABB300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2539, 1, 7, CAST(0x0000ABB400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2540, 1, 7, CAST(0x0000ABB500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2541, 1, 7, CAST(0x0000ABB600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2542, 1, 7, CAST(0x0000ABB700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2543, 1, 7, CAST(0x0000ABB800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2544, 1, 7, CAST(0x0000ABB900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2545, 1, 7, CAST(0x0000ABBA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2546, 1, 7, CAST(0x0000ABBB00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2547, 1, 7, CAST(0x0000ABBC00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2548, 1, 7, CAST(0x0000ABBD00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2549, 1, 7, CAST(0x0000ABBE00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2550, 1, 7, CAST(0x0000ABBF00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2551, 1, 7, CAST(0x0000ABC000000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2552, 1, 7, CAST(0x0000ABC100000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2553, 1, 7, CAST(0x0000ABC200000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2554, 1, 7, CAST(0x0000ABC300000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2555, 1, 7, CAST(0x0000ABC400000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2556, 1, 7, CAST(0x0000ABC500000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2557, 1, 7, CAST(0x0000ABC600000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2558, 1, 7, CAST(0x0000ABC700000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2559, 1, 7, CAST(0x0000ABC800000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2560, 1, 7, CAST(0x0000ABC900000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2561, 1, 7, CAST(0x0000ABCA00000000 AS DateTime))
INSERT [dbo].[Trans_Room_Chart] ([Room_Chart_Id], [Hotel_Id], [Room_Id], [Dat]) VALUES (2562, 1, 7, CAST(0x0000ABCB00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Trans_Room_Chart] OFF
/****** Object:  Table [dbo].[Trans_RecTable_Inv]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trans_RecTable_Inv](
	[Inv_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Hotel_Id] [bigint] NULL,
	[RoomType_Id] [bigint] NULL,
	[DAT] [datetime] NULL,
	[INV] [bigint] NULL,
 CONSTRAINT [PK_Trans_RecTable_Inv] PRIMARY KEY CLUSTERED 
(
	[Inv_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Trans_RecTable_Inv] ON
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (1, 1, 1, CAST(0x0000A9F200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (2, 1, 2, CAST(0x0000A9F200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (3, 1, 1, CAST(0x0000A9F300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (4, 1, 2, CAST(0x0000A9F300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (5, 1, 1, CAST(0x0000A9F400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (6, 1, 2, CAST(0x0000A9F400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (7, 1, 1, CAST(0x0000A9F500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (8, 1, 2, CAST(0x0000A9F500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (9, 1, 1, CAST(0x0000A9F600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (10, 1, 2, CAST(0x0000A9F600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (11, 1, 1, CAST(0x0000A9F700000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (12, 1, 2, CAST(0x0000A9F700000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (13, 1, 1, CAST(0x0000A9F800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (14, 1, 2, CAST(0x0000A9F800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (15, 1, 1, CAST(0x0000A9F900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (16, 1, 2, CAST(0x0000A9F900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (17, 1, 1, CAST(0x0000A9FA00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (18, 1, 2, CAST(0x0000A9FA00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (19, 1, 1, CAST(0x0000A9FB00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (20, 1, 2, CAST(0x0000A9FB00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (21, 1, 1, CAST(0x0000A9FC00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (22, 1, 2, CAST(0x0000A9FC00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (23, 1, 1, CAST(0x0000A9FD00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (24, 1, 2, CAST(0x0000A9FD00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (25, 1, 1, CAST(0x0000A9FE00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (26, 1, 2, CAST(0x0000A9FE00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (27, 1, 1, CAST(0x0000A9FF00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (28, 1, 2, CAST(0x0000A9FF00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (29, 1, 1, CAST(0x0000AA0000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (30, 1, 2, CAST(0x0000AA0000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (31, 1, 1, CAST(0x0000AA0100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (32, 1, 2, CAST(0x0000AA0100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (33, 1, 1, CAST(0x0000AA0200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (34, 1, 2, CAST(0x0000AA0200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (35, 1, 1, CAST(0x0000AA0300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (36, 1, 2, CAST(0x0000AA0300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (37, 1, 1, CAST(0x0000AA0400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (38, 1, 2, CAST(0x0000AA0400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (39, 1, 1, CAST(0x0000AA0500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (40, 1, 2, CAST(0x0000AA0500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (41, 1, 1, CAST(0x0000AA0600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (42, 1, 2, CAST(0x0000AA0600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (43, 1, 1, CAST(0x0000AA0700000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (44, 1, 2, CAST(0x0000AA0700000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (45, 1, 1, CAST(0x0000AA0800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (46, 1, 2, CAST(0x0000AA0800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (47, 1, 1, CAST(0x0000AA0900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (48, 1, 2, CAST(0x0000AA0900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (49, 1, 1, CAST(0x0000AA0A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (50, 1, 2, CAST(0x0000AA0A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (51, 1, 1, CAST(0x0000AA0B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (52, 1, 2, CAST(0x0000AA0B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (53, 1, 1, CAST(0x0000AA0C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (54, 1, 2, CAST(0x0000AA0C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (55, 1, 1, CAST(0x0000AA0D00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (56, 1, 2, CAST(0x0000AA0D00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (57, 1, 1, CAST(0x0000AA0E00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (58, 1, 2, CAST(0x0000AA0E00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (59, 1, 1, CAST(0x0000AA0F00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (60, 1, 2, CAST(0x0000AA0F00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (61, 1, 1, CAST(0x0000AA1000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (62, 1, 2, CAST(0x0000AA1000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (63, 1, 1, CAST(0x0000AA1100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (64, 1, 2, CAST(0x0000AA1100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (65, 1, 1, CAST(0x0000AA1200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (66, 1, 2, CAST(0x0000AA1200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (67, 1, 1, CAST(0x0000AA1300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (68, 1, 2, CAST(0x0000AA1300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (69, 1, 1, CAST(0x0000AA1400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (70, 1, 2, CAST(0x0000AA1400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (71, 1, 1, CAST(0x0000AA1500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (72, 1, 2, CAST(0x0000AA1500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (73, 1, 1, CAST(0x0000AA1600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (74, 1, 2, CAST(0x0000AA1600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (75, 1, 1, CAST(0x0000AA1700000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (76, 1, 2, CAST(0x0000AA1700000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (77, 1, 1, CAST(0x0000AA1800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (78, 1, 2, CAST(0x0000AA1800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (79, 1, 1, CAST(0x0000AA1900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (80, 1, 2, CAST(0x0000AA1900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (81, 1, 1, CAST(0x0000AA1A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (82, 1, 2, CAST(0x0000AA1A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (83, 1, 1, CAST(0x0000AA1B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (84, 1, 2, CAST(0x0000AA1B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (85, 1, 1, CAST(0x0000AA3800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (86, 1, 2, CAST(0x0000AA3800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (87, 1, 3, CAST(0x0000AA3800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (88, 1, 1, CAST(0x0000AA3900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (89, 1, 2, CAST(0x0000AA3900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (90, 1, 3, CAST(0x0000AA3900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (91, 1, 1, CAST(0x0000AA3A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (92, 1, 2, CAST(0x0000AA3A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (93, 1, 3, CAST(0x0000AA3A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (94, 1, 1, CAST(0x0000AA3B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (95, 1, 2, CAST(0x0000AA3B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (96, 1, 3, CAST(0x0000AA3B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (97, 1, 1, CAST(0x0000AA3C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (98, 1, 2, CAST(0x0000AA3C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (99, 1, 3, CAST(0x0000AA3C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (100, 1, 1, CAST(0x0000AA3D00000000 AS DateTime), 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (101, 1, 2, CAST(0x0000AA3D00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (102, 1, 3, CAST(0x0000AA3D00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (103, 1, 1, CAST(0x0000AA3E00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (104, 1, 2, CAST(0x0000AA3E00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (105, 1, 3, CAST(0x0000AA3E00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (106, 1, 1, CAST(0x0000AA3F00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (107, 1, 2, CAST(0x0000AA3F00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (108, 1, 3, CAST(0x0000AA3F00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (109, 1, 1, CAST(0x0000AA4000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (110, 1, 2, CAST(0x0000AA4000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (111, 1, 3, CAST(0x0000AA4000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (112, 1, 1, CAST(0x0000AA4100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (113, 1, 2, CAST(0x0000AA4100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (114, 1, 3, CAST(0x0000AA4100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (115, 1, 1, CAST(0x0000AA4200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (116, 1, 2, CAST(0x0000AA4200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (117, 1, 3, CAST(0x0000AA4200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (118, 1, 1, CAST(0x0000AA4300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (119, 1, 2, CAST(0x0000AA4300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (120, 1, 3, CAST(0x0000AA4300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (121, 1, 1, CAST(0x0000AA4400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (122, 1, 2, CAST(0x0000AA4400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (123, 1, 3, CAST(0x0000AA4400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (124, 1, 1, CAST(0x0000AA4500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (125, 1, 2, CAST(0x0000AA4500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (126, 1, 3, CAST(0x0000AA4500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (127, 1, 1, CAST(0x0000AA4600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (128, 1, 2, CAST(0x0000AA4600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (129, 1, 3, CAST(0x0000AA4600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (130, 1, 1, CAST(0x0000AA4A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (131, 1, 2, CAST(0x0000AA4A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (132, 1, 3, CAST(0x0000AA4A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (133, 1, 1, CAST(0x0000AA4B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (134, 1, 2, CAST(0x0000AA4B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (135, 1, 3, CAST(0x0000AA4B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (136, 1, 1, CAST(0x0000AA4C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (137, 1, 2, CAST(0x0000AA4C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (138, 1, 3, CAST(0x0000AA4C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (139, 1, 1, CAST(0x0000AA4D00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (140, 1, 2, CAST(0x0000AA4D00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (141, 1, 3, CAST(0x0000AA4D00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (142, 1, 1, CAST(0x0000AA4E00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (143, 1, 2, CAST(0x0000AA4E00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (144, 1, 3, CAST(0x0000AA4E00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (145, 1, 1, CAST(0x0000AA4F00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (146, 1, 2, CAST(0x0000AA4F00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (147, 1, 3, CAST(0x0000AA4F00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (148, 1, 1, CAST(0x0000AA5000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (149, 1, 2, CAST(0x0000AA5000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (150, 1, 3, CAST(0x0000AA5000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (151, 1, 1, CAST(0x0000AA5100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (152, 1, 2, CAST(0x0000AA5100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (153, 1, 3, CAST(0x0000AA5100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (154, 1, 1, CAST(0x0000AA5200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (155, 1, 2, CAST(0x0000AA5200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (156, 1, 3, CAST(0x0000AA5200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (157, 1, 1, CAST(0x0000AA5300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (158, 1, 2, CAST(0x0000AA5300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (159, 1, 3, CAST(0x0000AA5300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (160, 1, 1, CAST(0x0000AA5400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (161, 1, 2, CAST(0x0000AA5400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (162, 1, 3, CAST(0x0000AA5400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (163, 1, 1, CAST(0x0000AA5500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (164, 1, 2, CAST(0x0000AA5500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (165, 1, 3, CAST(0x0000AA5500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (166, 1, 1, CAST(0x0000AA5600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (167, 1, 2, CAST(0x0000AA5600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (168, 1, 3, CAST(0x0000AA5600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (169, 1, 1, CAST(0x0000AA5700000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (170, 1, 2, CAST(0x0000AA5700000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (171, 1, 3, CAST(0x0000AA5700000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (172, 1, 1, CAST(0x0000AA5800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (173, 1, 2, CAST(0x0000AA5800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (174, 1, 3, CAST(0x0000AA5800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (175, 1, 1, CAST(0x0000AA5900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (176, 1, 2, CAST(0x0000AA5900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (177, 1, 3, CAST(0x0000AA5900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (178, 1, 1, CAST(0x0000AA5A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (179, 1, 2, CAST(0x0000AA5A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (180, 1, 3, CAST(0x0000AA5A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (181, 1, 1, CAST(0x0000AA5B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (182, 1, 2, CAST(0x0000AA5B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (183, 1, 3, CAST(0x0000AA5B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (184, 1, 1, CAST(0x0000AA5C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (185, 1, 2, CAST(0x0000AA5C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (186, 1, 3, CAST(0x0000AA5C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (187, 1, 1, CAST(0x0000AA5D00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (188, 1, 2, CAST(0x0000AA5D00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (189, 1, 3, CAST(0x0000AA5D00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (190, 1, 4, CAST(0x0000AA5000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (191, 1, 7, CAST(0x0000AA5000000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (192, 1, 4, CAST(0x0000AA5100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (193, 1, 7, CAST(0x0000AA5100000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (194, 1, 4, CAST(0x0000AA5200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (195, 1, 7, CAST(0x0000AA5200000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (196, 1, 4, CAST(0x0000AA5300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (197, 1, 7, CAST(0x0000AA5300000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (198, 1, 4, CAST(0x0000AA5400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (199, 1, 7, CAST(0x0000AA5400000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (200, 1, 4, CAST(0x0000AA5500000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (201, 1, 7, CAST(0x0000AA5500000000 AS DateTime), 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (202, 1, 4, CAST(0x0000AA5600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (203, 1, 7, CAST(0x0000AA5600000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (204, 1, 4, CAST(0x0000AA5700000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (205, 1, 7, CAST(0x0000AA5700000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (206, 1, 4, CAST(0x0000AA5800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (207, 1, 7, CAST(0x0000AA5800000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (208, 1, 4, CAST(0x0000AA5900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (209, 1, 7, CAST(0x0000AA5900000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (210, 1, 4, CAST(0x0000AA5A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (211, 1, 7, CAST(0x0000AA5A00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (212, 1, 4, CAST(0x0000AA5B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (213, 1, 7, CAST(0x0000AA5B00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (214, 1, 4, CAST(0x0000AA5C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (215, 1, 7, CAST(0x0000AA5C00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (216, 1, 4, CAST(0x0000AA5D00000000 AS DateTime), 0)
INSERT [dbo].[Trans_RecTable_Inv] ([Inv_Id], [Hotel_Id], [RoomType_Id], [DAT], [INV]) VALUES (217, 1, 7, CAST(0x0000AA5D00000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Trans_RecTable_Inv] OFF
/****** Object:  Table [dbo].[Trans_RecTable]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trans_RecTable](
	[Rec_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Hotel_Id] [bigint] NULL,
	[RoomType_Id] [bigint] NULL,
	[PlanType_Id] [bigint] NULL,
	[BaseRate] [decimal](18, 2) NULL,
	[AdultRate] [decimal](18, 2) NULL,
	[ChildRate] [decimal](18, 2) NULL,
	[DAT] [datetime] NULL,
	[INV] [bigint] NULL,
	[Single] [decimal](18, 2) NULL,
	[Doubles] [decimal](18, 2) NULL,
	[Triple] [decimal](18, 2) NULL,
	[Quadruple] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Trans_RecTable] PRIMARY KEY CLUSTERED 
(
	[Rec_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Trans_RecTable] ON
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (1, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9F200000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (2, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9F200000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (3, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F200000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (4, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F200000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (5, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9F300000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (6, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9F300000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (7, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F300000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (8, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F300000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (9, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9F400000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (10, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9F400000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (11, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F400000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (12, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F400000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (13, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9F500000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (14, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9F500000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (15, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F500000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (16, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F500000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (17, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9F600000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (18, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9F600000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (19, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F600000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (20, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F600000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (21, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9F700000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (22, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9F700000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (23, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F700000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (24, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F700000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (25, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9F800000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (26, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9F800000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (27, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F800000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (28, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F800000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (29, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9F900000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (30, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9F900000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (31, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F900000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (32, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9F900000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (33, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9FA00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (34, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9FA00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (35, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FA00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (36, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FA00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (37, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9FB00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (38, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9FB00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (39, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FB00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (40, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FB00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (41, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9FC00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (42, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9FC00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (43, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FC00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (44, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FC00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (45, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9FD00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (46, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9FD00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (47, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FD00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (48, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FD00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (49, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9FE00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (50, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9FE00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (51, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FE00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (52, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FE00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (53, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000A9FF00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (54, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000A9FF00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (55, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FF00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (56, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9FF00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (57, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0000000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (58, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0000000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (59, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0000000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (60, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0000000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (61, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0100000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (62, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0100000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (63, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0100000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (64, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0100000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (65, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0200000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (66, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0200000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (67, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0200000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (68, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0200000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (69, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0300000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (70, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0300000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (71, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0300000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (72, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0300000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (73, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0400000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (74, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0400000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (75, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0400000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (76, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0400000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (77, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0500000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (78, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0500000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (79, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0500000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (80, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0500000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (81, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0600000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (82, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0600000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (83, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0600000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (84, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0600000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (85, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0700000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (86, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0700000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (87, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0700000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (88, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0700000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (89, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0800000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (90, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0800000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (91, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0800000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (92, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0800000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (93, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0900000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (94, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0900000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (95, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0900000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (96, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0900000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (97, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0A00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (98, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0A00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (99, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0A00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (100, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0A00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
GO
print 'Processed 100 total records'
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (101, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0B00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (102, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0B00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (103, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0B00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (104, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0B00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (105, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0C00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (106, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0C00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (107, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0C00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (108, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0C00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (109, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0D00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (110, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0D00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (111, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0D00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (112, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0D00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (113, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0E00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (114, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0E00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (115, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0E00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (116, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0E00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (117, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA0F00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (118, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA0F00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (119, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0F00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (120, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA0F00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (121, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1000000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (122, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1000000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (123, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1000000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (124, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1000000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (125, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1100000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (126, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1100000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (127, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1100000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (128, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1100000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (129, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1200000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (130, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1200000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (131, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1200000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (132, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1200000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (133, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1300000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (134, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1300000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (135, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1300000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (136, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1300000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (137, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1400000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (138, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1400000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (139, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1400000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (140, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1400000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (141, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1500000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (142, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1500000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (143, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1500000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (144, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1500000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (145, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1600000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (146, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1600000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (147, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1600000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (148, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1600000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (149, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1700000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (150, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1700000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (151, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1700000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (152, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1700000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (153, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1800000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (154, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1800000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (155, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1800000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (156, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1800000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (157, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1900000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (158, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1900000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (159, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1900000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (160, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1900000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (161, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1A00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (162, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1A00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (163, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1A00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (164, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1A00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (165, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA1B00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (166, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA1B00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (167, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1B00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (168, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA1B00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (169, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA3800000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (170, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA3800000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (171, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA3800000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (172, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA3800000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (173, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3800000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (174, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3800000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (175, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA3900000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (176, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA3900000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (177, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA3900000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (178, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA3900000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (179, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3900000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (180, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3900000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (181, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA3A00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (182, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA3A00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (183, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA3A00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (184, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA3A00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (185, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3A00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (186, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3A00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (187, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA3B00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (188, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA3B00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (189, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA3B00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (190, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA3B00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (191, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3B00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (192, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3B00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (193, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA3C00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (194, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA3C00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (195, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA3C00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (196, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA3C00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (197, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3C00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (198, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3C00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (199, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA3D00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (200, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA3D00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (201, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA3D00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
GO
print 'Processed 200 total records'
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (202, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA3D00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (203, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3D00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (204, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3D00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (205, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA3E00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (206, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA3E00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (207, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA3E00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (208, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA3E00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (209, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3E00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (210, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3E00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (211, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA3F00000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (212, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA3F00000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (213, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA3F00000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (214, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA3F00000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (215, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3F00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (216, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA3F00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (217, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA4000000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (218, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA4000000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (219, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA4000000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (220, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA4000000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (221, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4000000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (222, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4000000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (223, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA4100000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (224, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA4100000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (225, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA4100000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (226, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA4100000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (227, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4100000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (228, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4100000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (229, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA4200000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (230, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA4200000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (231, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA4200000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (232, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA4200000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (233, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4200000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (234, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4200000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (235, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA4300000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (236, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA4300000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (237, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA4300000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (238, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA4300000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (239, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4300000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (240, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4300000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (241, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA4400000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (242, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA4400000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (243, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA4400000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (244, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA4400000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (245, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4400000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (246, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4400000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (247, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA4500000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (248, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA4500000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (249, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA4500000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (250, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA4500000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (251, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4500000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (252, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4500000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (253, 1, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(0x0000AA4600000000 AS DateTime), 0, CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (254, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(250.00 AS Decimal(18, 2)), CAST(0x0000AA4600000000 AS DateTime), 0, CAST(1800.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2200.00 AS Decimal(18, 2)), CAST(2600.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (255, 1, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(0x0000AA4600000000 AS DateTime), 0, CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (256, 1, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(650.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(0x0000AA4600000000 AS DateTime), 0, CAST(1750.00 AS Decimal(18, 2)), CAST(2250.00 AS Decimal(18, 2)), CAST(2750.00 AS Decimal(18, 2)), CAST(3025.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (257, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4600000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (258, 1, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4600000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (259, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4A00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (260, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4B00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (261, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4C00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (262, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4D00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (263, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4E00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (264, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA4F00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (265, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5000000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (266, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5100000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (267, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5200000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (268, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5300000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (269, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5400000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (270, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5500000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (271, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5600000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (272, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5700000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (273, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5800000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (274, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5800000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (275, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5900000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (276, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5900000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (277, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5A00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (278, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5A00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (279, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5B00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (280, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5B00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (281, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5C00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (282, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5C00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (283, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5D00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (284, 1, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000AA5D00000000 AS DateTime), 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (285, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5000000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (286, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5100000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (287, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5200000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (288, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5300000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (289, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5400000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (290, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5500000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (291, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5600000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (292, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5700000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (293, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5800000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (294, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5900000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (295, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5A00000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (296, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5B00000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (297, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5C00000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_RecTable] ([Rec_Id], [Hotel_Id], [RoomType_Id], [PlanType_Id], [BaseRate], [AdultRate], [ChildRate], [DAT], [INV], [Single], [Doubles], [Triple], [Quadruple]) VALUES (298, 1, 1, 2, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0x0000AA5D00000000 AS DateTime), 0, CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Trans_RecTable] OFF
/****** Object:  Table [dbo].[Trans_Recipt]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trans_Recipt](
	[Receipt_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Order_Id] [bigint] NULL,
	[ReceiptDate] [datetime] NULL,
	[RecNo] [varchar](100) NULL,
	[Name_on_card] [varchar](100) NULL,
	[Issuing_bank] [varchar](100) NULL,
	[CardCategory] [varchar](100) NULL,
	[Easepayid] [varchar](100) NULL,
	[Amount] [decimal](18, 2) NULL,
	[CGST] [decimal](18, 2) NULL,
	[SGST] [decimal](18, 2) NULL,
	[Flag] [bigint] NULL,
	[SubTotal] [decimal](18, 2) NULL,
 CONSTRAINT [_Trans_Recipt] PRIMARY KEY CLUSTERED 
(
	[Receipt_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Trans_Recipt] ON
INSERT [dbo].[Trans_Recipt] ([Receipt_ID], [Order_Id], [ReceiptDate], [RecNo], [Name_on_card], [Issuing_bank], [CardCategory], [Easepayid], [Amount], [CGST], [SGST], [Flag], [SubTotal]) VALUES (1, 1, CAST(0x0000AA1001069697 AS DateTime), N'INV00001', N'NA', N'NA', N'NA', N'TBFXCUV2ER', CAST(4000.00 AS Decimal(18, 2)), CAST(305.08 AS Decimal(18, 2)), CAST(305.08 AS Decimal(18, 2)), 0, CAST(3389.83 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Recipt] ([Receipt_ID], [Order_Id], [ReceiptDate], [RecNo], [Name_on_card], [Issuing_bank], [CardCategory], [Easepayid], [Amount], [CGST], [SGST], [Flag], [SubTotal]) VALUES (2, 2, CAST(0x0000AA11010FB05F AS DateTime), N'INV00002', N'NA', N'NA', N'NA', N'TCCQ2SX7VT', CAST(4500.00 AS Decimal(18, 2)), CAST(343.22 AS Decimal(18, 2)), CAST(343.22 AS Decimal(18, 2)), 0, CAST(3813.56 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Recipt] ([Receipt_ID], [Order_Id], [ReceiptDate], [RecNo], [Name_on_card], [Issuing_bank], [CardCategory], [Easepayid], [Amount], [CGST], [SGST], [Flag], [SubTotal]) VALUES (3, 6, CAST(0x0000AA1D01032D26 AS DateTime), N'INV00003', N'NA', N'NA', N'NA', N'T51QXX7L75', CAST(4000.00 AS Decimal(18, 2)), CAST(305.08 AS Decimal(18, 2)), CAST(305.08 AS Decimal(18, 2)), 0, CAST(3389.83 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Recipt] ([Receipt_ID], [Order_Id], [ReceiptDate], [RecNo], [Name_on_card], [Issuing_bank], [CardCategory], [Easepayid], [Amount], [CGST], [SGST], [Flag], [SubTotal]) VALUES (4, 7, CAST(0x0000AA1E010FE210 AS DateTime), N'INV00004', N'NA', N'NA', N'NA', N'TQLDL4FQC8', CAST(4000.00 AS Decimal(18, 2)), CAST(305.08 AS Decimal(18, 2)), CAST(305.08 AS Decimal(18, 2)), 0, CAST(3389.83 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Recipt] ([Receipt_ID], [Order_Id], [ReceiptDate], [RecNo], [Name_on_card], [Issuing_bank], [CardCategory], [Easepayid], [Amount], [CGST], [SGST], [Flag], [SubTotal]) VALUES (5, 11, CAST(0x0000AA1F00B53EDE AS DateTime), N'INV00005', N'NA', N'NA', N'NA', N'TPS5YY31DJ', CAST(4000.00 AS Decimal(18, 2)), CAST(305.08 AS Decimal(18, 2)), CAST(305.08 AS Decimal(18, 2)), 0, CAST(3389.83 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Trans_Recipt] OFF
/****** Object:  Table [dbo].[Trans_Order]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trans_Order](
	[Order_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NULL,
	[OrderNo] [varchar](200) NULL,
	[FirstName] [varchar](200) NULL,
	[LastName] [varchar](200) NULL,
	[Mobile] [varchar](200) NULL,
	[Email] [varchar](200) NULL,
	[Checkin] [datetime] NULL,
	[Checkout] [datetime] NULL,
	[AdultCount] [bigint] NULL,
	[ChildCount] [bigint] NULL,
	[Noofrooms] [bigint] NULL,
	[RoomType_Id] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
	[Flag] [bigint] NULL,
	[Amount] [decimal](18, 2) NULL,
 CONSTRAINT [Pk_Trans_Order] UNIQUE NONCLUSTERED 
(
	[OrderNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Trans_Order] ON
INSERT [dbo].[Trans_Order] ([Order_Id], [OrderDate], [OrderNo], [FirstName], [LastName], [Mobile], [Email], [Checkin], [Checkout], [AdultCount], [ChildCount], [Noofrooms], [RoomType_Id], [Hotel_Id], [Flag], [Amount]) VALUES (1, CAST(0x0000AA1001067AB8 AS DateTime), N'ORD00001', N'Lakshmikandan', N'S', N'8883390777', N'lgsanjay@gmail.com', CAST(0x0000AA1000000000 AS DateTime), CAST(0x0000AA1000000000 AS DateTime), 1, 1, 1, 1104127428421014578, 1, 0, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Order] ([Order_Id], [OrderDate], [OrderNo], [FirstName], [LastName], [Mobile], [Email], [Checkin], [Checkout], [AdultCount], [ChildCount], [Noofrooms], [RoomType_Id], [Hotel_Id], [Flag], [Amount]) VALUES (2, CAST(0x0000AA11010F48FA AS DateTime), N'ORD00002', N'Padmanaban', N'Ponnuswamy', N'8220311119', N'sales@microgenn.com', CAST(0x0000AA1100000000 AS DateTime), CAST(0x0000AA1100000000 AS DateTime), 1, 1, 1, 1104127428421051878, 1, 0, CAST(4500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Order] ([Order_Id], [OrderDate], [OrderNo], [FirstName], [LastName], [Mobile], [Email], [Checkin], [Checkout], [AdultCount], [ChildCount], [Noofrooms], [RoomType_Id], [Hotel_Id], [Flag], [Amount]) VALUES (3, CAST(0x0000AA11011095E5 AS DateTime), N'ORD00003', N'Vignesh', N'R', N'9944516004', N'vigneshram@microgenn.com', CAST(0x0000AA1100000000 AS DateTime), CAST(0x0000AA1100000000 AS DateTime), 1, 1, 1, 1104127428421014580, 1, 0, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Order] ([Order_Id], [OrderDate], [OrderNo], [FirstName], [LastName], [Mobile], [Email], [Checkin], [Checkout], [AdultCount], [ChildCount], [Noofrooms], [RoomType_Id], [Hotel_Id], [Flag], [Amount]) VALUES (4, CAST(0x0000AA11011319B0 AS DateTime), N'ORD00004', N'Padmanaban', N'P', N'8220311119', N'sales@microgenn.com', CAST(0x0000AA1100000000 AS DateTime), CAST(0x0000AA1100000000 AS DateTime), 1, 1, 1, 1104127428421014580, 1, 0, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Order] ([Order_Id], [OrderDate], [OrderNo], [FirstName], [LastName], [Mobile], [Email], [Checkin], [Checkout], [AdultCount], [ChildCount], [Noofrooms], [RoomType_Id], [Hotel_Id], [Flag], [Amount]) VALUES (5, CAST(0x0000AA14012A9257 AS DateTime), N'ORD00005', N'Vignesh', N'R', N'9944516004', N'vigneshram@microgenn.com', CAST(0x0000AA1400000000 AS DateTime), CAST(0x0000AA1400000000 AS DateTime), 1, 1, 1, 1104127428421014580, 1, 0, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Order] ([Order_Id], [OrderDate], [OrderNo], [FirstName], [LastName], [Mobile], [Email], [Checkin], [Checkout], [AdultCount], [ChildCount], [Noofrooms], [RoomType_Id], [Hotel_Id], [Flag], [Amount]) VALUES (6, CAST(0x0000AA1D0102C0BD AS DateTime), N'ORD00006', N'Padmanaban', N'Ponnuswamy', N'8220311119', N'sales@microgenn.com', CAST(0x0000AA1D00000000 AS DateTime), CAST(0x0000AA1D00000000 AS DateTime), 1, 1, 1, 1104127428421014578, 1, 0, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Order] ([Order_Id], [OrderDate], [OrderNo], [FirstName], [LastName], [Mobile], [Email], [Checkin], [Checkout], [AdultCount], [ChildCount], [Noofrooms], [RoomType_Id], [Hotel_Id], [Flag], [Amount]) VALUES (7, CAST(0x0000AA1E010F740D AS DateTime), N'ORD00007', N'Vignesh', N'R', N'9944516004', N'vigneshram@microgenn.com', CAST(0x0000AA1E00000000 AS DateTime), CAST(0x0000AA1E00000000 AS DateTime), 1, 1, 1, 1104127428421014578, 1, 0, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Order] ([Order_Id], [OrderDate], [OrderNo], [FirstName], [LastName], [Mobile], [Email], [Checkin], [Checkout], [AdultCount], [ChildCount], [Noofrooms], [RoomType_Id], [Hotel_Id], [Flag], [Amount]) VALUES (8, CAST(0x0000AA1F00B4B273 AS DateTime), N'ORD00008', N'Vignesh', N'R', N'9944516004', N'vigneshram@microgenn.com', CAST(0x0000AA1F00000000 AS DateTime), CAST(0x0000AA1F00000000 AS DateTime), 1, 1, 1, 1104127428421014580, 1, 0, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Order] ([Order_Id], [OrderDate], [OrderNo], [FirstName], [LastName], [Mobile], [Email], [Checkin], [Checkout], [AdultCount], [ChildCount], [Noofrooms], [RoomType_Id], [Hotel_Id], [Flag], [Amount]) VALUES (9, CAST(0x0000AA1F00B4BD31 AS DateTime), N'ORD00009', N'Vignesh', N'R', N'9944516004', N'vigneshram@microgenn.com', CAST(0x0000AA1F00000000 AS DateTime), CAST(0x0000AA1F00000000 AS DateTime), 1, 1, 1, 1104127428421014580, 1, 0, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Order] ([Order_Id], [OrderDate], [OrderNo], [FirstName], [LastName], [Mobile], [Email], [Checkin], [Checkout], [AdultCount], [ChildCount], [Noofrooms], [RoomType_Id], [Hotel_Id], [Flag], [Amount]) VALUES (10, CAST(0x0000AA1F00B4E797 AS DateTime), N'ORD00010', N'Vignesh', N'R', N'9944516004', N'rvignesh.mdu@gmail.com', CAST(0x0000AA1F00000000 AS DateTime), CAST(0x0000AA1F00000000 AS DateTime), 1, 1, 1, 1104127428421014580, 1, 0, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[Trans_Order] ([Order_Id], [OrderDate], [OrderNo], [FirstName], [LastName], [Mobile], [Email], [Checkin], [Checkout], [AdultCount], [ChildCount], [Noofrooms], [RoomType_Id], [Hotel_Id], [Flag], [Amount]) VALUES (11, CAST(0x0000AA1F00B50709 AS DateTime), N'ORD00011', N'Vignesh', N'R', N'9944516004', N'vigneshram@microgenn.com', CAST(0x0000AA1F00000000 AS DateTime), CAST(0x0000AA1F00000000 AS DateTime), 1, 1, 1, 1104127428421014578, 1, 0, CAST(4000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Trans_Order] OFF
/****** Object:  Table [dbo].[Trans_Booking]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trans_Booking](
	[Booking_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingDate] [datetime] NULL,
	[BookingNo] [varchar](200) NULL,
	[BookingStatus] [varchar](200) NULL,
	[Customer_Id] [bigint] NULL,
	[Checkin] [datetime] NULL,
	[Checkout] [datetime] NULL,
	[AdultCount] [bigint] NULL,
	[ChildCount] [bigint] NULL,
	[Noofrooms] [bigint] NULL,
	[RoomType_Id] [bigint] NULL,
	[Hotel_Id] [bigint] NULL,
	[Flag] [bigint] NULL,
	[BookingAmount] [decimal](18, 2) NULL,
 CONSTRAINT [Pk_Trans_Booking] UNIQUE NONCLUSTERED 
(
	[BookingNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temp_RatePlan_Det]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Temp_RatePlan_Det](
	[RatePlanDet_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RatePlan_Id] [bigint] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[BaseRate] [decimal](18, 2) NULL,
	[Single] [decimal](18, 2) NULL,
	[Doubles] [decimal](18, 2) NULL,
	[Triple] [decimal](18, 2) NULL,
	[Quadruple] [decimal](18, 2) NULL,
	[AdultRate] [decimal](18, 2) NULL,
	[ChildRate] [decimal](18, 2) NULL,
	[FoodPlan_Id] [bigint] NULL,
	[AdultPlanAmt] [decimal](18, 2) NULL,
	[ChildPlanAmt] [decimal](18, 2) NULL,
	[WeekSingle] [decimal](18, 2) NULL,
	[WeekDoubles] [decimal](18, 2) NULL,
	[WeekTriple] [decimal](18, 2) NULL,
	[WeekQuadruple] [decimal](18, 2) NULL,
	[Keey] [varchar](100) NULL,
 CONSTRAINT [PK_Temp_RatePlan_Det] PRIMARY KEY CLUSTERED 
(
	[RatePlanDet_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Temp_RatePlan_Det] ON
INSERT [dbo].[Temp_RatePlan_Det] ([RatePlanDet_Id], [RatePlan_Id], [FromDate], [ToDate], [BaseRate], [Single], [Doubles], [Triple], [Quadruple], [AdultRate], [ChildRate], [FoodPlan_Id], [AdultPlanAmt], [ChildPlanAmt], [WeekSingle], [WeekDoubles], [WeekTriple], [WeekQuadruple], [Keey]) VALUES (4, 1, CAST(0x0000AA5B00000000 AS DateTime), CAST(0x0000AA5B00000000 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, NULL, NULL, N'2150222367219324725')
INSERT [dbo].[Temp_RatePlan_Det] ([RatePlanDet_Id], [RatePlan_Id], [FromDate], [ToDate], [BaseRate], [Single], [Doubles], [Triple], [Quadruple], [AdultRate], [ChildRate], [FoodPlan_Id], [AdultPlanAmt], [ChildPlanAmt], [WeekSingle], [WeekDoubles], [WeekTriple], [WeekQuadruple], [Keey]) VALUES (7, 1, CAST(0x0000AA5B00000000 AS DateTime), CAST(0x0000AA5B00000000 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(1200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, NULL, NULL, N'3254963943242714600')
INSERT [dbo].[Temp_RatePlan_Det] ([RatePlanDet_Id], [RatePlan_Id], [FromDate], [ToDate], [BaseRate], [Single], [Doubles], [Triple], [Quadruple], [AdultRate], [ChildRate], [FoodPlan_Id], [AdultPlanAmt], [ChildPlanAmt], [WeekSingle], [WeekDoubles], [WeekTriple], [WeekQuadruple], [Keey]) VALUES (8, NULL, CAST(0x0000AA5F00000000 AS DateTime), CAST(0x0000AA6800000000 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'17562209392397616577')
INSERT [dbo].[Temp_RatePlan_Det] ([RatePlanDet_Id], [RatePlan_Id], [FromDate], [ToDate], [BaseRate], [Single], [Doubles], [Triple], [Quadruple], [AdultRate], [ChildRate], [FoodPlan_Id], [AdultPlanAmt], [ChildPlanAmt], [WeekSingle], [WeekDoubles], [WeekTriple], [WeekQuadruple], [Keey]) VALUES (19, NULL, CAST(0x0000AA5F00000000 AS DateTime), CAST(0x0000AA7C00000000 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'1555618349273623699')
INSERT [dbo].[Temp_RatePlan_Det] ([RatePlanDet_Id], [RatePlan_Id], [FromDate], [ToDate], [BaseRate], [Single], [Doubles], [Triple], [Quadruple], [AdultRate], [ChildRate], [FoodPlan_Id], [AdultPlanAmt], [ChildPlanAmt], [WeekSingle], [WeekDoubles], [WeekTriple], [WeekQuadruple], [Keey]) VALUES (20, 1, CAST(0x0000AA5F00000000 AS DateTime), CAST(0x0000AA6800000000 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, NULL, NULL, N'6191200281837317690')
INSERT [dbo].[Temp_RatePlan_Det] ([RatePlanDet_Id], [RatePlan_Id], [FromDate], [ToDate], [BaseRate], [Single], [Doubles], [Triple], [Quadruple], [AdultRate], [ChildRate], [FoodPlan_Id], [AdultPlanAmt], [ChildPlanAmt], [WeekSingle], [WeekDoubles], [WeekTriple], [WeekQuadruple], [Keey]) VALUES (21, 1, CAST(0x0000AA6900000000 AS DateTime), CAST(0x0000AA7C00000000 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, NULL, NULL, N'6191200281837317690')
SET IDENTITY_INSERT [dbo].[Temp_RatePlan_Det] OFF
/****** Object:  Table [dbo].[SubMenu]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubMenu](
	[SubMenu_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Menu_Id] [bigint] NULL,
	[Smenu] [varchar](50) NULL,
	[Des] [varchar](50) NULL,
	[Act] [bigint] NULL,
	[Ord] [bigint] NULL,
	[Icon] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SubMenu] ON
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (1, 7, N'Facility', N'Facility', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (2, 7, N'RoomType', N'RoomType', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (3, 1, N'PayMode', N'PayMode', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (4, 2, N'Customer', N'Customer', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (5, 3, N'Rate Plan', N'RatePlan', 1, 2, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (6, 3, N'Rate Type Master', N'PlanType', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (7, 3, N'Inventory', N'Inventory', 1, 3, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (8, 4, N'Booking', N'RoomBooking', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (9, 4, N'Cancel List', N'Cancellist', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (10, 3, N'Food Plan', N'FoodPlan', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (11, 2, N'Company', N'Company', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (12, 2, N'Company Type', N'CompanyType', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (13, 2, N'Market Segment', N'MarketSegment', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (14, 2, N'Business Source', N'BusinessSource', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (15, 2, N'Guest Type', N'GuestType', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (16, 2, N'Billing Instruction', N'BillingInstruction', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (17, 2, N'Guest Status', N'GuestStatus', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (18, 2, N'Reservation Mode', N'ReservationMode', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (19, 2, N'Company Group', N'CompanyGroup', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (20, 2, N'GstType', N'GstType', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (21, 2, N'RevenueGroup', N'RevenueGroup', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (22, 2, N'BillGroup', N'BillGroup', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (23, 2, N'Revenue', N'Revenue', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (24, 2, N'TaxSetup', N'TaxSetup', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (25, 7, N'Floor', N'Floor', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (26, 7, N'Block', N'Block', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (27, 7, N'BedType', N'BedType', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (28, 7, N'Room', N'Room', 1, 1, N'')
INSERT [dbo].[SubMenu] ([SubMenu_Id], [Menu_Id], [Smenu], [Des], [Act], [Ord], [Icon]) VALUES (29, 8, N'RoomChart', N'RoomChart', 1, 1, N'')
SET IDENTITY_INSERT [dbo].[SubMenu] OFF
/****** Object:  Table [dbo].[SMSGateway]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SMSGateway](
	[SmsApi_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Api] [varchar](500) NULL,
	[UserName] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[Sid] [varchar](100) NULL,
	[SmsType] [varchar](100) NULL,
	[ADDDATE] [datetime] NULL,
	[STOREID] [bigint] NULL,
	[EDDATE] [datetime] NULL,
	[Hotel_Id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SMSGateway] ON
INSERT [dbo].[SMSGateway] ([SmsApi_Id], [Api], [UserName], [Password], [Sid], [SmsType], [ADDDATE], [STOREID], [EDDATE], [Hotel_Id]) VALUES (1, N'444hhh', N'dgg', N'tsatse', N'4444', N'Transactional', CAST(0x0000A2B701365B60 AS DateTime), 1, CAST(0x0000A46601333DCC AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[SMSGateway] OFF
/****** Object:  StoredProcedure [dbo].[Search_Item]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Search_Item] @Receiver VARCHAR(100) AS 

SELECT * FROM Mas_Item  WHERE ItemName LIKE  ''+@Receiver+'%' OR CatNo LIKE  ''+@Receiver+'%'
GO
/****** Object:  UserDefinedFunction [dbo].[fn_str_TO_BASE64]    Script Date: 10/01/2019 11:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_str_TO_BASE64]
(
    @STRING VARCHAR(MAX)
)
RETURNS VARCHAR(MAX)
AS
BEGIN
    RETURN (
        SELECT
            CAST(N'' AS XML).value(
                  'xs:base64Binary(xs:hexBinary(sql:column("bin")))'
                , 'VARCHAR(MAX)'
            )   Base64Encoding
        FROM (
            SELECT CAST(@STRING AS VARBINARY(MAX)) AS bin
        ) AS bin_sql_server_temp
    )
END
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 10/01/2019 11:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTable](
	[User_id] [bigint] IDENTITY(1,1) NOT NULL,
	[EmailId] [varchar](200) NULL,
	[Password] [varchar](20) NULL,
	[UserType] [bigint] NULL,
	[HotelId] [bigint] NULL,
	[LedgerId] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserTable] ON
INSERT [dbo].[UserTable] ([User_id], [EmailId], [Password], [UserType], [HotelId], [LedgerId]) VALUES (1, N'admin', N'YWRtaW4=', 2, 1, 0)
SET IDENTITY_INSERT [dbo].[UserTable] OFF
/****** Object:  Table [dbo].[Customer]    Script Date: 10/01/2019 11:34:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Customerid] [bigint] IDENTITY(1,1) NOT NULL,
	[Customercode] [varchar](80) NULL,
	[Firstname] [varchar](80) NULL,
	[lastname] [varchar](80) NULL,
	[Mobile] [varchar](20) NULL,
	[Email_ID] [varchar](20) NULL,
	[HomeAddress1] [varchar](1000) NULL,
	[HomeAddress2] [varchar](1000) NULL,
	[Homepincode] [varchar](1000) NULL,
	[HomeCityid] [bigint] NULL,
	[Homezipcode] [varchar](20) NULL,
	[Homecountry_ID] [bigint] NULL,
	[Nationality_ID] [bigint] NULL,
	[Companyid] [bigint] NULL,
	[ResidentialPhone] [varchar](25) NULL,
	[WorkAddress1] [varchar](1000) NULL,
	[WorkAddress2] [varchar](1000) NULL,
	[Workpincode] [varchar](1000) NULL,
	[WorkCityid] [bigint] NULL,
	[Workzipcode] [varchar](20) NULL,
	[Workcountry_ID] [bigint] NULL,
	[WorPhone] [varchar](100) NULL,
	[GuestType_ID] [bigint] NULL,
	[Marketsegment_ID] [bigint] NULL,
	[Businesssource_ID] [bigint] NULL,
	[Billinginstruction_ID] [bigint] NULL,
	[Gueststatus_ID] [bigint] NULL,
	[Facebook_ID] [varchar](100) NULL,
	[Twitter_ID] [varchar](100) NULL,
	[Language_ID] [bigint] NULL,
	[Birthcity_ID] [bigint] NULL,
	[Birthdate] [datetime] NULL,
	[weddingdate] [datetime] NULL,
	[Spousename] [varchar](100) NULL,
	[SpouseDOB] [varchar](100) NULL,
	[Spouse_Passportno] [varchar](100) NULL,
	[Preffered_Currency_ID] [bigint] NULL,
	[GSTNo] [varchar](100) NULL,
	[Likes] [varchar](1000) NULL,
	[Dislikes] [varchar](1000) NULL,
	[passportno] [varchar](50) NULL,
	[Photopath] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Create_Inventory_Date]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Create_Inventory_Date] @Fdate DATETIME     AS 


DECLARE @DatCol VARCHAR(4000)
SET @DatCol='';

DECLARE @Q VARCHAR(10)
DECLARE @W VARCHAR(10)
SET @Q=char(91)
SET @W=char(93)

 

DECLARE @DAT DATETIME
DECLARE @intFlag INT
SET @intFlag = 0
WHILE (@intFlag <=13)
BEGIN
      SET @DAT=(SELECT dateadd(day,@intFlag,@Fdate))
      
    SET @DatCol=@DatCol+left(datename(month,@DAT),3)+'*'+datename(day,@DAT)+'*'+left(datename(dw,@DAT),3)+'#'+convert(VARCHAR,@DAT,101)+',';

       

 SET @intFlag = @intFlag + 1
     
END


SET @DatCol=SUBSTRING(@DatCol,1,(len(@DatCol)-1))
 
 SELECT @DatCol AS Col
GO
/****** Object:  StoredProcedure [dbo].[Val_RatPlane]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Val_RatPlane] @RoomType_Id BIGINT,@DPlanType_Id BIGINT,@PlanType_Id BIGINT,
@FATE DATETIME,@TDATE DATETIME,@keey VARCHAR(100)=''  AS 

SELECT sum(A)CO FROM (

SELECT count(*)A FROM Mas_RatePlan mpp
INNER JOIN Mas_RatePlan_Det dd ON dd.RatePlan_Id=mpp.RatePlan_Id 
 WHERE FromDate <= @FATE AND ToDate >= @FATE
AND RoomType_Id=@RoomType_Id AND DPlanType_Id=@DPlanType_Id AND PlanType_Id=@PlanType_Id
AND mpp.Keey<>@keey

UNION ALL

SELECT count(*)A FROM Mas_RatePlan mpp
INNER JOIN Mas_RatePlan_Det dd ON dd.RatePlan_Id=mpp.RatePlan_Id

 WHERE FromDate <= @TDATE AND ToDate >= @TDATE
AND RoomType_Id=@RoomType_Id AND DPlanType_Id=@DPlanType_Id AND PlanType_Id=@PlanType_Id
AND mpp.Keey<>@keey
UNION ALL

SELECT count(*)A FROM Temp_RatePlan_Det WHERE FromDate <= @TDATE AND ToDate >= @TDATE
AND Keey=@keey

UNION ALL

SELECT count(*)A FROM Temp_RatePlan_Det WHERE FromDate <= @FATE AND ToDate >= @FATE
AND Keey=@keey



) gg
GO
/****** Object:  StoredProcedure [dbo].[Update_RecTable_Inv]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_RecTable_Inv] @inv_id BIGINT ,@inv BIGINT AS 

UPDATE dbo.Trans_RecTable_Inv
SET 
    
	INV = @inv WHERE Inv_Id = @inv_id
GO
/****** Object:  StoredProcedure [dbo].[Update_RecTable]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_RecTable] @hotel_id BIGINT,@roomtype_id BIGINT,@plantype_id BIGINT,
 @baserate DECIMAL(18,2),@dat DATETIME AS 
 
 
 UPDATE dbo.Trans_RecTable
 
SET  
	
	
	BaseRate = @baserate 
	
   
   
   WHERE Hotel_Id = @hotel_id AND DAT = @dat AND RoomType_Id = @roomtype_id AND 
	PlanType_Id = @plantype_id
GO
/****** Object:  StoredProcedure [dbo].[Update_RatePlan_Det]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE  [dbo].[Update_RatePlan_Det]
 
 
   
	@Keey VARCHAR(100)
	 

AS 
 
 DELETE Temp_RatePlan_Det WHERE Keey=@Keey
 
 INSERT INTO dbo.Temp_RatePlan_Det (RatePlan_Id, FromDate, ToDate, BaseRate, Single, Doubles, Triple,
  Quadruple, AdultRate, ChildRate, FoodPlan_Id, Keey)
  
 SELECT RatePlan_Id, FromDate, ToDate, BaseRate, Single, Doubles, Triple,
  Quadruple, AdultRate, ChildRate, FoodPlan_Id, Keey FROM Mas_RatePlan_Det WHERE Keey=@Keey

SELECT *,convert(VARCHAR,FromDate,106)FD,convert(VARCHAR,ToDate,106)TD FROM Temp_RatePlan_Det dd
INNER JOIN Mas_FoodPlan mf ON mf.FoodPlan_Id=dd.FoodPlan_Id 
 WHERE Keey=@Keey
GO
/****** Object:  StoredProcedure [dbo].[Up_TaxSetup]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Up_TaxSetup] @fromamt DECIMAL(18,2),@toamt DECIMAL(18,2),
 @per DECIMAL(18,2),@IDD BIGINT AS 
 
 
 UPDATE dbo.Mas_TaxSetup_Det
SET 
    
	FromAmt = @fromamt,
	ToAmt = @toamt,
	Per = @per WHERE TaxSetup_Det_Id = @IDD
	
 
 --SELECT 'Successfully Saved' AS MGS
GO
/****** Object:  StoredProcedure [dbo].[Exec_RoomType]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_RoomType] 
 @RoomType VARCHAR (100) ,
 @Hotel_Id BIGINT,
 @PrintingName VARCHAR(100),
 @Adults BIGINT,
 @Amount DECIMAL(18,2),
 @IMGKEY VARCHAR(1000),
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_RoomType (RoomType,Hotel_Id,PrintingName,Adults,Amount,ADDDATE,IMGKEY)
	  VALUES ( @RoomType,@Hotel_Id,@PrintingName,@Adults,@Amount,getdate(),@IMGKEY)
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
    UPDATE dbo.Mas_RoomType
SET 
	RoomType = @RoomType,
	PrintingName=@PrintingName,
	Adults=@Adults,
	Amount=@Amount
	 WHERE RoomType_Id = @IDD

   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
   DELETE FROM Mas_RoomType WHERE RoomType_Id=@IDD
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_Room_Facility]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_Room_Facility] @roomno VARCHAR(100),
 @facility_id BIGINT,@chk BIGINT AS 
 
 INSERT INTO dbo.Mas_Room_Facility (RoomNo, Facility_Id, Chk)
VALUES (@roomno, @facility_id, @chk)
GO
/****** Object:  StoredProcedure [dbo].[Exec_Room]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_Room] 
 @RoomNo    VARCHAR (100),
 @Floor_Id BIGINT,
 @Block_Id BIGINT,
 @BedType_Id BIGINT,
 @Hotel_Id BIGINT,
 @uid BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	 
	 INSERT INTO dbo.Mas_Room (RoomNo, Floor_Id, Block_Id, BedType_Id, ADDDATE,
	    Uid, Hotel_Id)
VALUES (@roomno, @floor_id, @block_id, @bedtype_id, getdate(),   @uid, @Hotel_Id)
	 
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
  UPDATE dbo.Mas_Room
SET 
	RoomNo = @roomno,
	Floor_Id = @floor_id,
	Block_Id = @block_id,
	BedType_Id = @bedtype_id,
	 
	EDDATE = getdate(),
	Uid = @uid,
	Hotel_Id = @hotel_id WHERE Room_Id = @IDD


   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
   
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_RevenueGroup]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Exec_RevenueGroup] 
@RevenueGroup VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
@IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_RevenueGroup (RevenueGroup,Active,Uid,Hotel_Id,Addate)
	  VALUES (@RevenueGroup,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_RevenueGroup
SET 
	RevenueGroup = @RevenueGroup,
	Active = @active,
    Edate = getdate(),
	Uid = @uid  WHERE RevenueGroup_Id = @IDD
   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    UPDATE Mas_RevenueGroup SET Active=1 WHERE RevenueGroup_Id=@IDD
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_Revenue]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Exec_Revenue] 
    @RevenueHead      VARCHAR (150) ,
	@RevenueShortName VARCHAR (150) ,
	@RevenueGroup_Id  BIGINT ,
	@Taxhead          VARCHAR (100) ,
	@Slabbased        BIGINT ,
	@Taxpercentage    DECIMAL (18, 2) ,
	@HSNSAC_Code      VARCHAR (100) ,
	@RevenueNature    BIGINT ,
	@Active           BIGINT ,
	@BillGroup_Id     BIGINT ,
	@Hotel_Id         BIGINT ,
    @Uid BIGINT,
    @IDD NVARCHAR(10),
    @SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN

    INSERT INTO dbo.Mas_Revenue (RevenueHead, RevenueShortName, RevenueGroup_Id,
      Taxhead, Slabbased, Taxpercentage, [HSN/SAC_Code], RevenueNature, Active,
      BillGroup_Id, Hotel_Id, Addate, Uid)
    VALUES (@revenuehead, @revenueshortname, @revenuegroup_id, @taxhead, @slabbased,
    @taxpercentage,@HSNSAC_Code, @revenuenature, @active, @billgroup_id,
    @Hotel_Id, getdate() , @Uid)
    SELECT 'Successfully Saved' AS MGS
	
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 UPDATE dbo.Mas_Revenue
SET 
	RevenueHead = @revenuehead,
	RevenueShortName = @revenueshortname,
	RevenueGroup_Id = @revenuegroup_id,
	Taxhead = @taxhead,
	Slabbased = @slabbased,
	Taxpercentage = @taxpercentage,
	[HSN/SAC_Code] = @HSNSAC_Code,
	RevenueNature = @revenuenature,
 
	BillGroup_Id = @billgroup_id,
  
    Edate = getdate(),
	Uid = @uid WHERE Revenue_Id = @IDD

 
   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    UPDATE Mas_Revenue SET Active=1 WHERE Revenue_Id=@IDD
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_ReservationMode]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_ReservationMode] 
 @ReservationMode VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_ReservationMode (ReservationMode,Active,Uid,Hotel_Id,Addate)
	  VALUES (@ReservationMode,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_ReservationMode
SET 
	ReservationMode = @ReservationMode,
	Active = @active,
    
	Edate = getdate(),
	Uid = @uid  WHERE ReservationMode_Id = @IDD


   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_RatePlan]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Exec_RatePlan] 
    @RoomType_Id      BIGINT ,
	@PlanType_Id      BIGINT ,
	@DPlanType_Id     BIGINT ,
	@TariffIncOfTaxes BIGINT ,
	@TariffIncOfPlan  BIGINT ,
	@PlanIncTax       BIGINT ,
	@Mon              BIGINT ,
	@Tue              BIGINT ,
	@Wed              BIGINT ,
	@Thu              BIGINT ,
	@Fri              BIGINT ,
	@Sat              BIGINT ,
	@Sun              BIGINT ,
  	@Hotel_Id         BIGINT  ,
  	@Uid  BIGINT,
    @Keeys VARCHAR(100),
    @IDD NVARCHAR(10),
    @SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  
	  INSERT INTO dbo.Mas_RatePlan (Uid,RoomType_Id, PlanType_Id, DPlanType_Id, TariffIncOfTaxes, 
	  TariffIncOfPlan, PlanIncTax, Keey, Hotel_Id,Mon,Tue,Wed,Thu,Fri,Sat,Sun,  ADDDATE)
VALUES (@Uid,@roomtype_id, @plantype_id, @dplantype_id, @tariffincoftaxes, @tariffincofplan, 
@planinctax, @Keeys, @hotel_id,@Mon,@Tue,@Wed,@Thu,@Fri,@Sat,@Sun,   getdate())
	  
	  INSERT INTO dbo.Mas_RatePlan_Det (RatePlan_Id, FromDate, ToDate, BaseRate, Single, Doubles,
	   Triple, Quadruple, AdultRate, ChildRate, FoodPlan_Id,AdultPlanAmt, ChildPlanAmt, WeekSingle, WeekDoubles, WeekTriple, WeekQuadruple, Keey)
	   
	   SELECT   ( SELECT RatePlan_Id FROM Mas_RatePlan WHERE Keey=@Keeys )RatePlan_Id ,FromDate, ToDate, BaseRate, Single, Doubles,
	   Triple, Quadruple, AdultRate, ChildRate, FoodPlan_Id,AdultPlanAmt, ChildPlanAmt, WeekSingle, WeekDoubles, WeekTriple, WeekQuadruple, Keey FROM Temp_RatePlan_Det
	   WHERE Keey=@Keeys

	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 UPDATE dbo.Mas_RatePlan
SET 
	RoomType_Id = @roomtype_id,
	PlanType_Id = @plantype_id,
	DPlanType_Id = @dplantype_id,
	TariffIncOfTaxes = @tariffincoftaxes,
	TariffIncOfPlan = @tariffincofplan,
	Uid=@Uid,
	EDDATE =getdate(),
	PlanIncTax = @planinctax
   WHERE RatePlan_Id = @IDD
   
       DELETE Mas_RatePlan_Det WHERE Keey=@Keeys
   
       INSERT INTO dbo.Mas_RatePlan_Det (RatePlan_Id, FromDate, ToDate, BaseRate, Single, Doubles,
	   Triple, Quadruple, AdultRate, ChildRate, FoodPlan_Id, Keey)
	   
   	   SELECT   ( SELECT RatePlan_Id FROM Mas_RatePlan WHERE Keey=@Keeys )RatePlan_Id ,FromDate,
   	   ToDate, BaseRate, Single, Doubles,
	   Triple, Quadruple, AdultRate, ChildRate, FoodPlan_Id, Keey FROM Temp_RatePlan_Det
	   WHERE Keey=@Keeys
    

   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
   UPDATE    Mas_RatePlan SET Act=1 WHERE RatePlan_Id=@IDD
    SELECT 'Successfully Deactive' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_PlanType]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_PlanType] 
    @RateCode     VARCHAR (50) ,
	@RateCaption  VARCHAR (150) ,
    @ShortName    VARCHAR (150) ,
    @SCCB         BIGINT,
    @DEFA      BIGINT,
    @Act          BIGINT,
    @PubTarriff   BIGINT,
    @NetTarriff   BIGINT,
	@Hotel_Id     BIGINT ,
    @IDD NVARCHAR(10),
    @SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  
	  INSERT INTO dbo.Mas_PlanType (RateCode, RateCaption, ShortName, SCCB, DEFA, Act, PubTarriff, NetTarriff, Hotel_Id,   ADDDATE)
VALUES (@ratecode, @ratecaption, @shortname, @sccb, @defa, @act, @pubtarriff, @nettarriff, @hotel_id,   getdate())
	  
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 UPDATE dbo.Mas_PlanType
SET  
	RateCode = @ratecode,
	RateCaption = @ratecaption,
	ShortName = @shortname,
	SCCB = @sccb,
	DEFA = @defa,
	Act = @act,
	PubTarriff = @pubtarriff,
	NetTarriff = @nettarriff 
   WHERE PlanType_Id = @IDD

   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
   DELETE FROM Mas_PlanType WHERE PlanType_Id=@IDD
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_PayMode]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_PayMode] 
 @PayMode VARCHAR (100) ,

 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_PayMode (PayMode,ADDDATE)
	  VALUES ( @PayMode,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
    UPDATE dbo.Mas_PayMode
SET 
	PayMode = @PayMode WHERE PayMode_Id = @IDD

   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
   DELETE FROM Mas_PayMode WHERE PayMode_Id=@IDD
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_MarketSegment]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_MarketSegment] 
 @MarketSegment VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_MarketSegment (MarketSegment,Active,Uid,Hotel_Id,Addate)
	  VALUES (@MarketSegment,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_MarketSegment
SET 
	MarketSegment = @MarketSegment,
	Active = @active,
    
	Edate = getdate(),
	Uid = @uid  WHERE MarketSegment_Id = @IDD


   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_GuestType]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_GuestType] 
 @GuestType VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_GuestType (GuestType,Active,Uid,Hotel_Id,Addate)
	  VALUES (@GuestType,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_GuestType
SET 
	GuestType = @GuestType,
	Active = @active,
    
	Edate = getdate(),
	Uid = @uid  WHERE GuestType_Id = @IDD


   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_GuestStatus]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_GuestStatus] 
 @GuestStatus VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_GuestStatus (GuestStatus,Active,Uid,Hotel_Id,Addate)
	  VALUES (@GuestStatus,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_GuestStatus
SET 
	GuestStatus = @GuestStatus,
	Active = @active,
    
	Edate = getdate(),
	Uid = @uid  WHERE GuestStatus_Id = @IDD


   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Search_Customer]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_Customer] @Receiver VARCHAR(150) AS 

SELECT * FROM (

SELECT Firstname,Lastname,Mobile,Email_ID,CustomerCode FROM Mas_Customer
 

)gg WHERE Firstname LIKE ''+@Receiver+'%'
GO
/****** Object:  StoredProcedure [dbo].[Get_RoomType]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_RoomType]  @Hotel_Id BIGINT ,@ID BIGINT=0 AS 


 SELECT * FROM Mas_RoomType
 WHERE RoomType_Id =(CASE WHEN @ID=0 THEN RoomType_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_Room_Type]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Get_Room_Type]  @Hotel_Id BIGINT ,@ID BIGINT=0 AS 


 SELECT * FROM Mas_Room
 WHERE RoomType_Id  =@ID
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_Room_Rate_Avb]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Get_Room_Rate_Avb] @FADE DATETIME,@TDATE DATETIME,@ID BIGINT AS 


SELECT * FROM Mas_RatePlan Mr
INNER JOIN Mas_PlanType mpt ON mpt.PlanType_Id=Mr.PlanType_Id
LEFT OUTER  JOIN Mas_RatePlan_Det det ON det.RatePlan_Id=Mr.RatePlan_Id
INNER JOIN Mas_Room Roo ON Roo.RoomType_Id=Mr.RoomType_Id 
INNER JOIN Mas_RoomType RT ON RT.RoomType_Id=Roo.RoomType_Id
WHERE det.FromDate<= @FADE AND det.ToDate >=@TDATE AND Roo.Room_Id=@ID
GO
/****** Object:  StoredProcedure [dbo].[Get_Room_Avb]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Room_Avb] @RoomType_Id BIGINT,@Hotel_Id BIGINT ,@DAT DATETIME AS 
 
 
 SELECT * FROM Trans_RecTable_Inv WHERE RoomType_Id=@RoomType_Id AND Hotel_Id=@Hotel_Id
 
 AND DAT BETWEEN @DAT AND dateadd(day,13,@DAT)
GO
/****** Object:  StoredProcedure [dbo].[Get_Room]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Room]  @Hotel_Id BIGINT ,@ID BIGINT=0 AS 


 SELECT * FROM Mas_Room
 WHERE Room_Id  =(CASE WHEN @ID=0 THEN Room_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_RevenueGroup]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Get_RevenueGroup] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_RevenueGroup WHERE RevenueGroup_Id =(CASE WHEN @ID=0 THEN RevenueGroup_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_Revenue]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Get_Revenue] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT *,[HSN/SAC_Code] AS HSNSAC_Code FROM Mas_Revenue WHERE Revenue_Id =(CASE WHEN @ID=0 THEN Revenue_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_ReservationMode]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_ReservationMode] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_ReservationMode WHERE ReservationMode_Id =(CASE WHEN @ID=0 THEN ReservationMode_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_RatePlan]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_RatePlan] @Hotel_Id BIGINT ,@ID BIGINT=0 AS 


 SELECT mrp.*,mr.RoomType RT,mpt.RateCaption RC FROM Mas_RatePlan mrp
 INNER JOIN mas_roomtype mr ON mr.RoomType_Id=mrp.RoomType_Id
 INNER JOIN Mas_PlanType MPT ON MPT.PlanType_Id=mrp.PlanType_Id
 
 WHERE mrp.RatePlan_Id =(CASE WHEN @ID=0 THEN mrp.RatePlan_Id ELSE @ID END )
 AND mrp.Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_PlanType]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_PlanType] @Hotel_Id BIGINT ,@ID BIGINT=0 AS 


 SELECT * FROM Mas_PlanType
 WHERE PlanType_Id =(CASE WHEN @ID=0 THEN PlanType_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_PayMode]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_PayMode] @ID BIGINT=0 AS 


 SELECT * FROM Mas_PayMode 
 WHERE PayMode_Id =(CASE WHEN @ID=0 THEN PayMode_Id ELSE @ID END )
GO
/****** Object:  StoredProcedure [dbo].[Get_MarketSegment]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_MarketSegment] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_MarketSegment WHERE MarketSegment_Id =(CASE WHEN @ID=0 THEN MarketSegment_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_GuestType]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_GuestType] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_GuestType WHERE GuestType_Id =(CASE WHEN @ID=0 THEN GuestType_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_GuestStatus]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_GuestStatus] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_GuestStatus WHERE GuestStatus_Id =(CASE WHEN @ID=0 THEN GuestStatus_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_GstType]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Get_GstType] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_GstType WHERE GstType_Id =(CASE WHEN @ID=0 THEN GstType_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_FoodPlan]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_FoodPlan] @Hotel_Id BIGINT ,@ID BIGINT=0 AS 


 SELECT * FROM Mas_FoodPlan
 WHERE FoodPlan_Id =(CASE WHEN @ID=0 THEN FoodPlan_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_Floor]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Floor]  @Hotel_Id BIGINT ,@ID BIGINT=0 AS 


 SELECT * FROM Mas_Floor
 WHERE Floor_Id  =(CASE WHEN @ID=0 THEN Floor_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_Facility]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Facility]  @Hotel_Id BIGINT ,@ID BIGINT=0 AS 


 SELECT * FROM Mas_HotelFacility
 WHERE Facility_Id =(CASE WHEN @ID=0 THEN Facility_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_CompanyType]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_CompanyType] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_CompanyType WHERE CompanyType_Id =(CASE WHEN @ID=0 THEN CompanyType_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_CompanyGroup]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_CompanyGroup] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_CompanyGroup WHERE CompanyGroup_Id =(CASE WHEN @ID=0 THEN CompanyGroup_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_Company]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Get_Company] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_Company WHERE Company_Id =(CASE WHEN @ID=0 THEN Company_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_BusinessSource]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_BusinessSource] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_BusinessSource WHERE BusinessSource_Id =(CASE WHEN @ID=0 THEN BusinessSource_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_Booking]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Booking] @Hotel_Id BIGINT,@ID BIGINT=0,@FLG BIGINT=0  AS 
 
 SELECT *,
 convert(varchar,bb.BookingDate,106)Bdate,
 convert(varchar,bb.Checkin,106)Cdate,
 convert(varchar,bb.Checkout,106)Codate 
 
 FROM Trans_Booking bb
 INNER JOIN Mas_Customer mc ON mc.Customer_ID=bb.Customer_Id
 INNER JOIN Mas_RoomType Rm ON Rm.RoomType_Id=bb.RoomType_Id
 WHERE bb.Hotel_Id=@Hotel_Id AND
 bb.Booking_Id=(CASE WHEN @ID=0 THEN bb.Booking_Id ELSE @ID END )
 AND isnull(bb.Flag,0)=(CASE WHEN @FLG=0 THEN isnull(bb.Flag,0) ELSE @FLG END )
GO
/****** Object:  StoredProcedure [dbo].[Get_Block]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Block]  @Hotel_Id BIGINT ,@ID BIGINT=0 AS 


 SELECT * FROM Mas_Block
 WHERE Block_Id  =(CASE WHEN @ID=0 THEN Block_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_BillingInstruction]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_BillingInstruction] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_BillingInstruction WHERE BillingInstruction_Id =(CASE WHEN @ID=0 THEN BillingInstruction_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_BillGroup]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Get_BillGroup] @Hotel_Id BIGINT, @ID BIGINT=0 AS 
 
 SELECT * FROM Mas_BillGroup WHERE BillGroup_Id =(CASE WHEN @ID=0 THEN BillGroup_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Get_BedType]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_BedType]  @Hotel_Id BIGINT ,@ID BIGINT=0 AS 


 SELECT * FROM Mas_BedType
 WHERE BedType_Id  =(CASE WHEN @ID=0 THEN BedType_Id ELSE @ID END )
 AND Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Gen_Sub]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Gen_Sub]  @MID BIGINT, @ID BIGINT AS 


SELECT * FROM SubMenu WHERE Menu_Id=@MID ORDER BY Ord
GO
/****** Object:  StoredProcedure [dbo].[Gen_Menu]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Gen_Menu] @ID BIGINT AS 


SELECT * FROM Menu WHERE Act=1 ORDER BY Ord
GO
/****** Object:  StoredProcedure [dbo].[Exec_GstType]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Exec_GstType] 
@GstType VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
@IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_GstType (GstType,Active,Uid,Hotel_Id,Addate)
	  VALUES (@GstType,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_GstType
SET 
	GstType = @GstType,
	Active = @active,
    Edate = getdate(),
	Uid = @uid  WHERE GstType_Id = @IDD
   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    UPDATE Mas_GstType SET Active=1 WHERE GstType_Id=@IDD
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_FoodPlan]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_FoodPlan] 
    @FoodPlan     VARCHAR (100) ,
	@ShortName    VARCHAR (100) ,
	@Active       BIGINT,
	@Hotel_Id     BIGINT ,
    @IDD          NVARCHAR(10),
    @SType        VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
    INSERT INTO dbo.Mas_FoodPlan (FoodPlan, ShortName, Active, ADDDATE,  Hotel_Id)
    VALUES (@foodplan, @shortname, @active, getdate(),  @hotel_id)
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 UPDATE dbo.Mas_FoodPlan
SET
	FoodPlan = @foodplan,
	ShortName = @shortname,
	Active = @active  WHERE  FoodPlan_Id = @IDD


   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
   DELETE FROM Mas_FoodPlan WHERE FoodPlan_Id=@IDD
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_Floor]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_Floor] 
 @Floor VARCHAR (100) ,
 @Hotel_Id BIGINT,
 @uid BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO dbo.Mas_Floor (Floor, ADDDATE, Uid, Hotel_Id)
      VALUES (@floor, getdate(), @uid, @hotel_id)
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 UPDATE dbo.Mas_Floor
SET  
	Floor = @floor,
	 
	EDDATE = getdate(),
	Uid = @uid 
  WHERE  Floor_Id = @IDD

   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
   
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_Facility]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_Facility] 
 @Facility VARCHAR (100) ,
 @Hotel_Id BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_HotelFacility (Facility,Hotel_Id,ADDDATE)
	  VALUES ( @Facility,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
    UPDATE dbo.Mas_HotelFacility
SET 
	Facility = @Facility WHERE Facility_Id = @IDD

   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
   DELETE FROM Mas_HotelFacility WHERE Facility_Id=@IDD
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_CompanyType]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_CompanyType] 
 @CompanyType VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_CompanyType (CompanyType,Active,Uid,Hotel_Id,Addate)
	  VALUES (@CompanyType,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_CompanyType
SET 
	CompanyType = @companytype,
	Active = @active,
    
	Edate = getdate(),
	Uid = @uid  WHERE CompanyType_Id = @IDD


   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_CompanyGroup]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_CompanyGroup] 
@CompanyGroup VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
@IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_CompanyGroup (CompanyGroup,Active,Uid,Hotel_Id,Addate)
	  VALUES (@CompanyGroup,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_CompanyGroup
SET 
	CompanyGroup = @CompanyGroup,
	Active = @active,
    Edate = getdate(),
	Uid = @uid  WHERE CompanyGroup_Id = @IDD
   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_Company]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Exec_Company] 
	@Company_code        VARCHAR (150) ,
	@Company             VARCHAR (150) ,
	@Company_Shortname   VARCHAR (150) ,
	@Company_Billingname VARCHAR (150) ,
	@Address1            VARCHAR (150) ,
	@Address2            VARCHAR (150) ,
	@Address3            VARCHAR (150) ,
	@City                VARCHAR (150) ,
	@State               VARCHAR (150) ,
	@Country             VARCHAR (150) ,
	@Zipcode             VARCHAR (150) ,
	@Phoneno             VARCHAR (150) ,
	@Fax                 VARCHAR (150) ,
	@E_mail              VARCHAR (150) ,
	@Contactno           VARCHAR (150) ,
	@Cotactperson        VARCHAR (50) ,
	@Designation         VARCHAR (50) ,
	@CompanyType_Id      INT ,
	@Contactmobileno     INT ,
	@CompanyGroup_Id     VARCHAR (15) ,
	@Discount            DECIMAL (18, 2) ,
 	@MarketSegment_Id    INT ,
	@BusinessSource_Id   INT ,
	@GuestType_Id        INT ,
	@PayMode_Id          INT ,
	@ReservationMode_Id  INT ,
	@Gstno               VARCHAR (20) ,
	@Creditdays          INT ,
	@CreditLimit         DECIMAL (18, 2) ,
	@GstType_Id          INT ,
    @Remarks             VARCHAR(500),
    @Inactive  BIGINT,
    @Uid BIGINT,
    @Hotel_Id BIGINT,
    @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN

   INSERT INTO dbo.Mas_Company (Company_code, Company, Company_Shortname, Company_Billingname, 
   Address1, Address2, Address3, City, State, Country, Zipcode, Phoneno, 
   Fax, E_mail, Contactno, Cotactperson, Designation, CompanyType_Id, 
   Contactmobileno, CompanyGroup_Id, Discount, 
   MarketSegment_Id, BusinessSource_Id, GuestType_Id, PayMode_Id,
    ReservationMode_Id, Gstno, Creditdays, CreditLimit, GstType_Id, 
    Remarks, Createdatetime, Createuser_ID,
     Inactive, Hotel_Id)
VALUES (@company_code, @company, @company_shortname, @company_billingname, 
@address1, @address2, @address3, @city, @state, @country, @zipcode, @phoneno,
 @fax, @e_mail, @contactno, @cotactperson, @designation, @companytype_id,
  @contactmobileno, @companygroup_id, @discount, 
  @marketsegment_id, @businesssource_id, @guesttype_id, @paymode_id,
   @reservationmode_id, @gstno, @creditdays, @creditlimit, @gsttype_id, 
     @remarks, getdate(),
    @Uid, @Inactive, @Hotel_Id)

	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 

   UPDATE dbo.Mas_Company
SET 
	Company_code = @company_code,
	Company = @company,
	Company_Shortname = @company_shortname,
	Company_Billingname = @company_billingname,
	Address1 = @address1,
	Address2 = @address2,
	Address3 = @address3,
	City = @city,
	State = @state,
	Country = @country,
	Zipcode = @zipcode,
	Phoneno = @phoneno,
	Fax = @fax,
	E_mail = @e_mail,
	Contactno = @contactno,
	Cotactperson = @cotactperson,
	Designation = @designation,
	CompanyType_Id = @companytype_id,
	Contactmobileno = @contactmobileno,
	CompanyGroup_Id = @companygroup_id,
	Discount = @discount,
    
	MarketSegment_Id = @marketsegment_id,
	BusinessSource_Id = @businesssource_id,
	GuestType_Id = @guesttype_id,
	PayMode_Id = @paymode_id,
	ReservationMode_Id = @reservationmode_id,
	Gstno = @gstno,
	Creditdays = @creditdays,
	CreditLimit = @creditlimit,
	GstType_Id = @gsttype_id,
  
	Remarks = @remarks,
	Createdatetime = getdate(),
	Createuser_ID = @Uid,
	Inactive = @inactive
    

   WHERE Company_Id = @IDD

   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    UPDATE Mas_Company SET Inactive=1 WHERE GstType_Id=@IDD
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_BusinessSource]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_BusinessSource] 
 @BusinessSource VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_BusinessSource (BusinessSource,Active,Uid,Hotel_Id,Addate)
	  VALUES (@BusinessSource,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_BusinessSource
SET 
	BusinessSource = @BusinessSource,
	Active = @active,
    
	Edate = getdate(),
	Uid = @uid  WHERE BusinessSource_Id = @IDD


   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_Block]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_Block] 
 @Block VARCHAR (100) ,
 @Hotel_Id BIGINT,
 @uid BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO dbo.Mas_Block (Block, ADDDATE, Uid, Hotel_Id)
      VALUES (@Block, getdate(), @uid, @hotel_id)
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 UPDATE dbo.Mas_Block
SET  
	Block = @Block,
	 
	EDDATE = getdate(),
	Uid = @uid 
  WHERE  Block_Id = @IDD

   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
   
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_BillingInstruction]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_BillingInstruction] 
 @BillingInstruction VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_BillingInstruction (BillingInstruction,Active,Uid,Hotel_Id,Addate)
	  VALUES (@BillingInstruction,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_BillingInstruction
SET 
	BillingInstruction = @BillingInstruction,
	Active = @active,
    
	Edate = getdate(),
	Uid = @uid  WHERE BillingInstruction_Id = @IDD


   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_BillGroup]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[Exec_BillGroup] 
@BillGroup VARCHAR (100) ,
@Active BIGINT ,
@Hotel_Id BIGINT,
@Uid BIGINT,
@IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO Mas_BillGroup (BillGroup,Active,Uid,Hotel_Id,Addate)
	  VALUES (@BillGroup,@Active,@Uid,@Hotel_Id,getdate())
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 
 UPDATE dbo.Mas_BillGroup
SET 
	BillGroup = @BillGroup,
	Active = @active,
    Edate = getdate(),
	Uid = @uid  WHERE BillGroup_Id = @IDD
   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
    UPDATE Mas_BillGroup SET Active=1 WHERE BillGroup_Id=@IDD
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exec_BedType]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Exec_BedType] 
 @BedType VARCHAR (100) ,
 @Hotel_Id BIGINT,
 @uid BIGINT,
 @IDD NVARCHAR(10),@SType VARCHAR(100) AS 
 
 BEGIN
 
  IF @SType = 'SAVE'
	BEGIN
	  INSERT INTO dbo.Mas_BedType (BedType, ADDDATE, Uid, Hotel_Id)
      VALUES (@BedType, getdate(), @uid, @hotel_id)
	 SELECT 'Successfully Saved' AS MGS
	END 
	
  IF @SType = 'UPDATE'
  BEGIN
    
 UPDATE dbo.Mas_BedType
SET  
	BedType = @BedType,
	 
	EDDATE = getdate(),
	Uid = @uid 
  WHERE  BedType_Id = @IDD

   
    SELECT 'Successfully Updated' AS MGS
    
  END
  
  IF @SType = 'DELETE'
  BEGIN
    
   
    SELECT 'Successfully Deleted' AS MGS
    
  END
  	
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Exe_RatePlan_Det]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE  [dbo].[Exe_RatePlan_Det]
 
 
	@FromDate       DATETIME ,
	@ToDate         DATETIME ,
	@BaseRate       DECIMAL (18, 2) ,
	@Single         DECIMAL (18, 2) ,
	@Doubles        DECIMAL (18, 2) ,
	@Triple         DECIMAL (18, 2) ,
	@Quadruple      DECIMAL (18, 2) ,
	@AdultRate      DECIMAL (18, 2) ,
	@ChildRate      DECIMAL (18, 2) ,
	@FoodPlan_Id    BIGINT ,
	@AdultPlanAmt   DECIMAL (18, 2) ,
	@ChildPlanAmt   DECIMAL (18, 2) ,
	@WeekSingle     DECIMAL (18, 2) ,
	@WeekDoubles    DECIMAL (18, 2) ,
	@WeekTriple     DECIMAL (18, 2) ,
	@WeekQuadruple  DECIMAL (18, 2) ,
	@Keey           VARCHAR (100)  

AS 
 
 
INSERT INTO dbo.Temp_RatePlan_Det ( FromDate, ToDate, BaseRate, Single, Doubles, Triple, Quadruple, 
AdultRate, ChildRate, FoodPlan_Id,AdultPlanAmt,ChildPlanAmt,WeekSingle,
WeekDoubles,WeekTriple,WeekQuadruple, Keey)
VALUES ( @fromdate, @todate, @baserate, @single, @doubles, @triple, @quadruple, @adultrate,
 @childrate, @foodplan_id,@AdultPlanAmt,@ChildPlanAmt,@WeekSingle,@WeekDoubles,@WeekTriple,@WeekQuadruple, @keey)



SELECT *,convert(VARCHAR,FromDate,106)FD,convert(VARCHAR,ToDate,106)TD FROM Temp_RatePlan_Det dd
INNER JOIN Mas_FoodPlan mf ON mf.FoodPlan_Id=dd.FoodPlan_Id 
 WHERE Keey=@Keey
GO
/****** Object:  StoredProcedure [dbo].[EditHotelFacilit]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EditHotelFacilit] @Room VARCHAR(100),@Hostel_Id BIGINT AS 

SELECT * FROM (

SELECT ff.Facility,ff.Facility_Id,fc.Chk FROM Mas_HotelFacility ff
INNER  JOIN Mas_Room_Facility fc ON fc.Facility_Id=ff.Facility_Id
WHERE fc.RoomNo=@Room AND ff.Hotel_Id=@Hostel_Id

UNION ALL 

SELECT Facility,Facility_Id,0 Chk FROM Mas_HotelFacility WHERE Facility_Id NOT IN (
SELECT Facility_Id FROM Mas_Room_Facility WHERE RoomNo=101

) AND Hotel_Id=@Hostel_Id

) kk ORDER BY Facility
GO
/****** Object:  StoredProcedure [dbo].[Delete_RatePlan_Det]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE  [dbo].[Delete_RatePlan_Det]
 
 
    
	@RatePlanDet_Id   BIGINT ,
	@Keey VARCHAR(100)
	 

AS 
 
 DELETE Temp_RatePlan_Det WHERE RatePlanDet_Id=@RatePlanDet_Id


SELECT *,convert(VARCHAR,FromDate,106)FD,convert(VARCHAR,ToDate,106)TD FROM Temp_RatePlan_Det dd
INNER JOIN Mas_FoodPlan mf ON mf.FoodPlan_Id=dd.FoodPlan_Id 
 WHERE Keey=@Keey
GO
/****** Object:  StoredProcedure [dbo].[del_Room_Facility]    Script Date: 10/01/2019 11:34:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[del_Room_Facility] @roomno VARCHAR(100) AS 
 
DELETE FROM Mas_Room_Facility WHERE RoomNo=@roomno
GO
/****** Object:  StoredProcedure [dbo].[M_Login]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[M_Login] @mob VARCHAR(200),@Pass VARCHAR(200),@Mcode VARCHAR(20) AS

SELECT * FROM
   Mas_Hotel  
 WHERE MobileNo=@mob AND Pass=@Pass AND HCode=@Mcode
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Login] @Email VARCHAR(200),@Pass VARCHAR(20) AS

SELECT * FROM
 UserTable uu
INNER JOIN Mas_Hotel ss ON ss.Hotel_Id=uu.HotelId
 WHERE EmailId=@Email AND Password=@Pass
GO
/****** Object:  StoredProcedure [dbo].[Inv_TaxSetup]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Inv_TaxSetup] @Revenue_Id BIGINT,@Hotel_Id BIGINT,@uid BIGINT AS
 
 DECLARE @COU BIGINT
  DECLARE @IDD BIGINT
  
 SET @COU =( SELECT count(*) FROM Mas_TaxSetup WHERE Revenue_Id=@Revenue_Id AND Hotel_Id=@Hotel_Id )
 
 IF @COU=0
 BEGIN 
 
INSERT INTO dbo.Mas_TaxSetup (Revenue_Id, Hotel_Id, UID, ADDDATE)
VALUES (@Revenue_Id, @Hotel_Id, @uid, getdate())


SET @IDD=(SELECT TaxSetup_Id FROM Mas_TaxSetup WHERE Revenue_Id=@Revenue_Id AND Hotel_Id=@Hotel_Id)

DECLARE @site_value INT;
SET @site_value = 0;
WHILE @site_value < 10
BEGIN
    
    INSERT INTO dbo.Mas_TaxSetup_Det (TaxSetup_Id, FromAmt, ToAmt, Per)
VALUES (@IDD, 0, 0, 0)
    
   SET @site_value = @site_value + 1;
END;


END 



SELECT * FROM Mas_TaxSetup txx
INNER JOIN Mas_TaxSetup_Det mtd ON mtd.TaxSetup_Id=txx.TaxSetup_Id
WHERE txx.Revenue_Id=@Revenue_Id AND txx.Hotel_Id=@Hotel_Id
GO
/****** Object:  StoredProcedure [dbo].[Inv_Receipt]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Inv_Receipt] 
 
 
    
 
	@OrderNo      VARCHAR (100),
	@Name_on_card VARCHAR (100),
	@Issuing_bank VARCHAR (100),
	@CardCategory VARCHAR (100),
	@Easepayid    VARCHAR (100),
	@Amount       DECIMAL (18, 2)
	    AS 
    

DECLARE @order_id BIGINT
DECLARE @SUB DECIMAL(18,2)
DECLARE @GST DECIMAL(18,2)
DECLARE @COUNT BIGINT

SET @order_id=(SELECT Order_ID FROM Trans_Order WHERE  OrderNo=@OrderNo)
SET @SUB= (@Amount/118)*100
SET @GST= (@SUB*9)/100


 DECLARE @ORD VARCHAR (100)
 
SET @ORD=(SELECT 'INV'+RIGHT('0000'+convert(VARCHAR(10),isnull(max(dbo.GetNum(RecNo)),0)+1),5) AS NO 
FROM Trans_Recipt  )
 
SET @COUNT=(SELECT count(*)   FROM Trans_Recipt WHERE Order_Id=@order_id)


IF @COUNT=0
BEGIN

INSERT INTO dbo.Trans_Recipt (Order_Id, ReceiptDate, RecNo, Name_on_card, Issuing_bank, CardCategory, Easepayid, 
Amount, CGST, SGST, Flag,SubTotal)
VALUES (@order_id, getdate(), @ORD, @name_on_card, @issuing_bank, @cardcategory, @easepayid,
 @amount, @GST, @GST, 0,@SUB)
 
 END 
 
 SELECT *,convert(VARCHAR,ReceiptDate,106)+' '+convert(VARCHAR,ReceiptDate,108) Bdate,
 convert(VARCHAR,oo.Checkin,106) CK,convert(VARCHAR,oo.Checkout,106) CKO,
 convert(VARCHAR,ReceiptDate,106)RD FROM Trans_Recipt rr 
 INNER JOIN Trans_Order oo ON oo.Order_ID=rr.Order_Id
 INNER JOIN Mas_RoomType vv ON vv.IMGKEY=oo.RoomType_Id
 
 WHERE rr.Order_Id=@order_id
GO
/****** Object:  StoredProcedure [dbo].[Inv_Order]    Script Date: 10/01/2019 11:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Inv_Order] 
  
  	@FirstName VARCHAR (200)  ,
    @LastName VARCHAR (200)  ,
    @Mobile VARCHAR (200)  ,
    @Email VARCHAR (200)  ,
	@Checkin       DATETIME  ,
	@Checkout      DATETIME  ,
	@AdultCount    BIGINT  ,
	@ChildCount    BIGINT  ,
	@Noofrooms     BIGINT  ,
	@RoomType_Id   BIGINT  ,
	@Amount DECIMAL (18, 2)   
 AS 

 DECLARE @ORD VARCHAR (100)
 
SET @ORD=(SELECT 'ORD'+RIGHT('0000'+convert(VARCHAR(10),isnull(max(dbo.GetNum(OrderNo)),0)+1),5) AS NO 
FROM Trans_Order  )
 


 INSERT INTO dbo.Trans_Order (OrderDate, OrderNo, FirstName, LastName,
  Mobile, Email, Checkin, Checkout, AdultCount, ChildCount, Noofrooms,
   RoomType_Id, Hotel_Id, Flag, Amount)
VALUES (getdate(),@ORD,  @firstname, @lastname, @mobile, @email,
 @checkin, @checkout, @adultcount, @childcount, @noofrooms, @roomtype_id, 1, 0, @amount)
 
 
 SELECT @ORD NO
GO
/****** Object:  Default [DF_UserTable_HotelId]    Script Date: 10/01/2019 11:34:04 ******/
ALTER TABLE [dbo].[UserTable] ADD  CONSTRAINT [DF_UserTable_HotelId]  DEFAULT ((0)) FOR [HotelId]
GO
/****** Object:  Default [DF_UserTable_LedgerId]    Script Date: 10/01/2019 11:34:04 ******/
ALTER TABLE [dbo].[UserTable] ADD  CONSTRAINT [DF_UserTable_LedgerId]  DEFAULT ((0)) FOR [LedgerId]
GO
