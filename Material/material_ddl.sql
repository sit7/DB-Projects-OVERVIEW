USE [FoodDB]
GO
/****** Object:  Table [dbo].[glbObject]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[glbObject](
	[ObjectID] [int] NOT NULL,
	[Name] [varchar](150) NULL,
	[Code] [int] NULL,
	[ShortName] [varchar](50) NULL,
	[UltraShortName] [varchar](25) NULL,
	[ObjectTypeID] [int] NOT NULL,
	[PostIndex] [varchar](7) NULL,
	[City] [varchar](50) NULL,
	[Street] [varchar](50) NULL,
	[Region] [varchar](50) NULL,
	[HouseNumber] [varchar](10) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[FaxNumber] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[WWW] [varchar](50) NULL,
	[INN] [varchar](50) NULL,
	[KPP] [varchar](50) NULL,
	[OKPO] [varchar](50) NULL,
	[OKVED] [varchar](50) NULL,
	[BankName] [varchar](150) NULL,
	[BIC] [varchar](50) NULL,
	[CurrentAccount] [varchar](50) NULL,
	[PersonalAccount] [varchar](50) NULL,
	[HeadPosition] [varchar](50) NULL,
	[HeadFIO] [varchar](50) NULL,
	[HeadPhoneNumber] [varchar](50) NULL,
	[HeadEMail] [varchar](50) NULL,
	[HeadSignature] [varchar](150) NULL,
	[OrderNumber] [int] NULL,
	[EndDate] [datetime] NULL,
	[IsDepartment] [int] NULL,
	[MainObjectID] [int] NULL,
	[ObjectStatusID] [int] NULL,
	[IsFew] [int] NOT NULL,
	[HouseBlock] [varchar](10) NULL,
	[СorrAccount] [varchar](50) NULL,
	[СorrBank] [varchar](50) NULL,
	[PersonalAccount2] [varchar](50) NULL,
	[Is24Group] [int] NULL,
	[IsIO] [int] NULL,
	[IsBudget] [bit] NULL,
	[Mime] [varchar](50) NULL,
	[FileName] [varchar](50) NULL,
	[FileContent] [varbinary](max) NULL,
	[UFK] [varchar](350) NULL,
	[ParentObjectID] [int] NULL,
	[CityID] [int] NOT NULL,
	[MunAccount] [varchar](50) NULL,
	[HeadReason] [varchar](150) NULL,
	[LawAddress] [varchar](350) NULL,
	[PostAddress] [varchar](350) NULL,
	[WorkDaysCount] [int] NULL,
 CONSTRAINT [PK__glbObject] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[glbPerson]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[glbPerson](
	[PersonID] [bigint] IDENTITY(1,1) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Fathername] [varchar](50) NULL,
	[PositionID] [int] NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ObjectID] [int] NOT NULL,
	[TabelNumber] [varchar](50) NULL,
	[GenderID] [int] NULL,
	[Height] [int] NULL,
	[ClothingSize] [int] NULL,
	[ShoeSize] [int] NULL,
	[HeadSize] [int] NULL,
	[UserID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
 CONSTRAINT [PK_glbPerson] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[glbPosition]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[glbPosition](
	[PositionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_glbPosition] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matClothes]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matClothes](
	[ClothesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[UnitMeasureID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matDocument]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matDocument](
	[DocumentID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentTypeID] [int] NOT NULL,
	[DocDate] [datetime] NOT NULL,
	[DocNumber] [nvarchar](20) NULL,
	[Description] [varchar](100) NULL,
	[ObjectID] [int] NOT NULL,
	[RegDate] [datetime] NULL,
	[RegNumber] [int] NULL,
	[ContragentName] [varchar](100) NULL,
	[OldContragentID] [int] NULL,
	[PersonID] [int] NULL,
	[PositionID] [int] NULL,
	[UserID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[ContragentAllID] [int] NOT NULL,
	[CommissionID] [bigint] NULL,
 CONSTRAINT [PK_matDocument_DocumentID] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matDocumentType]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matDocumentType](
	[DocumentTypeID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ShortName] [varchar](10) NULL,
	[IsIncDocument] [int] NULL,
 CONSTRAINT [PK_matDocumentType_DocumentID] PRIMARY KEY NONCLUSTERED 
(
	[DocumentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matExpDocDetail]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matExpDocDetail](
	[ExpDocDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentID] [bigint] NOT NULL,
	[IncDocDetailID] [bigint] NOT NULL,
	[Amount] [decimal](18, 5) NOT NULL,
	[Comment] [varchar](150) NULL,
	[DetailNumber] [int] NULL,
	[PersonID] [bigint] NULL,
	[UserID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[BeginNumber] [bigint] NULL,
	[EndNumber] [bigint] NULL,
 CONSTRAINT [PK__matExpDocDetail] PRIMARY KEY NONCLUSTERED 
(
	[ExpDocDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matExplicationTMC]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matExplicationTMC](
	[ExplicationTMCID] [bigint] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NOT NULL,
	[ExplicationID] [bigint] NOT NULL,
	[InvNumber] [bigint] NULL,
	[Amount] [decimal](18, 5) NULL,
	[TMCID] [int] NULL,
	[InventoryDetailID] [bigint] NULL,
	[RecordDate] [datetime] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_matExplicationTMC] PRIMARY KEY CLUSTERED 
(
	[ExplicationTMCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matIncDocDetail]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matIncDocDetail](
	[IncDocDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentID] [bigint] NOT NULL,
	[UnitMeasureID] [int] NOT NULL,
	[Amount] [decimal](18, 5) NOT NULL,
	[RecalcUnit] [decimal](18, 5) NULL,
	[Comment] [varchar](250) NULL,
	[Price] [money] NULL,
	[VATRate] [decimal](18, 0) NULL,
	[Description] [varchar](200) NULL,
	[Summa] [money] NULL,
	[DetailNumber] [int] NULL,
	[PersonID] [int] NULL,
	[PositionID] [int] NULL,
	[RecordStatusID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[UserID] [int] NOT NULL,
	[BarCode] [nvarchar](50) NULL,
	[TMCID] [int] NULL,
	[BeginNumber] [bigint] NULL,
	[EndNumber] [bigint] NULL,
	[InvNumber] [bigint] NULL,
	[BeginDate] [datetime] NULL,
 CONSTRAINT [PK_matIncDocDetail] PRIMARY KEY CLUSTERED 
(
	[IncDocDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matInventory]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matInventory](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[InventoryDate] [datetime] NOT NULL,
	[UserID] [int] NOT NULL,
	[ObjectID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
 CONSTRAINT [PK_matInventory] PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matInventoryDetail]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matInventoryDetail](
	[InventoryDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[InventoryID] [int] NOT NULL,
	[matName] [varchar](100) NOT NULL,
	[Amount] [decimal](18, 5) NULL,
	[Summa] [decimal](18, 5) NULL,
	[PositionID] [int] NOT NULL,
	[Barcode] [varchar](50) NOT NULL,
	[InventoryStatusID] [int] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[UserID] [int] NOT NULL,
	[UnitMeasureID] [int] NOT NULL,
	[TMCID] [int] NULL,
	[InvNumber] [bigint] NULL,
 CONSTRAINT [PK_matInventoryDetail] PRIMARY KEY CLUSTERED 
(
	[InventoryDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matInventoryStatus]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matInventoryStatus](
	[InventoryStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_matInventoryStatus] PRIMARY KEY CLUSTERED 
(
	[InventoryStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matPositionNorm]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matPositionNorm](
	[PositionNormID] [int] IDENTITY(1,1) NOT NULL,
	[PositionID] [int] NULL,
	[Name] [varchar](100) NULL,
	[DetailName] [varchar](100) NULL,
 CONSTRAINT [PK_matPositionNorm] PRIMARY KEY CLUSTERED 
(
	[PositionNormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matResponsiblePerson]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matResponsiblePerson](
	[ResponsiblePersonID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NOT NULL,
	[PositionID] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[BeginDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[RecordDate] [datetime2](7) NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ResponsiblePersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matResponsiblePosition]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matResponsiblePosition](
	[idResponsiblePosition] [int] IDENTITY(1,1) NOT NULL,
	[idPosition] [int] NOT NULL,
	[idObject] [int] NOT NULL,
	[rank] [int] NULL,
 CONSTRAINT [PK__matResponsiblePo__0EB9D630] PRIMARY KEY NONCLUSTERED 
(
	[idResponsiblePosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matTMC]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matTMC](
	[TMCID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](350) NOT NULL,
	[UnitMeasureID] [int] NOT NULL,
	[ObjectID] [int] NOT NULL,
	[Code1C] [nvarchar](50) NULL,
	[UserID] [int] NOT NULL,
	[RecordDate] [datetime2](7) NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[TMCTypeID] [int] NOT NULL,
	[_InvNumber] [varchar](50) NULL,
	[_BeginDate] [datetime2](7) NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_matTMC] PRIMARY KEY CLUSTERED 
(
	[TMCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matTMCType]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matTMCType](
	[TMCTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_matTMCType] PRIMARY KEY CLUSTERED 
(
	[TMCTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[matUnitMeasure]    Script Date: 03.05.2021 17:46:00 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[matUnitMeasure](
	[UnitMeasureID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[ShortName] [varchar](7) NULL,
	[EnglishShortName] [varchar](7) NULL,
	[EnglishName] [varchar](20) NULL,
	[Name1c] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[UnitMeasureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[glbObject] ADD  CONSTRAINT [DF_glbObject_IsDepartment]  DEFAULT ((2)) FOR [IsDepartment]
GO
ALTER TABLE [dbo].[glbObject] ADD  CONSTRAINT [DF_glbObject_IsFew]  DEFAULT ((0)) FOR [IsFew]
GO
ALTER TABLE [dbo].[glbObject] ADD  CONSTRAINT [DF_glbObject_IsIO]  DEFAULT ((2)) FOR [IsIO]
GO
ALTER TABLE [dbo].[glbObject] ADD  CONSTRAINT [DF_glbObject_WorkDaysCount]  DEFAULT ((5)) FOR [WorkDaysCount]
GO
ALTER TABLE [dbo].[glbPerson] ADD  CONSTRAINT [DF_glbPerson_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[matDocument] ADD  CONSTRAINT [DF_matDocument_ContragentID]  DEFAULT ((0)) FOR [OldContragentID]
GO
ALTER TABLE [dbo].[matInventory] ADD  CONSTRAINT [DF_matInventory_RecordDate]  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[matInventory] ADD  CONSTRAINT [DF_matInventory_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[matInventoryDetail] ADD  CONSTRAINT [DF_matInventoryDetail_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[matInventoryDetail] ADD  CONSTRAINT [DF_matInventoryDetail_RecordDate]  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[matResponsiblePosition] ADD  CONSTRAINT [DF__matRespons__rank__40DC0D00]  DEFAULT ((99)) FOR [rank]
GO
ALTER TABLE [dbo].[glbObject]  WITH CHECK ADD  CONSTRAINT [FK_glbObject_glbCity] FOREIGN KEY([CityID])
REFERENCES [dbo].[glbCity] ([CityID])
GO
ALTER TABLE [dbo].[glbObject] CHECK CONSTRAINT [FK_glbObject_glbCity]
GO
ALTER TABLE [dbo].[glbObject]  WITH CHECK ADD  CONSTRAINT [FK_glbObject_glbObjectStatus] FOREIGN KEY([ObjectStatusID])
REFERENCES [dbo].[glbObjectStatus] ([ObjectStatusID])
GO
ALTER TABLE [dbo].[glbObject] CHECK CONSTRAINT [FK_glbObject_glbObjectStatus]
GO
ALTER TABLE [dbo].[glbObject]  WITH CHECK ADD  CONSTRAINT [FK_glbObject_glbObjectType] FOREIGN KEY([ObjectTypeID])
REFERENCES [dbo].[glbObjectType] ([ObjectTypeID])
GO
ALTER TABLE [dbo].[glbObject] CHECK CONSTRAINT [FK_glbObject_glbObjectType]
GO
ALTER TABLE [dbo].[glbPerson]  WITH CHECK ADD  CONSTRAINT [FK_glbPerson_glbGender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[glbGender] ([GenderID])
GO
ALTER TABLE [dbo].[glbPerson] CHECK CONSTRAINT [FK_glbPerson_glbGender]
GO
ALTER TABLE [dbo].[glbPerson]  WITH CHECK ADD  CONSTRAINT [FK_glbPerson_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[glbPerson] CHECK CONSTRAINT [FK_glbPerson_glbObject]
GO
ALTER TABLE [dbo].[glbPerson]  WITH CHECK ADD  CONSTRAINT [FK_glbPerson_glbPosition] FOREIGN KEY([PositionID])
REFERENCES [dbo].[glbPosition] ([PositionID])
GO
ALTER TABLE [dbo].[glbPerson] CHECK CONSTRAINT [FK_glbPerson_glbPosition]
GO
ALTER TABLE [dbo].[matDocument]  WITH CHECK ADD  CONSTRAINT [FK_matDocument_glbCommission] FOREIGN KEY([CommissionID])
REFERENCES [dbo].[glbCommission] ([CommissionID])
GO
ALTER TABLE [dbo].[matDocument] CHECK CONSTRAINT [FK_matDocument_glbCommission]
GO
ALTER TABLE [dbo].[matDocument]  WITH CHECK ADD  CONSTRAINT [FK_matDocument_glbContragentAll] FOREIGN KEY([ContragentAllID])
REFERENCES [dbo].[glbContragentAll] ([ContragentID])
GO
ALTER TABLE [dbo].[matDocument] CHECK CONSTRAINT [FK_matDocument_glbContragentAll]
GO
ALTER TABLE [dbo].[matDocument]  WITH CHECK ADD  CONSTRAINT [FK_matDocument_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[matDocument] CHECK CONSTRAINT [FK_matDocument_glbObject]
GO
ALTER TABLE [dbo].[matDocument]  WITH CHECK ADD  CONSTRAINT [FK_matDocument_glbPosition] FOREIGN KEY([PositionID])
REFERENCES [dbo].[glbPosition] ([PositionID])
GO
ALTER TABLE [dbo].[matDocument] CHECK CONSTRAINT [FK_matDocument_glbPosition]
GO
ALTER TABLE [dbo].[matDocument]  WITH CHECK ADD  CONSTRAINT [FK_matDocument_glbRecordStatus] FOREIGN KEY([RecordStatusID])
REFERENCES [dbo].[glbRecordStatus] ([RecordStatusID])
GO
ALTER TABLE [dbo].[matDocument] CHECK CONSTRAINT [FK_matDocument_glbRecordStatus]
GO
ALTER TABLE [dbo].[matDocument]  WITH CHECK ADD  CONSTRAINT [FK_matDocument_matDocumentType] FOREIGN KEY([DocumentTypeID])
REFERENCES [dbo].[matDocumentType] ([DocumentTypeID])
GO
ALTER TABLE [dbo].[matDocument] CHECK CONSTRAINT [FK_matDocument_matDocumentType]
GO
ALTER TABLE [dbo].[matDocument]  WITH CHECK ADD  CONSTRAINT [FK_matDocument_matResponsiblePerson] FOREIGN KEY([PersonID])
REFERENCES [dbo].[matResponsiblePerson] ([ResponsiblePersonID])
GO
ALTER TABLE [dbo].[matDocument] CHECK CONSTRAINT [FK_matDocument_matResponsiblePerson]
GO
ALTER TABLE [dbo].[matExpDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_matExpDocDetail_glbPerson] FOREIGN KEY([PersonID])
REFERENCES [dbo].[glbPerson] ([PersonID])
GO
ALTER TABLE [dbo].[matExpDocDetail] CHECK CONSTRAINT [FK_matExpDocDetail_glbPerson]
GO
ALTER TABLE [dbo].[matExpDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_matExpDocDetail_glbRecordStatus] FOREIGN KEY([RecordStatusID])
REFERENCES [dbo].[glbRecordStatus] ([RecordStatusID])
GO
ALTER TABLE [dbo].[matExpDocDetail] CHECK CONSTRAINT [FK_matExpDocDetail_glbRecordStatus]
GO
ALTER TABLE [dbo].[matExpDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_matExpDocDetail_matDocument] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[matDocument] ([DocumentID])
GO
ALTER TABLE [dbo].[matExpDocDetail] CHECK CONSTRAINT [FK_matExpDocDetail_matDocument]
GO
ALTER TABLE [dbo].[matExpDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_matExpDocDetail_matIncDocDetail] FOREIGN KEY([IncDocDetailID])
REFERENCES [dbo].[matIncDocDetail] ([IncDocDetailID])
GO
ALTER TABLE [dbo].[matExpDocDetail] CHECK CONSTRAINT [FK_matExpDocDetail_matIncDocDetail]
GO
ALTER TABLE [dbo].[matExplicationTMC]  WITH CHECK ADD  CONSTRAINT [FK_matExplicationTMC_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[matExplicationTMC] CHECK CONSTRAINT [FK_matExplicationTMC_glbObject]
GO
ALTER TABLE [dbo].[matExplicationTMC]  WITH CHECK ADD  CONSTRAINT [FK_matExplicationTMC_matInventoryDetail] FOREIGN KEY([InventoryDetailID])
REFERENCES [dbo].[matInventoryDetail] ([InventoryDetailID])
GO
ALTER TABLE [dbo].[matExplicationTMC] CHECK CONSTRAINT [FK_matExplicationTMC_matInventoryDetail]
GO
ALTER TABLE [dbo].[matExplicationTMC]  WITH CHECK ADD  CONSTRAINT [FK_matExplicationTMC_repBuildingExplication] FOREIGN KEY([ExplicationID])
REFERENCES [dbo].[repBuildingExplication] ([ExplicationID])
GO
ALTER TABLE [dbo].[matExplicationTMC] CHECK CONSTRAINT [FK_matExplicationTMC_repBuildingExplication]
GO
ALTER TABLE [dbo].[matIncDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_matIncDocDetail_glbPosition] FOREIGN KEY([PositionID])
REFERENCES [dbo].[glbPosition] ([PositionID])
GO
ALTER TABLE [dbo].[matIncDocDetail] CHECK CONSTRAINT [FK_matIncDocDetail_glbPosition]
GO
ALTER TABLE [dbo].[matIncDocDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_matIncDocDetail_glbRecordStatus] FOREIGN KEY([RecordStatusID])
REFERENCES [dbo].[glbRecordStatus] ([RecordStatusID])
GO
ALTER TABLE [dbo].[matIncDocDetail] CHECK CONSTRAINT [FK_matIncDocDetail_glbRecordStatus]
GO
ALTER TABLE [dbo].[matIncDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_matIncDocDetail_matDocument] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[matDocument] ([DocumentID])
GO
ALTER TABLE [dbo].[matIncDocDetail] CHECK CONSTRAINT [FK_matIncDocDetail_matDocument]
GO
ALTER TABLE [dbo].[matIncDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_matIncDocDetail_matResponsiblePerson] FOREIGN KEY([PersonID])
REFERENCES [dbo].[matResponsiblePerson] ([ResponsiblePersonID])
GO
ALTER TABLE [dbo].[matIncDocDetail] CHECK CONSTRAINT [FK_matIncDocDetail_matResponsiblePerson]
GO
ALTER TABLE [dbo].[matIncDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_matIncDocDetail_matTMC] FOREIGN KEY([TMCID])
REFERENCES [dbo].[matTMC] ([TMCID])
GO
ALTER TABLE [dbo].[matIncDocDetail] CHECK CONSTRAINT [FK_matIncDocDetail_matTMC]
GO
ALTER TABLE [dbo].[matIncDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_matIncDocDetail_matUnitMeasure] FOREIGN KEY([UnitMeasureID])
REFERENCES [dbo].[matUnitMeasure] ([UnitMeasureID])
GO
ALTER TABLE [dbo].[matIncDocDetail] CHECK CONSTRAINT [FK_matIncDocDetail_matUnitMeasure]
GO
ALTER TABLE [dbo].[matInventoryDetail]  WITH CHECK ADD  CONSTRAINT [FK_matInventoryDetail_matInventory] FOREIGN KEY([InventoryID])
REFERENCES [dbo].[matInventory] ([InventoryID])
GO
ALTER TABLE [dbo].[matInventoryDetail] CHECK CONSTRAINT [FK_matInventoryDetail_matInventory]
GO
ALTER TABLE [dbo].[matInventoryDetail]  WITH CHECK ADD  CONSTRAINT [FK_matInventoryDetail_matInventoryStatus] FOREIGN KEY([InventoryStatusID])
REFERENCES [dbo].[matInventoryStatus] ([InventoryStatusID])
GO
ALTER TABLE [dbo].[matInventoryDetail] CHECK CONSTRAINT [FK_matInventoryDetail_matInventoryStatus]
GO
ALTER TABLE [dbo].[matInventoryDetail]  WITH CHECK ADD  CONSTRAINT [FK_matInventoryDetail_matTMC] FOREIGN KEY([TMCID])
REFERENCES [dbo].[matTMC] ([TMCID])
GO
ALTER TABLE [dbo].[matInventoryDetail] CHECK CONSTRAINT [FK_matInventoryDetail_matTMC]
GO
ALTER TABLE [dbo].[matResponsiblePerson]  WITH CHECK ADD  CONSTRAINT [FK_matResoibsiblePerson_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[matResponsiblePerson] CHECK CONSTRAINT [FK_matResoibsiblePerson_glbObject]
GO
ALTER TABLE [dbo].[matResponsiblePerson]  WITH CHECK ADD  CONSTRAINT [FK_matResoibsiblePerson_glbPosition] FOREIGN KEY([PositionID])
REFERENCES [dbo].[glbPosition] ([PositionID])
GO
ALTER TABLE [dbo].[matResponsiblePerson] CHECK CONSTRAINT [FK_matResoibsiblePerson_glbPosition]
GO
ALTER TABLE [dbo].[matResponsiblePosition]  WITH CHECK ADD  CONSTRAINT [FK_matResponsiblePosition_glbObject] FOREIGN KEY([idObject])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[matResponsiblePosition] CHECK CONSTRAINT [FK_matResponsiblePosition_glbObject]
GO
ALTER TABLE [dbo].[matResponsiblePosition]  WITH CHECK ADD  CONSTRAINT [FK_matResponsiblePosition_glbPosition] FOREIGN KEY([idPosition])
REFERENCES [dbo].[glbPosition] ([PositionID])
GO
ALTER TABLE [dbo].[matResponsiblePosition] CHECK CONSTRAINT [FK_matResponsiblePosition_glbPosition]
GO
ALTER TABLE [dbo].[matTMC]  WITH CHECK ADD  CONSTRAINT [FK_matTMC_matTMCType] FOREIGN KEY([TMCTypeID])
REFERENCES [dbo].[matTMCType] ([TMCTypeID])
GO
ALTER TABLE [dbo].[matTMC] CHECK CONSTRAINT [FK_matTMC_matTMCType]
GO
