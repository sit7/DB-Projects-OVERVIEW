USE [Proteus]
GO
/****** Object:  Table [dbo].[tblCalendar]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCalendar](
	[idCalendar] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Type] [bit] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUser] [int] NULL,
	[idRecordStatus] [int] NULL,
	[RecordDate] [datetime] NOT NULL,
	[WorkHours] [float] NULL,
	[idObject] [int] NOT NULL,
 CONSTRAINT [PK_tblCalendar] PRIMARY KEY CLUSTERED 
(
	[idCalendar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDocumentType]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDocumentType](
	[idDocumentType] [int] NOT NULL,
	[Name] [varchar](20) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[idDocumentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEdIzm]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEdIzm](
	[idEdIzm] [int] NOT NULL,
	[Name] [char](18) NULL,
 CONSTRAINT [PK_tblEdIzm] PRIMARY KEY CLUSTERED 
(
	[idEdIzm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFilterPosition]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFilterPosition](
	[idFilterPosition] [int] IDENTITY(1,1) NOT NULL,
	[idPosition] [int] NOT NULL,
	[idObject] [int] NOT NULL,
	[idPositionMeaning] [int] NOT NULL,
 CONSTRAINT [PK_tblFilterPosition] PRIMARY KEY CLUSTERED 
(
	[idFilterPosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_tblFilterPosition] UNIQUE NONCLUSTERED 
(
	[idObject] ASC,
	[idPosition] ASC,
	[idPositionMeaning] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNormDaysHoursCalendar]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNormDaysHoursCalendar](
	[idNormDaysHoursCalendar] [int] IDENTITY(1,1) NOT NULL,
	[idScheduleType] [int] NOT NULL,
	[Month] [datetime] NOT NULL,
	[Norm_hours] [decimal](6, 2) NOT NULL,
	[Norm_days] [decimal](6, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idNormDaysHoursCalendar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPerson]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPerson](
	[idPerson] [varchar](20) NOT NULL,
	[NumberInTeam] [int] NULL,
	[Surname] [varchar](20) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[FatherName] [varchar](20) NOT NULL,
	[NameEng] [varchar](20) NULL,
	[SurNameEng] [varchar](20) NULL,
	[BirthDay] [datetime] NULL,
	[CivilPassportNumber] [varchar](20) NULL,
	[idCitizenship] [int] NOT NULL,
	[idBirthPlace] [int] NOT NULL,
	[idObject] [int] NOT NULL,
	[idUser] [int] NULL,
	[RecordDate] [datetime] NOT NULL,
	[idRecordStatus] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DateOfDismissal] [datetime] NULL,
	[BirthPlaceOther] [varchar](80) NULL,
	[SeamanPassportNumber] [varchar](20) NULL,
	[SeamanPassportNumberEng] [varchar](20) NULL,
	[BirthPlaceOtherEng] [varchar](80) NULL,
	[Address] [varchar](128) NULL,
	[Telephone] [varchar](50) NULL,
 CONSTRAINT [PK__tblPerson__6BE59B3F] PRIMARY KEY NONCLUSTERED 
(
	[idPerson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPerson_Store]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPerson_Store](
	[idStore] [int] IDENTITY(1,1) NOT NULL,
	[idPerson] [char](20) NULL,
	[NumberInTeam] [int] NULL,
	[Surname] [varchar](20) NULL,
	[Name] [varchar](20) NULL,
	[FatherName] [varchar](20) NULL,
	[NameEng] [varchar](20) NULL,
	[SurNameEng] [varchar](20) NULL,
	[BirthDay] [datetime] NULL,
	[CivilPassportNumber] [varchar](20) NULL,
	[idCitizenship] [int] NULL,
	[idBirthPlace] [int] NULL,
	[idObject] [int] NULL,
	[idUser] [int] NULL,
	[RecordDate] [datetime] NULL,
	[idRecordStatus] [int] NULL,
	[DateOfDismissal] [datetime] NULL,
	[BirthPlaceOther] [varchar](50) NULL,
	[SeamanPassportNumber] [varchar](20) NULL,
	[SeamanPassportNumberEng] [varchar](20) NULL,
	[BirthPlaceOtherEng] [varchar](80) NULL,
 CONSTRAINT [PK_tblPerson_Store] PRIMARY KEY CLUSTERED 
(
	[idStore] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPersonDocument]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPersonDocument](
	[idPersonDocument] [bigint] NOT NULL,
	[Date] [datetime] NULL,
	[Description] [varchar](128) NULL,
	[idDocumentType] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RecordDate] [datetime] NULL,
	[idObject] [int] NULL,
	[idUser] [int] NULL,
	[idRecordStatus] [int] NULL,
	[idPerson] [varchar](20) NOT NULL,
	[EndDate] [datetime] NULL,
	[DocNumber] [varchar](30) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[idPersonDocument] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPersonObject]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPersonObject](
	[idPersonObject] [bigint] NOT NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[RecordDate] [datetime] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idPerson] [varchar](20) NOT NULL,
	[idUser] [int] NULL,
	[idObject] [int] NOT NULL,
	[idRecordStatus] [int] NULL,
	[idObjectService] [int] NOT NULL,
	[HaveMore500HoursRest] [bit] NOT NULL,
	[CurrentWorkYear] [datetime] NULL,
	[CabinNO] [char](10) NULL,
	[ShipTelephone] [char](10) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[idPersonObject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPersonPosition]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPersonPosition](
	[idPersonPosition] [bigint] NOT NULL,
	[idPerson] [varchar](20) NOT NULL,
	[Salary] [decimal](18, 2) NULL,
	[idPosition] [int] NULL,
	[BeginDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[idTypeOfPayments] [int] NOT NULL,
	[idRecordStatus] [int] NOT NULL,
	[idObject] [int] NOT NULL,
	[idUser] [int] NULL,
	[RecordDate] [datetime] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idScheduleType] [int] NULL,
	[Rate_in_YE] [money] NULL,
	[RateIn_YE_forCVoyage] [money] NULL,
 CONSTRAINT [PK__tblPersonPositio__1D7CF6D3] PRIMARY KEY NONCLUSTERED 
(
	[idPersonPosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPosition]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPosition](
	[idPosition] [int] NOT NULL,
	[Name] [varchar](128) NULL,
	[idTeamType] [int] NOT NULL,
	[RecordDate] [datetime] NULL,
	[idRecordStatus] [int] NOT NULL,
	[id] [int] NOT NULL,
	[idUser] [int] NULL,
	[RationNorm] [money] NULL,
	[Salary] [money] NULL,
	[Rank] [int] NULL,
	[NameEng] [varchar](50) NULL,
	[Rate_in_YE] [money] NULL,
	[RateIn_YE_forCVoyage] [money] NULL,
 CONSTRAINT [PK_tblPosition] PRIMARY KEY CLUSTERED 
(
	[idPosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPositionMeaning]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPositionMeaning](
	[idPositionMeaning] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](20) NULL,
 CONSTRAINT [PK_tblPositionMeaning] PRIMARY KEY CLUSTERED 
(
	[idPositionMeaning] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSalarySet]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSalarySet](
	[idSalarySet] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblSalarySet] PRIMARY KEY CLUSTERED 
(
	[idSalarySet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSalaryType]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSalaryType](
	[idSalaryType] [int] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[Code] [varchar](3) NOT NULL,
	[Percent] [float] NULL,
	[idEdIzm] [int] NULL,
	[NotForContract] [bit] NULL,
	[NotForSeparateKindOfJob] [bit] NULL,
	[DontShowInJournal] [bit] NULL,
 CONSTRAINT [PK_tblSalaryType] PRIMARY KEY CLUSTERED 
(
	[idSalaryType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSalaryTypeSet]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSalaryTypeSet](
	[idSalaryTypeSet] [int] IDENTITY(1,1) NOT NULL,
	[idSalarySet] [int] NOT NULL,
	[idSalaryType] [int] NOT NULL,
 CONSTRAINT [PK_tblSalaryTypeSet] PRIMARY KEY CLUSTERED 
(
	[idSalaryTypeSet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_tblSalaryTypeSet] UNIQUE NONCLUSTERED 
(
	[idSalarySet] ASC,
	[idSalaryType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSavedUpDaysOff]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSavedUpDaysOff](
	[idSavedUpDaysOff] [bigint] NOT NULL,
	[Month] [datetime] NOT NULL,
	[idPerson] [varchar](20) NOT NULL,
	[idObject] [int] NOT NULL,
	[idUser] [int] NULL,
	[idRecordStatus] [int] NOT NULL,
	[RecordDate] [datetime] NULL,
	[K_1_4] [float] NULL,
	[K_1_5] [float] NULL,
	[K_1_7] [float] NULL,
	[K_Polar] [float] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[idSavedUpDaysOff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblScheduleType]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblScheduleType](
	[idScheduleType] [int] NOT NULL,
	[Description] [varchar](80) NOT NULL,
	[DaysPerWeek] [int] NOT NULL,
	[HoursADay] [float] NOT NULL,
 CONSTRAINT [PK_tblScheduleType] PRIMARY KEY CLUSTERED 
(
	[idScheduleType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSending]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSending](
	[idSending] [bigint] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](300) NULL,
	[idObject] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idSending] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSumOfDebts]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSumOfDebts](
	[idSumOfDebts] [bigint] NOT NULL,
	[SumOfDebts] [float] NOT NULL,
	[Description] [varchar](50) NULL,
	[idTypeOfDeduction] [bigint] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[idUser] [int] NOT NULL,
	[idRecordStatus] [int] NOT NULL,
	[DateOfDebts] [datetime] NOT NULL,
	[idPerson] [varchar](20) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idObject] [int] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[idSumOfDebts] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTabel]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTabel](
	[idTabel] [bigint] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](80) NOT NULL,
	[idTabelAccountType] [int] NULL,
	[RecordDate] [datetime] NULL,
	[Date] [datetime] NOT NULL,
	[idRecordStatus] [int] NOT NULL,
	[idUser] [int] NOT NULL,
	[idObject] [int] NOT NULL,
	[idObjectService] [int] NULL,
	[SummTotal] [money] NULL,
	[idSalaryType] [int] NULL,
	[idParentTabel] [bigint] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[idTabel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTabelAccountType]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTabelAccountType](
	[idTabelAccountType] [int] NOT NULL,
	[Description] [varchar](80) NOT NULL,
 CONSTRAINT [PK_tblTabelAccountType] PRIMARY KEY CLUSTERED 
(
	[idTabelAccountType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTabelDetail]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTabelDetail](
	[idTabelDetail] [bigint] NOT NULL,
	[idTabel] [bigint] NULL,
	[idSalaryType] [int] NOT NULL,
	[Salary] [float] NULL,
	[idPersonPosition] [bigint] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRecordStatus] [int] NULL,
	[idUser] [int] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[d1] [varchar](4) NULL,
	[d2] [varchar](4) NULL,
	[d3] [varchar](4) NULL,
	[d4] [varchar](4) NULL,
	[d5] [varchar](4) NULL,
	[d6] [varchar](4) NULL,
	[d7] [varchar](4) NULL,
	[d8] [varchar](4) NULL,
	[d9] [varchar](4) NULL,
	[d10] [varchar](4) NULL,
	[d11] [varchar](4) NULL,
	[d12] [varchar](4) NULL,
	[d13] [varchar](4) NULL,
	[d14] [varchar](4) NULL,
	[d15] [varchar](4) NULL,
	[d16] [varchar](4) NULL,
	[d17] [varchar](4) NULL,
	[d18] [varchar](4) NULL,
	[d19] [varchar](4) NULL,
	[d20] [varchar](4) NULL,
	[d21] [varchar](4) NULL,
	[d22] [varchar](4) NULL,
	[d23] [varchar](4) NULL,
	[d24] [varchar](4) NULL,
	[d25] [varchar](4) NULL,
	[d26] [varchar](4) NULL,
	[d27] [varchar](4) NULL,
	[d28] [varchar](4) NULL,
	[d29] [varchar](4) NULL,
	[d30] [varchar](4) NULL,
	[d31] [varchar](4) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[idTabelDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTabelDetailAdditWork]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTabelDetailAdditWork](
	[idTabelDetailAdditWork] [bigint] NOT NULL,
	[idTabel] [bigint] NULL,
	[idPersonPosition] [bigint] NULL,
	[idUser] [int] NULL,
	[idRecordStatus] [int] NULL,
	[RecordDate] [datetime] NULL,
	[Summ] [money] NOT NULL,
	[Percent_pay] [float] NOT NULL,
	[Comments] [varchar](128) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[idTabelDetailAdditWork] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTabelSymbols]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTabelSymbols](
	[idTabelSymbols] [int] NOT NULL,
	[CodeNum] [int] NOT NULL,
	[CodeSymbl] [varchar](3) NOT NULL,
	[Description] [varchar](256) NOT NULL,
	[Img] [image] NULL,
 CONSTRAINT [PK_tblTabelSymbols] PRIMARY KEY CLUSTERED 
(
	[idTabelSymbols] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTypeOfDeduction]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTypeOfDeduction](
	[idTypeOfDeduction] [bigint] NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[Code] [char](10) NOT NULL,
 CONSTRAINT [PK_tblTypeOfDeduction] PRIMARY KEY CLUSTERED 
(
	[idTypeOfDeduction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTypeOfPayments]    Script Date: 03.05.2021 17:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTypeOfPayments](
	[idTypeOfPayments] [int] NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_tblTypeOfPayments] PRIMARY KEY CLUSTERED 
(
	[idTypeOfPayments] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblPerson] ADD  CONSTRAINT [DF__tblPerson__Recor__6AF17706]  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[tblSending] ADD  DEFAULT (getdate()) FOR [RecordDate]
GO
ALTER TABLE [dbo].[tblCalendar]  WITH NOCHECK ADD  CONSTRAINT [FK_tblCalendar_glbRecordStatus] FOREIGN KEY([idRecordStatus])
REFERENCES [dbo].[glbRecordStatus] ([idRecordStatus])
GO
ALTER TABLE [dbo].[tblCalendar] CHECK CONSTRAINT [FK_tblCalendar_glbRecordStatus]
GO
ALTER TABLE [dbo].[tblCalendar]  WITH NOCHECK ADD  CONSTRAINT [FK_tblCalendar_glbUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[glbUser] ([idUser])
GO
ALTER TABLE [dbo].[tblCalendar] CHECK CONSTRAINT [FK_tblCalendar_glbUser]
GO
ALTER TABLE [dbo].[tblFilterPosition]  WITH NOCHECK ADD  CONSTRAINT [FK_tblFilterPosition_glbObject] FOREIGN KEY([idObject])
REFERENCES [dbo].[glbObject] ([idObject])
GO
ALTER TABLE [dbo].[tblFilterPosition] CHECK CONSTRAINT [FK_tblFilterPosition_glbObject]
GO
ALTER TABLE [dbo].[tblFilterPosition]  WITH NOCHECK ADD  CONSTRAINT [FK_tblFilterPosition_tblPosition] FOREIGN KEY([idPosition])
REFERENCES [dbo].[tblPosition] ([idPosition])
GO
ALTER TABLE [dbo].[tblFilterPosition] CHECK CONSTRAINT [FK_tblFilterPosition_tblPosition]
GO
ALTER TABLE [dbo].[tblFilterPosition]  WITH NOCHECK ADD  CONSTRAINT [FK_tblFilterPosition_tblPositionMeaning] FOREIGN KEY([idPositionMeaning])
REFERENCES [dbo].[tblPositionMeaning] ([idPositionMeaning])
GO
ALTER TABLE [dbo].[tblFilterPosition] CHECK CONSTRAINT [FK_tblFilterPosition_tblPositionMeaning]
GO
ALTER TABLE [dbo].[tblNormDaysHoursCalendar]  WITH CHECK ADD FOREIGN KEY([idScheduleType])
REFERENCES [dbo].[tblScheduleType] ([idScheduleType])
GO
ALTER TABLE [dbo].[tblPerson]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idBir__2059637E] FOREIGN KEY([idBirthPlace])
REFERENCES [dbo].[glbCity] ([idCity])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [FK__tblPerson__idBir__2059637E]
GO
ALTER TABLE [dbo].[tblPerson]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idBir__467F0C66] FOREIGN KEY([idBirthPlace])
REFERENCES [dbo].[glbCity] ([idCity])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [FK__tblPerson__idBir__467F0C66]
GO
ALTER TABLE [dbo].[tblPerson]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idBir__756F0579] FOREIGN KEY([idBirthPlace])
REFERENCES [dbo].[glbCity] ([idCity])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [FK__tblPerson__idBir__756F0579]
GO
ALTER TABLE [dbo].[tblPerson]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idCit__214D87B7] FOREIGN KEY([idCitizenship])
REFERENCES [dbo].[glbCountry] ([idCountry])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [FK__tblPerson__idCit__214D87B7]
GO
ALTER TABLE [dbo].[tblPerson]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idCit__4773309F] FOREIGN KEY([idCitizenship])
REFERENCES [dbo].[glbCountry] ([idCountry])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [FK__tblPerson__idCit__4773309F]
GO
ALTER TABLE [dbo].[tblPerson]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idCit__766329B2] FOREIGN KEY([idCitizenship])
REFERENCES [dbo].[glbCountry] ([idCountry])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [FK__tblPerson__idCit__766329B2]
GO
ALTER TABLE [dbo].[tblPerson]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idObj__1F653F45] FOREIGN KEY([idObject])
REFERENCES [dbo].[glbObject] ([idObject])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [FK__tblPerson__idObj__1F653F45]
GO
ALTER TABLE [dbo].[tblPerson]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idRec__2335D029] FOREIGN KEY([idRecordStatus])
REFERENCES [dbo].[glbRecordStatus] ([idRecordStatus])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [FK__tblPerson__idRec__2335D029]
GO
ALTER TABLE [dbo].[tblPerson]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idUse__4A4F9D4A] FOREIGN KEY([idUser])
REFERENCES [dbo].[glbUser] ([idUser])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [FK__tblPerson__idUse__4A4F9D4A]
GO
ALTER TABLE [dbo].[tblPersonDocument]  WITH CHECK ADD  CONSTRAINT [FK__tblPerson__idObj__27FA8546] FOREIGN KEY([idObject])
REFERENCES [dbo].[glbObject] ([idObject])
GO
ALTER TABLE [dbo].[tblPersonDocument] CHECK CONSTRAINT [FK__tblPerson__idObj__27FA8546]
GO
ALTER TABLE [dbo].[tblPersonDocument]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idPer__4B43C183] FOREIGN KEY([idPerson])
REFERENCES [dbo].[tblPerson] ([idPerson])
GO
ALTER TABLE [dbo].[tblPersonDocument] CHECK CONSTRAINT [FK__tblPerson__idPer__4B43C183]
GO
ALTER TABLE [dbo].[tblPersonDocument]  WITH CHECK ADD FOREIGN KEY([idRecordStatus])
REFERENCES [dbo].[glbRecordStatus] ([idRecordStatus])
GO
ALTER TABLE [dbo].[tblPersonDocument]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idUse__4D2C09F5] FOREIGN KEY([idUser])
REFERENCES [dbo].[glbUser] ([idUser])
GO
ALTER TABLE [dbo].[tblPersonDocument] CHECK CONSTRAINT [FK__tblPerson__idUse__4D2C09F5]
GO
ALTER TABLE [dbo].[tblPersonDocument]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonDocument_tblDocumentType] FOREIGN KEY([idDocumentType])
REFERENCES [dbo].[tblDocumentType] ([idDocumentType])
GO
ALTER TABLE [dbo].[tblPersonDocument] CHECK CONSTRAINT [FK_tblPersonDocument_tblDocumentType]
GO
ALTER TABLE [dbo].[tblPersonObject]  WITH CHECK ADD FOREIGN KEY([idObjectService])
REFERENCES [dbo].[glbObjectService] ([idObjectService])
GO
ALTER TABLE [dbo].[tblPersonObject]  WITH CHECK ADD  CONSTRAINT [FK__tblPerson__idObj__2BCB162A] FOREIGN KEY([idObject])
REFERENCES [dbo].[glbObject] ([idObject])
GO
ALTER TABLE [dbo].[tblPersonObject] CHECK CONSTRAINT [FK__tblPerson__idObj__2BCB162A]
GO
ALTER TABLE [dbo].[tblPersonObject]  WITH CHECK ADD FOREIGN KEY([idObjectService])
REFERENCES [dbo].[glbObjectService] ([idObjectService])
GO
ALTER TABLE [dbo].[tblPersonObject]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idPer__2DB35E9C] FOREIGN KEY([idPerson])
REFERENCES [dbo].[tblPerson] ([idPerson])
GO
ALTER TABLE [dbo].[tblPersonObject] CHECK CONSTRAINT [FK__tblPerson__idPer__2DB35E9C]
GO
ALTER TABLE [dbo].[tblPersonObject]  WITH CHECK ADD FOREIGN KEY([idRecordStatus])
REFERENCES [dbo].[glbRecordStatus] ([idRecordStatus])
GO
ALTER TABLE [dbo].[tblPersonObject]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPerson__idUse__2CBF3A63] FOREIGN KEY([idUser])
REFERENCES [dbo].[glbUser] ([idUser])
GO
ALTER TABLE [dbo].[tblPersonObject] CHECK CONSTRAINT [FK__tblPerson__idUse__2CBF3A63]
GO
ALTER TABLE [dbo].[tblPersonPosition]  WITH CHECK ADD  CONSTRAINT [FK__tblPerson__idObj__3668A02E] FOREIGN KEY([idObject])
REFERENCES [dbo].[glbObject] ([idObject])
GO
ALTER TABLE [dbo].[tblPersonPosition] CHECK CONSTRAINT [FK__tblPerson__idObj__3668A02E]
GO
ALTER TABLE [dbo].[tblPersonPosition]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonPosition_glbRecordStatus] FOREIGN KEY([idRecordStatus])
REFERENCES [dbo].[glbRecordStatus] ([idRecordStatus])
GO
ALTER TABLE [dbo].[tblPersonPosition] CHECK CONSTRAINT [FK_tblPersonPosition_glbRecordStatus]
GO
ALTER TABLE [dbo].[tblPersonPosition]  WITH NOCHECK ADD  CONSTRAINT [FK_tblPersonPosition_glbUser] FOREIGN KEY([idUser])
REFERENCES [dbo].[glbUser] ([idUser])
GO
ALTER TABLE [dbo].[tblPersonPosition] CHECK CONSTRAINT [FK_tblPersonPosition_glbUser]
GO
ALTER TABLE [dbo].[tblPersonPosition]  WITH NOCHECK ADD  CONSTRAINT [FK_tblPersonPosition_tblPerson] FOREIGN KEY([idPerson])
REFERENCES [dbo].[tblPerson] ([idPerson])
GO
ALTER TABLE [dbo].[tblPersonPosition] CHECK CONSTRAINT [FK_tblPersonPosition_tblPerson]
GO
ALTER TABLE [dbo].[tblPersonPosition]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonPosition_tblPosition] FOREIGN KEY([idPosition])
REFERENCES [dbo].[tblPosition] ([idPosition])
GO
ALTER TABLE [dbo].[tblPersonPosition] CHECK CONSTRAINT [FK_tblPersonPosition_tblPosition]
GO
ALTER TABLE [dbo].[tblPersonPosition]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonPosition_tblScheduleType] FOREIGN KEY([idScheduleType])
REFERENCES [dbo].[tblScheduleType] ([idScheduleType])
GO
ALTER TABLE [dbo].[tblPersonPosition] CHECK CONSTRAINT [FK_tblPersonPosition_tblScheduleType]
GO
ALTER TABLE [dbo].[tblPersonPosition]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonPosition_tblTypeOfPayments] FOREIGN KEY([idTypeOfPayments])
REFERENCES [dbo].[tblTypeOfPayments] ([idTypeOfPayments])
GO
ALTER TABLE [dbo].[tblPersonPosition] CHECK CONSTRAINT [FK_tblPersonPosition_tblTypeOfPayments]
GO
ALTER TABLE [dbo].[tblPosition]  WITH NOCHECK ADD  CONSTRAINT [FK__tblPositi__idUse__131F63F1] FOREIGN KEY([idUser])
REFERENCES [dbo].[glbUser] ([idUser])
GO
ALTER TABLE [dbo].[tblPosition] CHECK CONSTRAINT [FK__tblPositi__idUse__131F63F1]
GO
ALTER TABLE [dbo].[tblPosition]  WITH CHECK ADD  CONSTRAINT [FK_tblPosition_glbRecordStatus] FOREIGN KEY([idRecordStatus])
REFERENCES [dbo].[glbRecordStatus] ([idRecordStatus])
GO
ALTER TABLE [dbo].[tblPosition] CHECK CONSTRAINT [FK_tblPosition_glbRecordStatus]
GO
ALTER TABLE [dbo].[tblSalaryType]  WITH CHECK ADD FOREIGN KEY([idEdIzm])
REFERENCES [dbo].[tblEdIzm] ([idEdIzm])
GO
ALTER TABLE [dbo].[tblSalaryType]  WITH CHECK ADD  CONSTRAINT [FK_tblSalaryType_tblEdIzm] FOREIGN KEY([idEdIzm])
REFERENCES [dbo].[tblEdIzm] ([idEdIzm])
GO
ALTER TABLE [dbo].[tblSalaryType] CHECK CONSTRAINT [FK_tblSalaryType_tblEdIzm]
GO
ALTER TABLE [dbo].[tblSalaryTypeSet]  WITH CHECK ADD  CONSTRAINT [FK_tblSalaryTypeSet_tblSalarySet] FOREIGN KEY([idSalarySet])
REFERENCES [dbo].[tblSalarySet] ([idSalarySet])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSalaryTypeSet] CHECK CONSTRAINT [FK_tblSalaryTypeSet_tblSalarySet]
GO
ALTER TABLE [dbo].[tblSalaryTypeSet]  WITH CHECK ADD  CONSTRAINT [FK_tblSalaryTypeSet_tblSalaryType] FOREIGN KEY([idSalaryType])
REFERENCES [dbo].[tblSalaryType] ([idSalaryType])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSalaryTypeSet] CHECK CONSTRAINT [FK_tblSalaryTypeSet_tblSalaryType]
GO
ALTER TABLE [dbo].[tblSavedUpDaysOff]  WITH CHECK ADD  CONSTRAINT [FK__tblSavedU__idObj__373CC8D6] FOREIGN KEY([idObject])
REFERENCES [dbo].[glbObject] ([idObject])
GO
ALTER TABLE [dbo].[tblSavedUpDaysOff] CHECK CONSTRAINT [FK__tblSavedU__idObj__373CC8D6]
GO
ALTER TABLE [dbo].[tblSavedUpDaysOff]  WITH NOCHECK ADD  CONSTRAINT [FK__tblSavedU__idPer__5E5695F7] FOREIGN KEY([idPerson])
REFERENCES [dbo].[tblPerson] ([idPerson])
GO
ALTER TABLE [dbo].[tblSavedUpDaysOff] CHECK CONSTRAINT [FK__tblSavedU__idPer__5E5695F7]
GO
ALTER TABLE [dbo].[tblSavedUpDaysOff]  WITH CHECK ADD FOREIGN KEY([idRecordStatus])
REFERENCES [dbo].[glbRecordStatus] ([idRecordStatus])
GO
ALTER TABLE [dbo].[tblSavedUpDaysOff]  WITH NOCHECK ADD  CONSTRAINT [FK__tblSavedU__idUse__0B5E4698] FOREIGN KEY([idUser])
REFERENCES [dbo].[glbUser] ([idUser])
GO
ALTER TABLE [dbo].[tblSavedUpDaysOff] CHECK CONSTRAINT [FK__tblSavedU__idUse__0B5E4698]
GO
ALTER TABLE [dbo].[tblSending]  WITH CHECK ADD  CONSTRAINT [FK__tblSendin__idObj__7001103D] FOREIGN KEY([idObject])
REFERENCES [dbo].[glbObject] ([idObject])
GO
ALTER TABLE [dbo].[tblSending] CHECK CONSTRAINT [FK__tblSendin__idObj__7001103D]
GO
ALTER TABLE [dbo].[tblSumOfDebts]  WITH CHECK ADD  CONSTRAINT [FK__tblSumOfD__idObj__613302A2] FOREIGN KEY([idObject])
REFERENCES [dbo].[glbObject] ([idObject])
GO
ALTER TABLE [dbo].[tblSumOfDebts] CHECK CONSTRAINT [FK__tblSumOfD__idObj__613302A2]
GO
ALTER TABLE [dbo].[tblSumOfDebts]  WITH NOCHECK ADD  CONSTRAINT [FK__tblSumOfD__idPer__622726DB] FOREIGN KEY([idPerson])
REFERENCES [dbo].[tblPerson] ([idPerson])
GO
ALTER TABLE [dbo].[tblSumOfDebts] CHECK CONSTRAINT [FK__tblSumOfD__idPer__622726DB]
GO
ALTER TABLE [dbo].[tblSumOfDebts]  WITH CHECK ADD FOREIGN KEY([idRecordStatus])
REFERENCES [dbo].[glbRecordStatus] ([idRecordStatus])
GO
ALTER TABLE [dbo].[tblSumOfDebts]  WITH CHECK ADD FOREIGN KEY([idTypeOfDeduction])
REFERENCES [dbo].[tblTypeOfDeduction] ([idTypeOfDeduction])
GO
ALTER TABLE [dbo].[tblSumOfDebts]  WITH NOCHECK ADD  CONSTRAINT [FK__tblSumOfD__idUse__6F8121F9] FOREIGN KEY([idUser])
REFERENCES [dbo].[glbUser] ([idUser])
GO
ALTER TABLE [dbo].[tblSumOfDebts] CHECK CONSTRAINT [FK__tblSumOfD__idUse__6F8121F9]
GO
ALTER TABLE [dbo].[tblTabel]  WITH CHECK ADD FOREIGN KEY([idObjectService])
REFERENCES [dbo].[glbObjectService] ([idObjectService])
GO
ALTER TABLE [dbo].[tblTabel]  WITH CHECK ADD  CONSTRAINT [FK__tblTabel__idObje__0940F3FC] FOREIGN KEY([idObject])
REFERENCES [dbo].[glbObject] ([idObject])
GO
ALTER TABLE [dbo].[tblTabel] CHECK CONSTRAINT [FK__tblTabel__idObje__0940F3FC]
GO
ALTER TABLE [dbo].[tblTabel]  WITH CHECK ADD FOREIGN KEY([idRecordStatus])
REFERENCES [dbo].[glbRecordStatus] ([idRecordStatus])
GO
ALTER TABLE [dbo].[tblTabel]  WITH CHECK ADD FOREIGN KEY([idSalaryType])
REFERENCES [dbo].[tblSalaryType] ([idSalaryType])
GO
ALTER TABLE [dbo].[tblTabel]  WITH CHECK ADD FOREIGN KEY([idTabelAccountType])
REFERENCES [dbo].[tblTabelAccountType] ([idTabelAccountType])
GO
ALTER TABLE [dbo].[tblTabel]  WITH NOCHECK ADD  CONSTRAINT [FK__tblTabel__idUser__0A351835] FOREIGN KEY([idUser])
REFERENCES [dbo].[glbUser] ([idUser])
GO
ALTER TABLE [dbo].[tblTabel] CHECK CONSTRAINT [FK__tblTabel__idUser__0A351835]
GO
ALTER TABLE [dbo].[tblTabelDetail]  WITH NOCHECK ADD  CONSTRAINT [FK__tblTabelD__idPer__0E05A919] FOREIGN KEY([idPersonPosition])
REFERENCES [dbo].[tblPersonPosition] ([idPersonPosition])
GO
ALTER TABLE [dbo].[tblTabelDetail] CHECK CONSTRAINT [FK__tblTabelD__idPer__0E05A919]
GO
ALTER TABLE [dbo].[tblTabelDetail]  WITH CHECK ADD FOREIGN KEY([idRecordStatus])
REFERENCES [dbo].[glbRecordStatus] ([idRecordStatus])
GO
ALTER TABLE [dbo].[tblTabelDetail]  WITH CHECK ADD FOREIGN KEY([idSalaryType])
REFERENCES [dbo].[tblSalaryType] ([idSalaryType])
GO
ALTER TABLE [dbo].[tblTabelDetail]  WITH CHECK ADD FOREIGN KEY([idTabel])
REFERENCES [dbo].[tblTabel] ([idTabel])
GO
ALTER TABLE [dbo].[tblTabelDetail]  WITH NOCHECK ADD  CONSTRAINT [FK__tblTabelD__idUse__0FEDF18B] FOREIGN KEY([idUser])
REFERENCES [dbo].[glbUser] ([idUser])
GO
ALTER TABLE [dbo].[tblTabelDetail] CHECK CONSTRAINT [FK__tblTabelD__idUse__0FEDF18B]
GO
ALTER TABLE [dbo].[tblTabelDetailAdditWork]  WITH NOCHECK ADD  CONSTRAINT [FK__tblTabelD__idPer__13BE826F] FOREIGN KEY([idPersonPosition])
REFERENCES [dbo].[tblPersonPosition] ([idPersonPosition])
GO
ALTER TABLE [dbo].[tblTabelDetailAdditWork] CHECK CONSTRAINT [FK__tblTabelD__idPer__13BE826F]
GO
ALTER TABLE [dbo].[tblTabelDetailAdditWork]  WITH CHECK ADD FOREIGN KEY([idRecordStatus])
REFERENCES [dbo].[glbRecordStatus] ([idRecordStatus])
GO
ALTER TABLE [dbo].[tblTabelDetailAdditWork]  WITH CHECK ADD FOREIGN KEY([idTabel])
REFERENCES [dbo].[tblTabel] ([idTabel])
GO
ALTER TABLE [dbo].[tblTabelDetailAdditWork]  WITH NOCHECK ADD  CONSTRAINT [FK__tblTabelD__idUse__12CA5E36] FOREIGN KEY([idUser])
REFERENCES [dbo].[glbUser] ([idUser])
GO
ALTER TABLE [dbo].[tblTabelDetailAdditWork] CHECK CONSTRAINT [FK__tblTabelD__idUse__12CA5E36]
GO
