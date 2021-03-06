USE [FoodDB]
GO
/****** Object:  Table [dbo].[fooCommission]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooCommission](
	[CommissionID] [int] IDENTITY(1,1) NOT NULL,
	[CommissionTypeID] [int] NOT NULL,
	[PersonID] [bigint] NOT NULL,
	[IsHead] [bit] NOT NULL,
	[RecordDate] [datetime2](7) NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ObjectID] [int] NOT NULL,
	[OrderNumber] [int] NULL,
 CONSTRAINT [PK_fooCommission] PRIMARY KEY CLUSTERED 
(
	[CommissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooCommissionType]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooCommissionType](
	[CommissionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_fooCommissionType] PRIMARY KEY CLUSTERED 
(
	[CommissionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooContract]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooContract](
	[ContractID] [int] IDENTITY(1,1) NOT NULL,
	[ContractDate] [datetime] NOT NULL,
	[OldContragentID] [int] NOT NULL,
	[ContractSum] [money] NOT NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[ObjectID] [int] NOT NULL,
	[ContractNumber] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[RecordStatusID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[IsVAT] [int] NOT NULL,
	[BeginDateSum] [money] NULL,
	[CloseDate] [datetime2](7) NULL,
	[ContragentAllID] [int] NOT NULL,
	[IsContract] [bit] NOT NULL,
 CONSTRAINT [PK_fooContract] PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooContractDetail]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooContractDetail](
	[ContractDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ContractID] [int] NOT NULL,
	[FoodID] [int] NOT NULL,
	[UnitMeasureID] [int] NOT NULL,
	[MeasureUnit] [decimal](18, 5) NOT NULL,
	[FoodName] [nvarchar](128) NULL,
	[Conditions] [text] NULL,
	[Amount] [decimal](18, 5) NOT NULL,
	[C_Price] [decimal](18, 5) NULL,
	[VATRate] [decimal](18, 0) NOT NULL,
	[RecordDate] [datetime2](7) NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Summa] [decimal](18, 5) NULL,
	[PriceWithVAT] [decimal](18, 5) NULL,
 CONSTRAINT [PK_fooContractDetail] PRIMARY KEY CLUSTERED 
(
	[ContractDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooDocument]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooDocument](
	[DocumentID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentTypeID] [int] NOT NULL,
	[DocDate] [datetime] NOT NULL,
	[RegNumber] [nvarchar](20) NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[Number] [nvarchar](20) NULL,
	[Description] [nvarchar](200) NULL,
	[ObjectID] [int] NOT NULL,
	[OldContragentID] [int] NOT NULL,
	[ContragentName] [nvarchar](200) NULL,
	[DocumentStatusID] [int] NULL,
	[ContractID] [int] NULL,
	[RecordStatusID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[UserID] [int] NOT NULL,
	[ObjectPersonID] [int] NULL,
	[SendingID] [int] NULL,
	[AccStatusID] [int] NULL,
	[TextError] [varchar](500) NULL,
	[ContragentAllID] [int] NOT NULL,
 CONSTRAINT [PK_fooDocument] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooDocumentType]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooDocumentType](
	[DocumentTypeID] [int] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[IsIncDocumentType] [int] NULL,
	[Code1C] [int] NULL,
 CONSTRAINT [PK_fooDocumentType] PRIMARY KEY CLUSTERED 
(
	[DocumentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooEatingCategory]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooEatingCategory](
	[EatingCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[OrderForExp] [int] NULL,
	[Code1C] [varchar](50) NULL,
 CONSTRAINT [PK_fooEatingCategory] PRIMARY KEY CLUSTERED 
(
	[EatingCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooEatingTime]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooEatingTime](
	[EatingTimeID] [int] NOT NULL,
	[Name] [varchar](20) NULL,
	[OrderNumber] [int] NULL,
 CONSTRAINT [PK_fooEatingTime] PRIMARY KEY CLUSTERED 
(
	[EatingTimeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooElement]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooElement](
	[ElementID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[UnitMeasureID] [int] NOT NULL,
	[LossesRateR] [decimal](18, 0) NULL,
	[LossesRateG] [decimal](18, 0) NULL,
	[ElementKindID] [int] NOT NULL,
	[OldCode] [varchar](50) NULL,
 CONSTRAINT [PK_fooElement] PRIMARY KEY CLUSTERED 
(
	[ElementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooElementNorm]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooElementNorm](
	[ElementNormID] [int] IDENTITY(1,1) NOT NULL,
	[ElementID] [int] NOT NULL,
	[EatingCategoryID] [int] NOT NULL,
	[NormValue] [decimal](10, 5) NOT NULL,
 CONSTRAINT [PK_fooElementNorm] PRIMARY KEY CLUSTERED 
(
	[ElementNormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooExpDocDetail]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooExpDocDetail](
	[ExpDocDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[Amount] [decimal](18, 5) NOT NULL,
	[DocumentID] [bigint] NOT NULL,
	[UserID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[IncDocDetailID] [bigint] NOT NULL,
	[DaysCount] [int] NULL,
	[DetailNumber] [int] NULL,
 CONSTRAINT [PK_fooExpDocDetail] PRIMARY KEY CLUSTERED 
(
	[ExpDocDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooFood]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooFood](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[EnglishName] [nvarchar](50) NULL,
	[FoodGroupID] [int] NULL,
	[NomenclatureID] [int] NULL,
	[GroupID] [int] NULL,
	[UnitMeasureID] [int] NOT NULL,
	[OldCode] [varchar](50) NULL,
	[Koef] [int] NULL,
	[IsAnimal] [int] NULL,
	[IsUndividedPack] [int] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[RoundTo] [int] NULL,
	[IsFromStorage] [int] NOT NULL,
	[IsFastFood] [int] NULL,
	[StorageCondition] [varchar](150) NULL,
	[VATRate] [int] NULL,
	[IsIncPercent] [int] NULL,
	[KoefForNorm] [decimal](10, 5) NULL,
	[Code1C] [varchar](50) NULL,
	[EvaluationResult] [varchar](350) NULL,
 CONSTRAINT [PK_fooFood] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooFoodElement]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooFoodElement](
	[FoodElementID] [int] IDENTITY(1,1) NOT NULL,
	[FoodID] [int] NOT NULL,
	[ElementID] [int] NOT NULL,
	[Value] [decimal](10, 5) NOT NULL,
	[OldCode] [varchar](50) NULL,
 CONSTRAINT [PK_fooFoodElement] PRIMARY KEY CLUSTERED 
(
	[FoodElementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooFoodGroup]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooFoodGroup](
	[FoodGroupID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ParentFoodGroupID] [int] NULL,
	[OldCode] [varchar](50) NULL,
 CONSTRAINT [PK_fooFoodGroup] PRIMARY KEY CLUSTERED 
(
	[FoodGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooFoodLoss]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooFoodLoss](
	[FoodLossID] [int] IDENTITY(1,1) NOT NULL,
	[FoodID] [int] NOT NULL,
	[MonthID] [int] NULL,
	[PercentValue] [decimal](5, 2) NOT NULL,
	[BoilLoss] [int] NOT NULL,
	[Code1C] [varchar](50) NULL,
 CONSTRAINT [PK_fooFoodLoss] PRIMARY KEY CLUSTERED 
(
	[FoodLossID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooFoodObject]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooFoodObject](
	[FoodObjectID] [int] IDENTITY(1,1) NOT NULL,
	[FoodID] [int] NOT NULL,
	[ObjectID] [int] NOT NULL,
	[MeasureUnit] [decimal](18, 5) NULL,
	[IsUndividedPack] [int] NULL,
	[UserID] [int] NULL,
	[RecordDate] [datetime] NULL,
	[RecordStatusID] [int] NULL,
	[Conditions] [text] NULL,
	[LossPercent] [decimal](5, 2) NULL,
	[IsIncPercent] [int] NULL,
	[RoundTo] [int] NULL,
	[UnitMeasureID] [int] NULL,
	[ExpCondition] [int] NOT NULL,
	[SaveTerm] [decimal](18, 5) NULL,
	[CheckPercent] [money] NULL,
	[IsFastFood] [int] NULL,
	[EvaluationResult] [varchar](350) NULL,
 CONSTRAINT [PK_fooFoodObject] PRIMARY KEY CLUSTERED 
(
	[FoodObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooFoodRecipe]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooFoodRecipe](
	[FoodRecipeID] [int] IDENTITY(1,1) NOT NULL,
	[FoodID] [int] NOT NULL,
	[Brutto] [decimal](10, 5) NULL,
	[Netto] [decimal](10, 5) NULL,
	[RecipeID] [int] NOT NULL,
	[RecordDate] [datetime] NULL,
	[RecordStatusID] [int] NOT NULL,
	[UserID] [int] NULL,
	[IsHeat] [int] NULL,
	[IsBoilLoss] [int] NOT NULL,
	[PercentValue] [decimal](5, 2) NULL,
	[OrderNumber] [int] NULL,
 CONSTRAINT [PK_fooFoodMenu] PRIMARY KEY CLUSTERED 
(
	[FoodRecipeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooFoodSanPinNormGroup]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooFoodSanPinNormGroup](
	[FoodGroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NOT NULL,
	[FoodID] [int] NOT NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Value] [money] NULL,
 CONSTRAINT [PK_fooSanPinNormGroup] PRIMARY KEY CLUSTERED 
(
	[FoodGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooFoodVATRate]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooFoodVATRate](
	[FoodVATRateID] [int] IDENTITY(1,1) NOT NULL,
	[FoodID] [int] NOT NULL,
	[VatRate] [int] NOT NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooGroup]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooGroup](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[OldCode] [varchar](50) NULL,
 CONSTRAINT [PK_fooGroup1] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooGroupNorm]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooGroupNorm](
	[GroupNormID] [int] IDENTITY(1,1) NOT NULL,
	[EatingCategoryID] [int] NOT NULL,
	[NormValue] [decimal](10, 5) NOT NULL,
	[GroupID] [int] NOT NULL,
	[UnitMeasureID] [int] NULL,
 CONSTRAINT [PK_fooGroupNorm] PRIMARY KEY CLUSTERED 
(
	[GroupNormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooIncDocDetail]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooIncDocDetail](
	[IncDocDetailID] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentID] [bigint] NOT NULL,
	[UnitMeasureID] [int] NOT NULL,
	[FoodID] [int] NOT NULL,
	[FoodName] [nvarchar](128) NOT NULL,
	[MeasureUnit] [decimal](18, 5) NOT NULL,
	[Amount] [decimal](18, 5) NOT NULL,
	[Price] [money] NOT NULL,
	[VATRate] [decimal](18, 0) NULL,
	[Excise] [int] NULL,
	[Date] [datetime] NOT NULL,
	[DetailNumber] [int] NULL,
	[CertificateNumber] [varchar](50) NULL,
	[PositionID] [int] NULL,
	[UserID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[IsUndividedPack] [int] NULL,
	[LossPercent] [decimal](5, 2) NOT NULL,
	[Summa] [decimal](18, 5) NULL,
	[CreateDate] [datetime2](7) NULL,
	[RealizationTime] [money] NULL,
	[UseBeforeDate] [datetime2](7) NULL,
	[DeclarationID] [int] NULL,
	[Comment] [varchar](150) NULL,
	[EvaluationResult] [varchar](350) NULL,
	[PriceWithVAT] [money] NULL,
	[ContragentAllID] [int] NULL,
 CONSTRAINT [PK_fooIncDocDetail] PRIMARY KEY CLUSTERED 
(
	[IncDocDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooKBZUNorm]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooKBZUNorm](
	[KBZUNormID] [int] IDENTITY(1,1) NOT NULL,
	[EatingCategoryID] [int] NOT NULL,
	[ElementID] [int] NULL,
	[Value] [decimal](18, 5) NULL,
 CONSTRAINT [PK_KBZUNorm] PRIMARY KEY CLUSTERED 
(
	[KBZUNormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooMaker]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooMaker](
	[MakerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](350) NULL,
	[CountryID] [int] NULL,
	[RecordStatusID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_fooMaker] PRIMARY KEY CLUSTERED 
(
	[MakerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooMenu]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooMenu](
	[MenuID] [int] IDENTITY(2,1) NOT NULL,
	[MenuDate] [datetime] NOT NULL,
	[MenuStatusID] [int] NOT NULL,
	[MenuChangeStatusID] [int] NULL,
	[DayNumber] [int] NOT NULL,
	[ObjectID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[SignDate] [datetime2](7) NULL,
	[MenuNumber] [int] NULL,
	[SendingID] [int] NULL,
	[IsNeedRecalc] [bit] NOT NULL,
	[AccStatusID] [int] NULL,
	[TextError] [varchar](500) NULL,
 CONSTRAINT [PK_fooMenu_1] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooMenuByExpDocumentWithAmount]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooMenuByExpDocumentWithAmount](
	[MenuByExpDocumentID] [bigint] IDENTITY(1,1) NOT NULL,
	[FoodID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[JustName] [varchar](60) NULL,
	[NomenclatureID] [int] NULL,
	[UnitMeasure] [varchar](5) NULL,
	[EatingTime] [varchar](20) NULL,
	[EatingTimeID] [int] NULL,
	[MenuID] [int] NULL,
	[MenuDate] [datetime] NULL,
	[ObjectID] [int] NULL,
	[Object] [varchar](50) NULL,
	[EatingCategory] [varchar](20) NULL,
	[EatingCategoryID] [int] NULL,
	[PortionCount] [int] NULL,
	[Recipe] [varchar](100) NULL,
	[OriginalRecipe] [varchar](100) NULL,
	[RecipeID] [int] NULL,
	[Price] [decimal](10, 5) NULL,
	[BruttoByRecalcPlan] [decimal](10, 5) NULL,
	[BruttoByRecalcDop] [decimal](10, 5) NULL,
	[FoodPercent] [decimal](10, 5) NULL,
	[DocLossPercent] [decimal](10, 5) NULL,
	[PersonPortionCount] [int] NULL,
	[IsAlone] [int] NULL,
	[NettoRecipe] [decimal](10, 5) NULL,
	[IsHeat] [int] NULL,
	[IsVisible] [int] NULL,
	[DocFoodID] [int] NULL,
	[EggMeasureUnit] [decimal](10, 5) NULL,
	[MenuCategoryTimeRecipeID] [int] NULL,
	[ExpAmount] [decimal](10, 5) NULL,
	[PersonAmount] [decimal](10, 5) NULL,
	[Amount24] [decimal](10, 5) NULL,
	[orderNumber] [int] NULL,
	[MenuAmountEatingCategory] [decimal](10, 5) NULL,
	[MenuAmountDopEatingCategory] [decimal](10, 5) NULL,
	[IsSalt] [int] NULL,
	[KoefToNorm] [decimal](10, 5) NULL,
	[RecipeLoss] [decimal](10, 5) NULL,
	[CountRecipeLoss] [decimal](10, 5) NULL,
	[OrderNumberEatingCategory] [int] NULL,
	[PortionCount24] [int] NULL,
	[MenuCorrectionTypeID] [int] NULL,
	[ExpAmountDop] [decimal](10, 5) NULL,
	[PortionCountFact] [int] NULL,
	[OrderForExp] [int] NULL,
	[Food1C] [varchar](20) NULL,
	[EatingCategory1C] [varchar](20) NULL,
	[ParentMenuCategoryTimeRecipeID] [int] NULL,
	[RecipeChild1] [varchar](100) NULL,
	[RecipeNetto1] [decimal](10, 5) NULL,
	[UM1] [varchar](10) NULL,
	[RecipeChild2] [varchar](100) NULL,
	[RecipeNetto2] [decimal](10, 5) NULL,
	[UM2] [varchar](10) NULL,
	[RecipeChild3] [varchar](100) NULL,
	[RecipeNetto3] [decimal](10, 5) NULL,
	[UM3] [varchar](10) NULL,
	[RecordDate] [datetime] NULL,
	[UserID] [int] NULL,
	[Recordstatusid] [int] NULL,
	[NettoByRecalcFact] [decimal](10, 5) NULL,
	[AvgPrice] [decimal](10, 5) NULL,
	[NettoByRecalcPlan] [decimal](18, 5) NULL,
	[YearID] [int] NULL,
	[MonthID] [int] NULL,
	[DayID] [int] NULL,
 CONSTRAINT [PK_fooMenuByExpDocumentWithAmount] PRIMARY KEY CLUSTERED 
(
	[MenuByExpDocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooMenuCategory]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooMenuCategory](
	[MenuCategoryID] [int] IDENTITY(2,1) NOT NULL,
	[MenuID] [int] NOT NULL,
	[EatingCategoryID] [int] NOT NULL,
	[PortionCount] [int] NOT NULL,
	[ControlPortionCount] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[PortionCountFact] [int] NULL,
	[PersonPortionCount] [int] NULL,
	[PortionCount24] [int] NOT NULL,
	[PortionCountFact24] [int] NOT NULL,
 CONSTRAINT [PK_fooMenuCategory] PRIMARY KEY CLUSTERED 
(
	[MenuCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooMenuCategoryTimeRecipe]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooMenuCategoryTimeRecipe](
	[MenuCategoryTimeRecipeID] [int] IDENTITY(3,1) NOT NULL,
	[MenuCategoryID] [int] NOT NULL,
	[EatingTimeID] [int] NOT NULL,
	[RecipeID] [int] NOT NULL,
	[Netto] [decimal](10, 5) NOT NULL,
	[PortionCount] [int] NOT NULL,
	[ControlPortionCount] [int] NOT NULL,
	[PersonPortionCount] [int] NOT NULL,
	[ParentMenuCategoryTimeRecipeID] [int] NULL,
	[OrderNumber] [int] NULL,
	[UserID] [int] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[PortionCountFact] [int] NOT NULL,
	[MenuCorrectionTypeID] [int] NULL,
	[PortionCount24] [int] NOT NULL,
	[PortionCountFact24] [int] NOT NULL,
 CONSTRAINT [PK_fooMenuCategoryTimeRecipe] PRIMARY KEY CLUSTERED 
(
	[MenuCategoryTimeRecipeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooMenuCorrectionType]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooMenuCorrectionType](
	[MenuCorrectionTypeID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_fooMenuCorrectionType] PRIMARY KEY CLUSTERED 
(
	[MenuCorrectionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooMenuStatus]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooMenuStatus](
	[MenuStatusID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_fooMenuStatus] PRIMARY KEY CLUSTERED 
(
	[MenuStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooNomenclature]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooNomenclature](
	[NomenclatureID] [int] NOT NULL,
	[Name] [nvarchar](60) NULL,
	[NomenclatureNumber] [int] NULL,
	[Code1C] [int] NULL,
 CONSTRAINT [PK_fooNomenclature_1] PRIMARY KEY CLUSTERED 
(
	[NomenclatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooObjectContractStatus]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooObjectContractStatus](
	[ObjectContractStatusID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_fooObjectContractStatus] PRIMARY KEY CLUSTERED 
(
	[ObjectContractStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooObjectEatingTimeHours]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooObjectEatingTimeHours](
	[ObjectEatingTimeHoursID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NOT NULL,
	[EatingTimeID] [int] NOT NULL,
	[EatingCategoryID] [int] NOT NULL,
	[Hours] [time](7) NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[RecordDate] [datetime2](7) NOT NULL,
	[HoursControl] [time](7) NULL,
 CONSTRAINT [PK_fooObjectEatingTimeHours] PRIMARY KEY CLUSTERED 
(
	[ObjectEatingTimeHoursID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooObjectPerson]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooObjectPerson](
	[ObjectPersonID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [bigint] NOT NULL,
	[BeginDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[ObjectID] [int] NOT NULL,
	[IsMain] [int] NOT NULL,
	[Comment] [varchar](100) NULL,
	[UserID] [int] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[RecordDate] [datetime2](7) NOT NULL,
	[Code1C] [varchar](100) NULL,
 CONSTRAINT [PK_fooObjectPerson] PRIMARY KEY CLUSTERED 
(
	[ObjectPersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooObjectSending]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooObjectSending](
	[ObjectSendingID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NOT NULL,
	[BeginDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
 CONSTRAINT [PK_fooObjectSending] PRIMARY KEY CLUSTERED 
(
	[ObjectSendingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooPersonForAccounting]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooPersonForAccounting](
	[PersonForAccountingID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NOT NULL,
	[IsMain] [bit] NOT NULL,
	[BeginDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[Name] [varchar](200) NULL,
	[Code1C] [varchar](50) NULL,
 CONSTRAINT [PK_fooPersonObjectForAccounting] PRIMARY KEY CLUSTERED 
(
	[PersonForAccountingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooRecipe]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooRecipe](
	[RecipeID] [int] IDENTITY(1,1) NOT NULL,
	[TechnologyText] [text] NULL,
	[RecipeSourceID] [int] NULL,
	[DesignText] [text] NULL,
	[IndicatorText] [text] NULL,
	[RecipeGroupID] [int] NULL,
	[OldCode] [varchar](50) NULL,
	[Name] [varchar](100) NOT NULL,
	[RecordDate] [datetime] NULL,
	[RecordStatusID] [int] NOT NULL,
	[UserID] [int] NULL,
	[Netto] [decimal](10, 5) NULL,
	[Weight] [decimal](10, 5) NULL,
	[Weight2] [decimal](10, 5) NULL,
	[ObjectID] [int] NULL,
	[OldCode2] [varchar](50) NULL,
	[TechCardNumber] [int] NULL,
	[ApproveDate] [datetime] NULL,
	[IsArchive] [int] NULL,
	[RecipeNumber] [int] NULL,
	[OriginalName] [varchar](100) NULL,
	[IsVisible] [int] NULL,
	[Child1RecipeId] [int] NULL,
	[Child1Netto] [decimal](10, 5) NULL,
	[Child2RecipeId] [int] NULL,
	[Child2Netto] [decimal](10, 5) NULL,
	[Child3RecipeId] [int] NULL,
	[Child3Netto] [decimal](10, 5) NULL,
	[Child4RecipeId] [int] NULL,
	[Child4Netto] [decimal](10, 5) NULL,
	[Child5RecipeId] [int] NULL,
	[Child5Netto] [decimal](10, 5) NULL,
	[TechCardGroupID] [int] NULL,
 CONSTRAINT [PK_fooMenu] PRIMARY KEY CLUSTERED 
(
	[RecipeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooRecipeEatingCategoryNetto]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooRecipeEatingCategoryNetto](
	[RecipeID] [int] NOT NULL,
	[EatingCategoryID] [int] NOT NULL,
	[Netto] [numeric](5, 2) NOT NULL,
 CONSTRAINT [PK_fooRecipeEatingCategoryNetto] PRIMARY KEY CLUSTERED 
(
	[RecipeID] ASC,
	[EatingCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooRecipeElement]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooRecipeElement](
	[RecipeElementID] [bigint] IDENTITY(1,1) NOT NULL,
	[RecipeID] [int] NOT NULL,
	[ElementID] [int] NOT NULL,
	[Value] [decimal](10, 5) NOT NULL,
	[UserID] [int] NOT NULL,
	[RecordStatusID] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
 CONSTRAINT [PK_fooRecipeElement] PRIMARY KEY CLUSTERED 
(
	[RecipeElementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooRecipeGroup]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooRecipeGroup](
	[RecipeGroupID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[ParentRecipeGroupID] [int] NULL,
	[OldCode] [varchar](50) NULL,
	[OldCode2] [varchar](50) NULL,
	[ObjectID] [int] NULL,
	[EatingCategoryID] [int] NULL,
	[TechCardGroupID] [int] NULL,
 CONSTRAINT [PK_fooMenuGroup] PRIMARY KEY CLUSTERED 
(
	[RecipeGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooRecipeSource]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooRecipeSource](
	[RecipeSourceID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[OldCode] [varchar](50) NULL,
	[ShortName] [varchar](50) NULL,
 CONSTRAINT [PK_fooMenuSource] PRIMARY KEY CLUSTERED 
(
	[RecipeSourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooRecipeStrings]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooRecipeStrings](
	[RecipeStringsID] [int] IDENTITY(1,1) NOT NULL,
	[RecipeID] [int] NOT NULL,
	[Strings] [varchar](50) NULL,
	[OrderNumber] [int] NULL,
	[RecordStatusID] [int] NOT NULL,
	[UserID] [int] NULL,
	[RecordDate] [datetime] NULL,
 CONSTRAINT [PK_fooRecipeStrings] PRIMARY KEY CLUSTERED 
(
	[RecipeStringsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooStatus]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_fooStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooSumForExpDocDetail]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooSumForExpDocDetail](
	[SumForExpDocDetailID] [int] IDENTITY(1,1) NOT NULL,
	[DocumentTypeID] [int] NOT NULL,
	[FoodID] [int] NOT NULL,
	[Amount] [decimal](10, 5) NOT NULL,
	[MenuDate] [datetime2](7) NULL,
	[ObjectID] [int] NULL,
	[RecordStatusID] [int] NULL,
	[RecordDate] [datetime2](7) NULL,
	[UserID] [int] NULL,
	[IsPositive] [bit] NULL,
 CONSTRAINT [PK_fooSumForExpDocDetail] PRIMARY KEY CLUSTERED 
(
	[SumForExpDocDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooTechCardGroups]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooTechCardGroups](
	[TechCardGroupID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_fooTechCardGroups] PRIMARY KEY CLUSTERED 
(
	[TechCardGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fooUnitMeasure]    Script Date: 03.05.2021 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fooUnitMeasure](
	[UnitMeasureID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[KoefToGramm] [float] NOT NULL,
	[OldCode] [varchar](50) NULL,
	[KoefToNorm] [decimal](18, 5) NULL,
	[Code1C] [varchar](4) NULL,
 CONSTRAINT [PK_fooUnitMeasure] PRIMARY KEY CLUSTERED 
(
	[UnitMeasureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[fooContract] ADD  CONSTRAINT [DF_fooContract_ObjectID]  DEFAULT ((4)) FOR [ObjectID]
GO
ALTER TABLE [dbo].[fooContract] ADD  CONSTRAINT [DF_fooContract_IsVAT]  DEFAULT ((1)) FOR [IsVAT]
GO
ALTER TABLE [dbo].[fooContract] ADD  CONSTRAINT [DF_fooContract_IsContract]  DEFAULT ((0)) FOR [IsContract]
GO
ALTER TABLE [dbo].[fooContractDetail] ADD  CONSTRAINT [DF_fooContractDetail_MeasureUnit]  DEFAULT ((1)) FOR [MeasureUnit]
GO
ALTER TABLE [dbo].[fooDocument] ADD  CONSTRAINT [DF_fooDocument_ContragentID]  DEFAULT ((-1)) FOR [OldContragentID]
GO
ALTER TABLE [dbo].[fooDocument] ADD  CONSTRAINT [DF_fooDocument_DocumentStatusID]  DEFAULT ((1)) FOR [DocumentStatusID]
GO
ALTER TABLE [dbo].[fooDocument] ADD  CONSTRAINT [DF_fooDocument_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[fooDocument] ADD  CONSTRAINT [DF_fooDocument_RecordDate]  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[fooDocument] ADD  CONSTRAINT [DF_fooDocument_ObjectPersonID]  DEFAULT ((2)) FOR [ObjectPersonID]
GO
ALTER TABLE [dbo].[fooExpDocDetail] ADD  CONSTRAINT [DF_fooExpDocDetail_Amount]  DEFAULT ((0)) FOR [Amount]
GO
ALTER TABLE [dbo].[fooExpDocDetail] ADD  CONSTRAINT [DF_fooExpDocDetail_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[fooFood] ADD  CONSTRAINT [DF_fooFood1_Koef]  DEFAULT ((100)) FOR [Koef]
GO
ALTER TABLE [dbo].[fooFood] ADD  CONSTRAINT [DF_fooFood_IsUndividedPack]  DEFAULT ((0)) FOR [IsUndividedPack]
GO
ALTER TABLE [dbo].[fooFood] ADD  CONSTRAINT [DF_fooFood_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[fooFood] ADD  CONSTRAINT [DF_fooFood_RoundTo]  DEFAULT ((2)) FOR [RoundTo]
GO
ALTER TABLE [dbo].[fooFood] ADD  CONSTRAINT [DF_fooFood_IsFromStorage]  DEFAULT ((1)) FOR [IsFromStorage]
GO
ALTER TABLE [dbo].[fooFoodLoss] ADD  CONSTRAINT [DF__fooFoodLo__BoilL__25FB978D]  DEFAULT ((0)) FOR [BoilLoss]
GO
ALTER TABLE [dbo].[fooFoodObject] ADD  CONSTRAINT [DF_fooFoodObject_ExpCondition]  DEFAULT ((1)) FOR [ExpCondition]
GO
ALTER TABLE [dbo].[fooFoodObject] ADD  CONSTRAINT [DF_fooFoodObject_CheckPercent]  DEFAULT ((3)) FOR [CheckPercent]
GO
ALTER TABLE [dbo].[fooFoodRecipe] ADD  CONSTRAINT [DF_fooFoodRecipe_IsBoilLoss]  DEFAULT ((0)) FOR [IsBoilLoss]
GO
ALTER TABLE [dbo].[fooFoodRecipe] ADD  CONSTRAINT [DF_fooFoodRecipe_PercentValue]  DEFAULT (NULL) FOR [PercentValue]
GO
ALTER TABLE [dbo].[fooFoodVATRate] ADD  CONSTRAINT [DF_FoodVATRate_VatRate]  DEFAULT ((0)) FOR [VatRate]
GO
ALTER TABLE [dbo].[fooIncDocDetail] ADD  CONSTRAINT [DF_fooIncDocDetail_UnitMeasureID]  DEFAULT ((1)) FOR [UnitMeasureID]
GO
ALTER TABLE [dbo].[fooIncDocDetail] ADD  CONSTRAINT [DF_fooIncDocDetail_Amount]  DEFAULT ((0)) FOR [Amount]
GO
ALTER TABLE [dbo].[fooIncDocDetail] ADD  CONSTRAINT [DF_fooIncDocDetail_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[fooIncDocDetail] ADD  CONSTRAINT [DF_fooIncDocDetail_IsUndividedPack]  DEFAULT ((0)) FOR [IsUndividedPack]
GO
ALTER TABLE [dbo].[fooIncDocDetail] ADD  CONSTRAINT [DF_fooIncDocDetail_LossPercent]  DEFAULT ((0)) FOR [LossPercent]
GO
ALTER TABLE [dbo].[fooMaker] ADD  CONSTRAINT [DF_fooMaker_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[fooMaker] ADD  CONSTRAINT [DF_fooMaker_RecordDate]  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[fooMenu] ADD  CONSTRAINT [DF_fooMenu_MenuStatusID]  DEFAULT ((0)) FOR [MenuStatusID]
GO
ALTER TABLE [dbo].[fooMenu] ADD  CONSTRAINT [DF_fooMenu_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[fooMenu] ADD  CONSTRAINT [DF_fooMenu_RecordDate]  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[fooMenu] ADD  CONSTRAINT [DF_fooMenu_IsNeedRecalc]  DEFAULT ((0)) FOR [IsNeedRecalc]
GO
ALTER TABLE [dbo].[fooMenuCategory] ADD  CONSTRAINT [DF_fooMenuCategory_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[fooMenuCategory] ADD  CONSTRAINT [DF_fooMenuCategory_RecordDate]  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[fooMenuCategory] ADD  CONSTRAINT [DF_fooMenuCategory_PortionCountFact]  DEFAULT ((0)) FOR [PortionCountFact]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] ADD  CONSTRAINT [DF_fooMenuCategoryTimeRecipe_Netto]  DEFAULT ((0)) FOR [Netto]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] ADD  CONSTRAINT [DF_fooMenuCategoryTimeRecipe_PortionCount]  DEFAULT ((0)) FOR [PortionCount]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] ADD  CONSTRAINT [DF_fooMenuCategoryTimeRecipe_ControlPortionCount]  DEFAULT ((0)) FOR [ControlPortionCount]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] ADD  CONSTRAINT [DF_fooMenuCategoryTimeRecipe_PersonPortionCount]  DEFAULT ((0)) FOR [PersonPortionCount]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] ADD  CONSTRAINT [DF_fooMenuCategoryTimeRecipe_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] ADD  CONSTRAINT [DF_fooMenuCategoryTimeRecipe_RecordDate]  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] ADD  CONSTRAINT [DF_fooMenuCategoryTimeRecipe_PortionCountFact]  DEFAULT ((0)) FOR [PortionCountFact]
GO
ALTER TABLE [dbo].[fooObjectPerson] ADD  CONSTRAINT [DF_fooObjectPerson_IsMain]  DEFAULT ((1)) FOR [IsMain]
GO
ALTER TABLE [dbo].[fooPersonForAccounting] ADD  CONSTRAINT [DF_fooPersonObjectForAccounting_IsMain]  DEFAULT ((1)) FOR [IsMain]
GO
ALTER TABLE [dbo].[fooRecipe] ADD  CONSTRAINT [DF_fooRecipe_DesignText]  DEFAULT ('') FOR [DesignText]
GO
ALTER TABLE [dbo].[fooRecipe] ADD  CONSTRAINT [DF_fooRecipe_IndicatorText]  DEFAULT ('') FOR [IndicatorText]
GO
ALTER TABLE [dbo].[fooRecipe] ADD  CONSTRAINT [DF_fooRecipe_RecordStatusID]  DEFAULT ((3)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[fooRecipe] ADD  CONSTRAINT [DF_fooRecipe_ApproveDate]  DEFAULT (getdate()) FOR [ApproveDate]
GO
ALTER TABLE [dbo].[fooRecipe] ADD  CONSTRAINT [DF_fooRecipe_IsArchive]  DEFAULT ((0)) FOR [IsArchive]
GO
ALTER TABLE [dbo].[fooRecipe] ADD  CONSTRAINT [DF_fooRecipe_IsVisible]  DEFAULT ((1)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[fooRecipe] ADD  CONSTRAINT [DF_fooRecipe_TechCardGroupID]  DEFAULT ((10)) FOR [TechCardGroupID]
GO
ALTER TABLE [dbo].[fooRecipeEatingCategoryNetto] ADD  CONSTRAINT [DF_fooRecipeEatingCategoryNetto_Netto]  DEFAULT ((0)) FOR [Netto]
GO
ALTER TABLE [dbo].[fooRecipeElement] ADD  CONSTRAINT [DF_fooRecipeElement_Value]  DEFAULT ((0.0)) FOR [Value]
GO
ALTER TABLE [dbo].[fooRecipeElement] ADD  CONSTRAINT [DF_fooRecipeElement_UserID]  DEFAULT ((1)) FOR [UserID]
GO
ALTER TABLE [dbo].[fooRecipeElement] ADD  CONSTRAINT [DF_fooRecipeElement_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[fooRecipeElement] ADD  CONSTRAINT [DF_fooRecipeElement_RecordDate]  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[fooRecipeStrings] ADD  CONSTRAINT [DF_fooRecipeStrings_RecordStatusID]  DEFAULT ((1)) FOR [RecordStatusID]
GO
ALTER TABLE [dbo].[fooSumForExpDocDetail] ADD  CONSTRAINT [DF_fooSumForExpDocDetail_IsPositive]  DEFAULT ((1)) FOR [IsPositive]
GO
ALTER TABLE [dbo].[fooCommission]  WITH CHECK ADD  CONSTRAINT [FK_fooCommission_fooCommissionType] FOREIGN KEY([CommissionTypeID])
REFERENCES [dbo].[fooCommissionType] ([CommissionTypeID])
GO
ALTER TABLE [dbo].[fooCommission] CHECK CONSTRAINT [FK_fooCommission_fooCommissionType]
GO
ALTER TABLE [dbo].[fooCommission]  WITH CHECK ADD  CONSTRAINT [FK_fooCommission_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[fooCommission] CHECK CONSTRAINT [FK_fooCommission_glbObject]
GO
ALTER TABLE [dbo].[fooCommission]  WITH CHECK ADD  CONSTRAINT [FK_fooCommission_glbPerson] FOREIGN KEY([PersonID])
REFERENCES [dbo].[glbPerson] ([PersonID])
GO
ALTER TABLE [dbo].[fooCommission] CHECK CONSTRAINT [FK_fooCommission_glbPerson]
GO
ALTER TABLE [dbo].[fooContract]  WITH CHECK ADD  CONSTRAINT [FK_fooContract_glbContragentAll] FOREIGN KEY([ContragentAllID])
REFERENCES [dbo].[glbContragentAll] ([ContragentID])
GO
ALTER TABLE [dbo].[fooContract] CHECK CONSTRAINT [FK_fooContract_glbContragentAll]
GO
ALTER TABLE [dbo].[fooContract]  WITH CHECK ADD  CONSTRAINT [FK_fooContract_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[fooContract] CHECK CONSTRAINT [FK_fooContract_glbObject]
GO
ALTER TABLE [dbo].[fooContractDetail]  WITH CHECK ADD  CONSTRAINT [FK_fooContractDetail_fooContract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[fooContract] ([ContractID])
GO
ALTER TABLE [dbo].[fooContractDetail] CHECK CONSTRAINT [FK_fooContractDetail_fooContract]
GO
ALTER TABLE [dbo].[fooContractDetail]  WITH CHECK ADD  CONSTRAINT [FK_fooContractDetail_fooFood] FOREIGN KEY([FoodID])
REFERENCES [dbo].[fooFood] ([FoodID])
GO
ALTER TABLE [dbo].[fooContractDetail] CHECK CONSTRAINT [FK_fooContractDetail_fooFood]
GO
ALTER TABLE [dbo].[fooContractDetail]  WITH CHECK ADD  CONSTRAINT [FK_fooContractDetail_fooUnitMeasure] FOREIGN KEY([UnitMeasureID])
REFERENCES [dbo].[fooUnitMeasure] ([UnitMeasureID])
GO
ALTER TABLE [dbo].[fooContractDetail] CHECK CONSTRAINT [FK_fooContractDetail_fooUnitMeasure]
GO
ALTER TABLE [dbo].[fooDocument]  WITH CHECK ADD  CONSTRAINT [FK_fooDocument_fooContract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[fooContract] ([ContractID])
GO
ALTER TABLE [dbo].[fooDocument] CHECK CONSTRAINT [FK_fooDocument_fooContract]
GO
ALTER TABLE [dbo].[fooDocument]  WITH CHECK ADD  CONSTRAINT [FK_fooDocument_fooDocumentType] FOREIGN KEY([DocumentTypeID])
REFERENCES [dbo].[fooDocumentType] ([DocumentTypeID])
GO
ALTER TABLE [dbo].[fooDocument] CHECK CONSTRAINT [FK_fooDocument_fooDocumentType]
GO
ALTER TABLE [dbo].[fooDocument]  WITH CHECK ADD  CONSTRAINT [FK_fooDocument_glbContragentAll] FOREIGN KEY([ContragentAllID])
REFERENCES [dbo].[glbContragentAll] ([ContragentID])
GO
ALTER TABLE [dbo].[fooDocument] CHECK CONSTRAINT [FK_fooDocument_glbContragentAll]
GO
ALTER TABLE [dbo].[fooDocument]  WITH CHECK ADD  CONSTRAINT [FK_fooDocument_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[fooDocument] CHECK CONSTRAINT [FK_fooDocument_glbObject]
GO
ALTER TABLE [dbo].[fooElement]  WITH CHECK ADD  CONSTRAINT [FK_fooElement_fooUnitMeasure] FOREIGN KEY([UnitMeasureID])
REFERENCES [dbo].[fooUnitMeasure] ([UnitMeasureID])
GO
ALTER TABLE [dbo].[fooElement] CHECK CONSTRAINT [FK_fooElement_fooUnitMeasure]
GO
ALTER TABLE [dbo].[fooElementNorm]  WITH CHECK ADD  CONSTRAINT [FK_fooElementNorm_fooEatingCategory] FOREIGN KEY([EatingCategoryID])
REFERENCES [dbo].[fooEatingCategory] ([EatingCategoryID])
GO
ALTER TABLE [dbo].[fooElementNorm] CHECK CONSTRAINT [FK_fooElementNorm_fooEatingCategory]
GO
ALTER TABLE [dbo].[fooElementNorm]  WITH CHECK ADD  CONSTRAINT [FK_fooElementNorm_fooElement] FOREIGN KEY([ElementID])
REFERENCES [dbo].[fooElement] ([ElementID])
GO
ALTER TABLE [dbo].[fooElementNorm] CHECK CONSTRAINT [FK_fooElementNorm_fooElement]
GO
ALTER TABLE [dbo].[fooExpDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_fooExpDocDetail_fooDocument] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[fooDocument] ([DocumentID])
GO
ALTER TABLE [dbo].[fooExpDocDetail] CHECK CONSTRAINT [FK_fooExpDocDetail_fooDocument]
GO
ALTER TABLE [dbo].[fooExpDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_fooExpDocDetail_fooIncDocDetail] FOREIGN KEY([IncDocDetailID])
REFERENCES [dbo].[fooIncDocDetail] ([IncDocDetailID])
GO
ALTER TABLE [dbo].[fooExpDocDetail] CHECK CONSTRAINT [FK_fooExpDocDetail_fooIncDocDetail]
GO
ALTER TABLE [dbo].[fooFood]  WITH CHECK ADD  CONSTRAINT [FK_fooFood_fooFoodGroup] FOREIGN KEY([FoodGroupID])
REFERENCES [dbo].[fooFoodGroup] ([FoodGroupID])
GO
ALTER TABLE [dbo].[fooFood] CHECK CONSTRAINT [FK_fooFood_fooFoodGroup]
GO
ALTER TABLE [dbo].[fooFood]  WITH CHECK ADD  CONSTRAINT [FK_fooFood_fooGroup] FOREIGN KEY([GroupID])
REFERENCES [dbo].[fooGroup] ([GroupID])
GO
ALTER TABLE [dbo].[fooFood] CHECK CONSTRAINT [FK_fooFood_fooGroup]
GO
ALTER TABLE [dbo].[fooFood]  WITH CHECK ADD  CONSTRAINT [FK_fooFood_fooNomenclature] FOREIGN KEY([NomenclatureID])
REFERENCES [dbo].[fooNomenclature] ([NomenclatureID])
GO
ALTER TABLE [dbo].[fooFood] CHECK CONSTRAINT [FK_fooFood_fooNomenclature]
GO
ALTER TABLE [dbo].[fooFood]  WITH CHECK ADD  CONSTRAINT [FK_fooFood_fooUnitMeasure] FOREIGN KEY([UnitMeasureID])
REFERENCES [dbo].[fooUnitMeasure] ([UnitMeasureID])
GO
ALTER TABLE [dbo].[fooFood] CHECK CONSTRAINT [FK_fooFood_fooUnitMeasure]
GO
ALTER TABLE [dbo].[fooFoodElement]  WITH CHECK ADD  CONSTRAINT [FK_fooFoodElement_fooElement] FOREIGN KEY([ElementID])
REFERENCES [dbo].[fooElement] ([ElementID])
GO
ALTER TABLE [dbo].[fooFoodElement] CHECK CONSTRAINT [FK_fooFoodElement_fooElement]
GO
ALTER TABLE [dbo].[fooFoodElement]  WITH CHECK ADD  CONSTRAINT [FK_fooFoodElement_fooFood] FOREIGN KEY([FoodID])
REFERENCES [dbo].[fooFood] ([FoodID])
GO
ALTER TABLE [dbo].[fooFoodElement] CHECK CONSTRAINT [FK_fooFoodElement_fooFood]
GO
ALTER TABLE [dbo].[fooFoodGroup]  WITH CHECK ADD  CONSTRAINT [FK_fooFoodGroup_fooFoodGroup] FOREIGN KEY([ParentFoodGroupID])
REFERENCES [dbo].[fooFoodGroup] ([FoodGroupID])
GO
ALTER TABLE [dbo].[fooFoodGroup] CHECK CONSTRAINT [FK_fooFoodGroup_fooFoodGroup]
GO
ALTER TABLE [dbo].[fooFoodLoss]  WITH CHECK ADD  CONSTRAINT [FK_fooFoodLoss_fooFood] FOREIGN KEY([FoodID])
REFERENCES [dbo].[fooFood] ([FoodID])
GO
ALTER TABLE [dbo].[fooFoodLoss] CHECK CONSTRAINT [FK_fooFoodLoss_fooFood]
GO
ALTER TABLE [dbo].[fooFoodLoss]  WITH CHECK ADD  CONSTRAINT [FK_fooFoodLoss_glbMonth] FOREIGN KEY([MonthID])
REFERENCES [dbo].[glbMonth] ([MonthID])
GO
ALTER TABLE [dbo].[fooFoodLoss] CHECK CONSTRAINT [FK_fooFoodLoss_glbMonth]
GO
ALTER TABLE [dbo].[fooFoodObject]  WITH CHECK ADD  CONSTRAINT [FK_fooFoodObject_fooFood] FOREIGN KEY([FoodID])
REFERENCES [dbo].[fooFood] ([FoodID])
GO
ALTER TABLE [dbo].[fooFoodObject] CHECK CONSTRAINT [FK_fooFoodObject_fooFood]
GO
ALTER TABLE [dbo].[fooFoodObject]  WITH CHECK ADD  CONSTRAINT [FK_fooFoodObject_fooUnitMeasure] FOREIGN KEY([UnitMeasureID])
REFERENCES [dbo].[fooUnitMeasure] ([UnitMeasureID])
GO
ALTER TABLE [dbo].[fooFoodObject] CHECK CONSTRAINT [FK_fooFoodObject_fooUnitMeasure]
GO
ALTER TABLE [dbo].[fooFoodObject]  WITH CHECK ADD  CONSTRAINT [FK_fooFoodObject_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[fooFoodObject] CHECK CONSTRAINT [FK_fooFoodObject_glbObject]
GO
ALTER TABLE [dbo].[fooFoodRecipe]  WITH CHECK ADD  CONSTRAINT [FK_fooFoodRecipe_fooFood] FOREIGN KEY([FoodID])
REFERENCES [dbo].[fooFood] ([FoodID])
GO
ALTER TABLE [dbo].[fooFoodRecipe] CHECK CONSTRAINT [FK_fooFoodRecipe_fooFood]
GO
ALTER TABLE [dbo].[fooFoodRecipe]  WITH CHECK ADD  CONSTRAINT [FK_fooFoodRecipe_fooRecipe1] FOREIGN KEY([RecipeID])
REFERENCES [dbo].[fooRecipe] ([RecipeID])
GO
ALTER TABLE [dbo].[fooFoodRecipe] CHECK CONSTRAINT [FK_fooFoodRecipe_fooRecipe1]
GO
ALTER TABLE [dbo].[fooFoodSanPinNormGroup]  WITH CHECK ADD  CONSTRAINT [FK_fooSanPinNormGroup_fooFood] FOREIGN KEY([FoodID])
REFERENCES [dbo].[fooFood] ([FoodID])
GO
ALTER TABLE [dbo].[fooFoodSanPinNormGroup] CHECK CONSTRAINT [FK_fooSanPinNormGroup_fooFood]
GO
ALTER TABLE [dbo].[fooFoodSanPinNormGroup]  WITH CHECK ADD  CONSTRAINT [FK_fooSanPinNormGroup_fooGroup] FOREIGN KEY([GroupID])
REFERENCES [dbo].[fooGroup] ([GroupID])
GO
ALTER TABLE [dbo].[fooFoodSanPinNormGroup] CHECK CONSTRAINT [FK_fooSanPinNormGroup_fooGroup]
GO
ALTER TABLE [dbo].[fooFoodVATRate]  WITH CHECK ADD  CONSTRAINT [FK_fooFoodVATRate_fooFood] FOREIGN KEY([FoodID])
REFERENCES [dbo].[fooFood] ([FoodID])
GO
ALTER TABLE [dbo].[fooFoodVATRate] CHECK CONSTRAINT [FK_fooFoodVATRate_fooFood]
GO
ALTER TABLE [dbo].[fooGroupNorm]  WITH CHECK ADD  CONSTRAINT [FK_fooGroupNorm_fooEatingCategory] FOREIGN KEY([EatingCategoryID])
REFERENCES [dbo].[fooEatingCategory] ([EatingCategoryID])
GO
ALTER TABLE [dbo].[fooGroupNorm] CHECK CONSTRAINT [FK_fooGroupNorm_fooEatingCategory]
GO
ALTER TABLE [dbo].[fooGroupNorm]  WITH CHECK ADD  CONSTRAINT [FK_fooGroupNorm_fooGroup] FOREIGN KEY([GroupID])
REFERENCES [dbo].[fooGroup] ([GroupID])
GO
ALTER TABLE [dbo].[fooGroupNorm] CHECK CONSTRAINT [FK_fooGroupNorm_fooGroup]
GO
ALTER TABLE [dbo].[fooIncDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_fooIncDocDetail_fooDeclaration] FOREIGN KEY([DeclarationID])
REFERENCES [dbo].[fooDeclaration] ([DeclarationID])
GO
ALTER TABLE [dbo].[fooIncDocDetail] CHECK CONSTRAINT [FK_fooIncDocDetail_fooDeclaration]
GO
ALTER TABLE [dbo].[fooIncDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_fooIncDocDetail_fooDocument] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[fooDocument] ([DocumentID])
GO
ALTER TABLE [dbo].[fooIncDocDetail] CHECK CONSTRAINT [FK_fooIncDocDetail_fooDocument]
GO
ALTER TABLE [dbo].[fooIncDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_fooIncDocDetail_fooFood] FOREIGN KEY([FoodID])
REFERENCES [dbo].[fooFood] ([FoodID])
GO
ALTER TABLE [dbo].[fooIncDocDetail] CHECK CONSTRAINT [FK_fooIncDocDetail_fooFood]
GO
ALTER TABLE [dbo].[fooIncDocDetail]  WITH CHECK ADD  CONSTRAINT [FK_fooIncDocDetail_fooUnitMeasure] FOREIGN KEY([UnitMeasureID])
REFERENCES [dbo].[fooUnitMeasure] ([UnitMeasureID])
GO
ALTER TABLE [dbo].[fooIncDocDetail] CHECK CONSTRAINT [FK_fooIncDocDetail_fooUnitMeasure]
GO
ALTER TABLE [dbo].[fooMaker]  WITH CHECK ADD  CONSTRAINT [FK_fooMaker_glbCountry] FOREIGN KEY([CountryID])
REFERENCES [dbo].[glbCountry] ([CountryID])
GO
ALTER TABLE [dbo].[fooMaker] CHECK CONSTRAINT [FK_fooMaker_glbCountry]
GO
ALTER TABLE [dbo].[fooMenu]  WITH CHECK ADD  CONSTRAINT [FK_fooMenu_fooMenuStatus] FOREIGN KEY([MenuStatusID])
REFERENCES [dbo].[fooMenuStatus] ([MenuStatusID])
GO
ALTER TABLE [dbo].[fooMenu] CHECK CONSTRAINT [FK_fooMenu_fooMenuStatus]
GO
ALTER TABLE [dbo].[fooMenu]  WITH CHECK ADD  CONSTRAINT [FK_fooMenu_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[fooMenu] CHECK CONSTRAINT [FK_fooMenu_glbObject]
GO
ALTER TABLE [dbo].[fooMenuCategory]  WITH CHECK ADD  CONSTRAINT [FK_fooMenuCategory_fooMenu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[fooMenu] ([MenuID])
GO
ALTER TABLE [dbo].[fooMenuCategory] CHECK CONSTRAINT [FK_fooMenuCategory_fooMenu]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe]  WITH CHECK ADD  CONSTRAINT [FK_fooMenuCategoryTimeRecipe_fooEatingTime] FOREIGN KEY([EatingTimeID])
REFERENCES [dbo].[fooEatingTime] ([EatingTimeID])
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] CHECK CONSTRAINT [FK_fooMenuCategoryTimeRecipe_fooEatingTime]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe]  WITH CHECK ADD  CONSTRAINT [FK_fooMenuCategoryTimeRecipe_fooMenuCategory] FOREIGN KEY([MenuCategoryID])
REFERENCES [dbo].[fooMenuCategory] ([MenuCategoryID])
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] CHECK CONSTRAINT [FK_fooMenuCategoryTimeRecipe_fooMenuCategory]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe]  WITH CHECK ADD  CONSTRAINT [FK_fooMenuCategoryTimeRecipe_fooMenuCategoryTimeRecipe] FOREIGN KEY([ParentMenuCategoryTimeRecipeID])
REFERENCES [dbo].[fooMenuCategoryTimeRecipe] ([MenuCategoryTimeRecipeID])
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] CHECK CONSTRAINT [FK_fooMenuCategoryTimeRecipe_fooMenuCategoryTimeRecipe]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe]  WITH CHECK ADD  CONSTRAINT [FK_fooMenuCategoryTimeRecipe_fooMenuCorrectionType] FOREIGN KEY([MenuCorrectionTypeID])
REFERENCES [dbo].[fooMenuCorrectionType] ([MenuCorrectionTypeID])
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] CHECK CONSTRAINT [FK_fooMenuCategoryTimeRecipe_fooMenuCorrectionType]
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe]  WITH CHECK ADD  CONSTRAINT [FK_fooMenuCategoryTimeRecipe_fooRecipe] FOREIGN KEY([RecipeID])
REFERENCES [dbo].[fooRecipe] ([RecipeID])
GO
ALTER TABLE [dbo].[fooMenuCategoryTimeRecipe] CHECK CONSTRAINT [FK_fooMenuCategoryTimeRecipe_fooRecipe]
GO
ALTER TABLE [dbo].[fooObjectEatingTimeHours]  WITH CHECK ADD  CONSTRAINT [FK_fooObjectEatingTimeHours_fooEatingCategory] FOREIGN KEY([EatingCategoryID])
REFERENCES [dbo].[fooEatingCategory] ([EatingCategoryID])
GO
ALTER TABLE [dbo].[fooObjectEatingTimeHours] CHECK CONSTRAINT [FK_fooObjectEatingTimeHours_fooEatingCategory]
GO
ALTER TABLE [dbo].[fooObjectEatingTimeHours]  WITH CHECK ADD  CONSTRAINT [FK_fooObjectEatingTimeHours_fooEatingTime] FOREIGN KEY([EatingTimeID])
REFERENCES [dbo].[fooEatingTime] ([EatingTimeID])
GO
ALTER TABLE [dbo].[fooObjectEatingTimeHours] CHECK CONSTRAINT [FK_fooObjectEatingTimeHours_fooEatingTime]
GO
ALTER TABLE [dbo].[fooObjectEatingTimeHours]  WITH CHECK ADD  CONSTRAINT [FK_fooObjectEatingTimeHours_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[fooObjectEatingTimeHours] CHECK CONSTRAINT [FK_fooObjectEatingTimeHours_glbObject]
GO
ALTER TABLE [dbo].[fooObjectPerson]  WITH CHECK ADD  CONSTRAINT [FK_fooObjectPerson_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[fooObjectPerson] CHECK CONSTRAINT [FK_fooObjectPerson_glbObject]
GO
ALTER TABLE [dbo].[fooObjectPerson]  WITH CHECK ADD  CONSTRAINT [FK_fooObjectPerson_glbPerson] FOREIGN KEY([PersonID])
REFERENCES [dbo].[glbPerson] ([PersonID])
GO
ALTER TABLE [dbo].[fooObjectPerson] CHECK CONSTRAINT [FK_fooObjectPerson_glbPerson]
GO
ALTER TABLE [dbo].[fooPersonForAccounting]  WITH CHECK ADD  CONSTRAINT [FK_fooPersonObjectForAccounting_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[fooPersonForAccounting] CHECK CONSTRAINT [FK_fooPersonObjectForAccounting_glbObject]
GO
ALTER TABLE [dbo].[fooRecipe]  WITH CHECK ADD  CONSTRAINT [FK_fooRecipe_fooRecipeGroup] FOREIGN KEY([RecipeGroupID])
REFERENCES [dbo].[fooRecipeGroup] ([RecipeGroupID])
GO
ALTER TABLE [dbo].[fooRecipe] CHECK CONSTRAINT [FK_fooRecipe_fooRecipeGroup]
GO
ALTER TABLE [dbo].[fooRecipe]  WITH CHECK ADD  CONSTRAINT [FK_fooRecipe_fooRecipeSource] FOREIGN KEY([RecipeSourceID])
REFERENCES [dbo].[fooRecipeSource] ([RecipeSourceID])
GO
ALTER TABLE [dbo].[fooRecipe] CHECK CONSTRAINT [FK_fooRecipe_fooRecipeSource]
GO
ALTER TABLE [dbo].[fooRecipe]  WITH CHECK ADD  CONSTRAINT [FK_fooRecipe_fooTechCardGroups] FOREIGN KEY([TechCardGroupID])
REFERENCES [dbo].[fooTechCardGroups] ([TechCardGroupID])
GO
ALTER TABLE [dbo].[fooRecipe] CHECK CONSTRAINT [FK_fooRecipe_fooTechCardGroups]
GO
ALTER TABLE [dbo].[fooRecipeEatingCategoryNetto]  WITH CHECK ADD  CONSTRAINT [FK_fooRecipeEatingCategoryNetto_fooEatingCategory] FOREIGN KEY([EatingCategoryID])
REFERENCES [dbo].[fooEatingCategory] ([EatingCategoryID])
GO
ALTER TABLE [dbo].[fooRecipeEatingCategoryNetto] CHECK CONSTRAINT [FK_fooRecipeEatingCategoryNetto_fooEatingCategory]
GO
ALTER TABLE [dbo].[fooRecipeEatingCategoryNetto]  WITH CHECK ADD  CONSTRAINT [FK_fooRecipeEatingCategoryNetto_fooRecipeEatingCategoryNetto] FOREIGN KEY([RecipeID])
REFERENCES [dbo].[fooRecipe] ([RecipeID])
GO
ALTER TABLE [dbo].[fooRecipeEatingCategoryNetto] CHECK CONSTRAINT [FK_fooRecipeEatingCategoryNetto_fooRecipeEatingCategoryNetto]
GO
ALTER TABLE [dbo].[fooRecipeElement]  WITH CHECK ADD  CONSTRAINT [FK_fooRecipeElement_fooElement] FOREIGN KEY([ElementID])
REFERENCES [dbo].[fooElement] ([ElementID])
GO
ALTER TABLE [dbo].[fooRecipeElement] CHECK CONSTRAINT [FK_fooRecipeElement_fooElement]
GO
ALTER TABLE [dbo].[fooRecipeElement]  WITH CHECK ADD  CONSTRAINT [FK_fooRecipeElement_fooRecipe] FOREIGN KEY([RecipeID])
REFERENCES [dbo].[fooRecipe] ([RecipeID])
GO
ALTER TABLE [dbo].[fooRecipeElement] CHECK CONSTRAINT [FK_fooRecipeElement_fooRecipe]
GO
ALTER TABLE [dbo].[fooRecipeGroup]  WITH CHECK ADD  CONSTRAINT [FK_fooRecipeGroup_fooRecipeGroup] FOREIGN KEY([RecipeGroupID])
REFERENCES [dbo].[fooRecipeGroup] ([RecipeGroupID])
GO
ALTER TABLE [dbo].[fooRecipeGroup] CHECK CONSTRAINT [FK_fooRecipeGroup_fooRecipeGroup]
GO
ALTER TABLE [dbo].[fooRecipeGroup]  WITH CHECK ADD  CONSTRAINT [FK_fooRecipeGroup_glbObject] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[glbObject] ([ObjectID])
GO
ALTER TABLE [dbo].[fooRecipeGroup] CHECK CONSTRAINT [FK_fooRecipeGroup_glbObject]
GO
ALTER TABLE [dbo].[fooTechCardGroups]  WITH CHECK ADD  CONSTRAINT [FK_fooTechCardGroups_fooTechCardGroups] FOREIGN KEY([TechCardGroupID])
REFERENCES [dbo].[fooTechCardGroups] ([TechCardGroupID])
GO
ALTER TABLE [dbo].[fooTechCardGroups] CHECK CONSTRAINT [FK_fooTechCardGroups_fooTechCardGroups]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 - проект, 2 - утвержденный' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'fooDocument', @level2type=N'COLUMN',@level2name=N'DocumentStatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'утвержденное - неутвержденное' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'fooMenu', @level2type=N'COLUMN',@level2name=N'MenuStatusID'
GO
