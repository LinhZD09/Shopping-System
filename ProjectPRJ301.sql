CREATE DATABASE ProjectPRJ301
USE ProjectPRJ301
GO

CREATE SCHEMA [mydb]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [varchar](50) NOT NULL,
	[u_id] [int] NOT NULL,
	[buyDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[id] [varchar](50) NOT NULL,
	[quantity] [int] NULL,
	[unitPrice] [float] NULL,
	[pro_id] [int] NOT NULL,
	[cat_id] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateExp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mfgDate] [date] NOT NULL,
	[expDate] [date] NOT NULL,
	[cid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[cid] [int] NOT NULL,
	[totalmoney] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[oid] [int] NOT NULL,
	[pid] [int] NOT NULL,
	[quantity] [float] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_OrderLine] PRIMARY KEY CLUSTERED 
(
	[oid] ASC,
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[price] [float] NULL,
	[cid] [int] NOT NULL,
	[image] [varchar](50) NULL,
	[describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[phonenum] [nvarchar](10) NULL,
	[avatar] [varchar](50) NULL,
	[role] [int] NULL,
	[password] [varchar](36) NOT NULL,
	[address] [nvarchar](123) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[emp](
	[cdate] [datetime] NULL
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Cơm')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Salad')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Đồ Uống')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Đồ ăn nhanh')
INSERT [dbo].[Category] ([id], [name]) VALUES (6, N'Bánh Mì')
INSERT [dbo].[Category] ([id], [name]) VALUES (10, N'Bún, Phở, Mì')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO

SET IDENTITY_INSERT [dbo].[DateExp] ON 

INSERT [dbo].[DateExp] ([id], [mfgDate], [expDate], [cid]) VALUES (3, CAST(N'2022-11-01' AS Date), CAST(N'2022-11-02' AS Date), 1)
INSERT [dbo].[DateExp] ([id], [mfgDate], [expDate], [cid]) VALUES (4, CAST(N'2022-11-01' AS Date), CAST(N'2022-11-02' AS Date), 2)
INSERT [dbo].[DateExp] ([id], [mfgDate], [expDate], [cid]) VALUES (5, CAST(N'2022-11-01' AS Date), CAST(N'2022-11-08' AS Date), 3)
INSERT [dbo].[DateExp] ([id], [mfgDate], [expDate], [cid]) VALUES (6, CAST(N'2022-11-01' AS Date), CAST(N'2022-11-02' AS Date), 4)
INSERT [dbo].[DateExp] ([id], [mfgDate], [expDate], [cid]) VALUES (7, CAST(N'2022-11-01' AS Date), CAST(N'2022-11-02' AS Date), 6)
INSERT [dbo].[DateExp] ([id], [mfgDate], [expDate], [cid]) VALUES (8, CAST(N'2022-11-01' AS Date), CAST(N'2022-11-02' AS Date), 10)
SET IDENTITY_INSERT [dbo].[DateExp] OFF
GO

SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (1, CAST(N'2022-10-31' AS Date), 2, 0)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (2, CAST(N'2022-10-31' AS Date), 2, 0)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3, CAST(N'2022-10-31' AS Date), 2, 0)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (4, CAST(N'2022-10-31' AS Date), 2, 35000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (5, CAST(N'2022-10-31' AS Date), 2, 70000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (6, CAST(N'2022-10-31' AS Date), 2, 253000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (1006, CAST(N'2022-11-01' AS Date), 1003, 117000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (1007, CAST(N'2022-11-02' AS Date), 2, 115000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (1008, CAST(N'2022-11-02' AS Date), 2, 495000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (1009, CAST(N'2022-11-02' AS Date), 2, 420000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (1010, CAST(N'2022-11-02' AS Date), 2, 200000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (1011, CAST(N'2022-11-02' AS Date), 2, 450000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (1012, CAST(N'2022-11-02' AS Date), 2, 50000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (1013, CAST(N'2022-11-02' AS Date), 2, 45000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (1014, CAST(N'2022-11-02' AS Date), 2, 40000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (2007, CAST(N'2022-11-02' AS Date), 2, 360000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (2008, CAST(N'2022-11-02' AS Date), 2, 20000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (2009, CAST(N'2022-11-02' AS Date), 2, 24690)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (2010, CAST(N'2022-11-02' AS Date), 2, 20000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (2011, CAST(N'2022-11-02' AS Date), 2, 310000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3009, CAST(N'2022-11-03' AS Date), 2, 40000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3010, CAST(N'2022-11-03' AS Date), 2, 70000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3011, CAST(N'2022-11-03' AS Date), 2, 72000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3012, CAST(N'2022-11-03' AS Date), 2, 0)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3013, CAST(N'2022-11-03' AS Date), 2, 30000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3014, CAST(N'2022-11-03' AS Date), 2, 48000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3015, CAST(N'2022-11-03' AS Date), 2, 55000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3016, CAST(N'2022-11-03' AS Date), 2, 0)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3017, CAST(N'2022-11-03' AS Date), 2, 12345)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3018, CAST(N'2022-11-03' AS Date), 2, 40000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3019, CAST(N'2022-11-03' AS Date), 2, 30000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3020, CAST(N'2022-11-03' AS Date), 2, 70000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (3021, CAST(N'2022-11-03' AS Date), 2, 1190000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (4009, CAST(N'2022-11-04' AS Date), 1003, 360000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (4010, CAST(N'2022-11-04' AS Date), 1003, 165000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (4011, CAST(N'2022-11-04' AS Date), 1003, 310000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (4012, CAST(N'2022-11-04' AS Date), 1003, 520000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (4013, CAST(N'2022-11-04' AS Date), 1003, 200000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (4014, CAST(N'2022-11-04' AS Date), 1003, 12345)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (4015, CAST(N'2022-11-04' AS Date), 1003, 35000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (4016, CAST(N'2022-11-05' AS Date), 1003, 396000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (4017, CAST(N'2022-11-05' AS Date), 1003, 276000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (5016, CAST(N'2022-11-06' AS Date), 2, 50000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (5017, CAST(N'2022-11-06' AS Date), 2, 231725)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (5018, CAST(N'2022-11-06' AS Date), 2, 955000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (5019, CAST(N'2022-11-07' AS Date), 2, 461070)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (5020, CAST(N'2022-11-07' AS Date), 2, 312000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (5021, CAST(N'2022-11-08' AS Date), 2, 251035)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (5022, CAST(N'2022-11-08' AS Date), 2, 260000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (5023, CAST(N'2022-11-08' AS Date), 2, 140000)
INSERT [dbo].[Order] ([id], [date], [cid], [totalmoney]) VALUES (5024, CAST(N'2022-11-08' AS Date), 2, 125000)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO

INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4, 4, 1, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5, 7, 1, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5, 9, 1, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (6, 1038, 11, 23000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1006, 1030, 1, 37000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1006, 1054, 2, 40000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1007, 1038, 5, 23000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1008, 1046, 9, 55000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1009, 1032, 6, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1009, 1051, 7, 30000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1010, 18, 20, 10000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1011, 1036, 9, 50000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1012, 1036, 1, 50000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1013, 1028, 1, 45000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (1014, 1058, 1, 40000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (2007, 1040, 30, 12000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (2008, 20, 2, 10000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (2009, 1043, 2, 12345)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (2010, 21, 2, 10000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (2011, 22, 31, 10000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (3009, 1035, 1, 40000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (3010, 1055, 2, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (3011, 1039, 2, 36000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (3013, 1051, 1, 30000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (3014, 1048, 2, 24000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (3015, 1046, 1, 55000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (3017, 1044, 1, 12345)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (3018, 1054, 1, 40000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (3019, 1051, 1, 30000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (3020, 1032, 2, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (3021, 1032, 34, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4009, 1037, 10, 32000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4009, 1053, 2, 20000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4010, 1047, 5, 33000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4011, 18, 1, 10000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4011, 1041, 20, 15000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4012, 1054, 13, 40000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4013, 1035, 5, 40000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4014, 1043, 1, 12345)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4015, 24, 1, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4016, 13, 2, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4016, 17, 1, 25000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4016, 1037, 3, 32000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4016, 1052, 1, 30000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4016, 1056, 5, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4017, 1057, 2, 38000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (4017, 1058, 5, 40000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5016, 23, 5, 10000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5017, 16, 2, 25000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5017, 1044, 5, 12345)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5017, 1053, 6, 20000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5018, 12, 5, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5018, 15, 3, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5018, 1037, 5, 32000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5018, 1038, 2, 23000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5018, 1040, 12, 12000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5018, 1049, 5, 23000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5018, 1050, 10, 21000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5019, 4, 3, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5019, 20, 2, 10000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5019, 1035, 1, 40000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5019, 1039, 3, 36000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5019, 1043, 5, 12345)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5019, 1045, 1, 12345)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5019, 1057, 3, 38000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5020, 7, 2, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5020, 20, 21, 10000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5020, 1037, 1, 32000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5021, 1037, 2, 32000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5021, 1044, 3, 12345)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5021, 1051, 5, 30000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5022, 16, 4, 25000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5022, 1054, 4, 40000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5023, 1056, 4, 35000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5024, 18, 3, 10000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5024, 19, 1, 15000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5024, 20, 2, 10000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5024, 21, 3, 10000)
INSERT [dbo].[OrderLine] ([oid], [pid], [quantity], [price]) VALUES (5024, 1041, 2, 15000)
GO

SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (4, N'Cơm Gà Sốt Cay', 35000, 1, N'gaxotcay.jpg', N'Gà rán sốt cay là một món từ gà thơm ngon, hấp dẫn và cách làm vô cùng đơn giản, ai ăn cũng mê.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (7, N'Cơm Gà Sốt Nấm', 35000, 1, N'gaxotnam.jpg', N'Gà sốt nấm là món ăn đơn giản mà ngon miệng, được sử dụng trong bữa cơm gia đình thường ngày. Thịt gà mềm, thấm đẫm nước sốt hương nấm thơm ngọt sẽ giúp cả nhà ngon miệng hơn.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (9, N'Cơm Sườn Chua Ngọt', 35000, 1, N'suonxaochuangot.jpg', N'Cơm sườn chua ngọt là món ăn phổ biến tại các bữa ăn hàng ngày của người dân Việt Nam. Nhắc đến cơm sườn chua ngọt chúng ta sẽ biết ngay đây là món cơm ăn cùng với sườn. Sườn được xào chín tới, nêm nếm gia vị đậm đà chua chua của chanh, ngọt của đường. Tạo lên món cơm sườn ngon thật hấp dẫn.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (12, N'Cơm Thịt Kho Tàu', 35000, 1, N'thitkhotau.jpg', N'Thịt kho nước dừa hột vịt hay còn gọi là thịt kho Tàu là món kho rất được ưa chuộng không chỉ trong những ngày lễ Tết mà còn trong các bữa cơm hàng ngày. Món ăn ngon, đậm đà, béo ngậy được dùng ăn chung với cơm trắng rất tuyệt.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (13, N'Cơm Thịt Ngũ Vị', 35000, 1, N'thitnguvi.jpg', N'Thỉnh thoảng đổi vị với món thịt chiên ngũ vị thơm ngon, bì giòn cho bữa tối.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (14, N'Cơm Thịt Băm Trứng Ốp', 35000, 1, N'tthitbamtrungop.jpg', N'Món trứng hấp dẫn hơn với cách trình bày đẹp mắt. Chỉ cần 1 món trứng này với chút salad hay rau trộn là bạn có bữa ăn ngon và đủ chất rồi. Trứng ốp thịt băm kiểu Thái Lan')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (15, N'Cơm Rang Dưa Bò', 35000, 1, N'rangduabo.jpg', N'Cơm rang với vị chua của dưa cải, thơm ngọt từ thịt bò kết hợp cùng những hạt cơm vàng tươi nóng hổi chắc chắn sẽ khiến bạn phải thích mê.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (16, N'Salad Ức Gà', 25000, 2, N'saladucga.jpg', N'Ức gà là thực phẩm tuyệt vời xây dựng khối cơ bắp chắc khỏe. Đối với những gymer hay những người eat clean thì ức gà là một nguyên liệu đã quá quen thuộc và không thể thiếu mỗi ngày. Hay thậm chí với một số người còn gọi ức gà với cái tên “nhàm chán”.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (17, N'Salad Nấm', 25000, 2, N'saladnam.jpg', N'Salad nấm linh chi là món ăn lạ miệng, với sự kết hợp của nấm linh chi cùng một số nguyên liệu khác giúp cho món ăn vừa thơm ngon lại còn bổ dưỡng cung cấp nguồn năng lượng dồi dào cho các thành viên trong gia đình.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (18, N'7 Up', 10000, 3, N'7up.jpg', NULL)
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (19, N'Bò Húc', 15000, 3, N'bohucs.jpg', NULL)
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (20, N'Coca Cola', 10000, 3, N'coca.jpg', NULL)
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (21, N'Mirinda', 10000, 3, N'mirinda.jpg', NULL)
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (22, N'Sting Đỏ', 10000, 3, N'stingdo.jpg', NULL)
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (23, N'Sting Vàng', 10000, 3, N'stingvang.jpg', NULL)
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (24, N'Cơm Rang Thập Cẩm', 35000, 1, N'comrangthapcam.jpg', N'Cơm rang thập cẩm là một món vô cùng dễ ăn và thu hút mọi người. Đặc biệt là các bạn nhỏ.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1028, N'Cơm Rang Hải Sản', 45000, 1, N'comranghaisan.jpg', N'Cơm chiên hải sản ngon hấp dẫn là sự kết hợp hoàn hảo của tôm, mực, các loại củ, hạt và cơm trắng tạo nên món ăn hấp dẫn khó cưỡng.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1029, N'Cơm Rang Gà', 30000, 1, N'comrangga.jpg', N'Cơm chiên gà lúc lắc có mùi thơm thoang thoảng của mùi bơ lạc, vị đậm đà từ thịt gà, ớt chuông và hành tây.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1030, N'Cơm Tấm Sườn', 37000, 1, N'tamsuon.jpg', N'Cơm Tấm là món ăn phổ biến ở miền Nam, đặc biệt là vào mỗi buổi sáng và buổi tối, trên con đường tấp nập đều thoang thoảng hương vị của sườn nướng. Thịt nướng được ướp thơm lừng, nướng vàng óng cùng nước mắm ngon tuyệt đã tạo nên một món ăn cực kì thơm ngon khiến ăn đã thử một lần chắc chắn sẽ không quên được hương vị ấy.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1032, N'Cơm Tấm Gà', 35000, 1, N'comtamga.jpg', N'Món cơm tấm cánh gà nướng kết hợp cùng bì, dưa chua và mỡ hành cho bữa ăn đủ chất và không ngán.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1033, N'Salad Cá Hồi', 40000, 2, N'saladcahoi.jpg', N'Món salad cá hồi rất thơm ngon và tốt cho sức khỏe. Salad cá hồi rất phù hợp làm món khai vị, giúp bữa ăn thêm ngon miệng.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1035, N'Salad Bơ Trứng', 40000, 2, N'saladbotrung.jpg', N'Salad bơ vẫn luôn là sự lựa chọn hàng đầu trong thực đơn giảm cân của các chị em nhờ cách chế biến nhanh chóng, lại ngon miệng bổ dưỡng mà món salad này mang lại.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1036, N'Basic Burger', 50000, 4, N'basicburger.jpg', N'Hamburger là một loại thức ăn bao gồm bánh mì kẹp thịt xay ở giữa. Miếng thịt có thể được nướng, chiên, hun khói hay nướng trên lửa. Hamburger thường ăn kèm với pho mát, rau diếp, cà chua, hành tây, dưa chuột muối chua, thịt xông khói, hoặc ớt; ngoài ra, các loại gia vị như sốt cà chua, mù tạt, sốt mayonnaise, đồ gia vị, hoặc "nước xốt đặc biệt", cũng có thể thể rưới lên món bánh.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1037, N'Basic Sandwich', 32000, 4, N'basicsandwich.jpg', N'Bánh mì kẹp hoặc bánh mì lát là loại thức ăn thường có ít nhất là hai lát bánh mì mềm kẹp bên ngoài lớp nhân thường là từ nguyên liệu thịt, hải sản, trứng... kèm với pho mát cùng với các loại rau, và có thể có thêm nước sốt. Định nghĩa rộng hơn, bánh mì kẹp là tất cả những loại thức ăn có bánh mì đóng vai trò là lớp vỏ bao bọc cho lớp nhân.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1038, N'Khoai Tây Chiên', 23000, 4, N'khoaitaychien.jpg', N'Khoai tây chiên kiểu Pháp, hay French-fried potatoes là khoai tây chiên giòn cắt thành sợi hoặc hình que.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1039, N'Nem Chua Rán', 36000, 4, N'nemchuaran.jpg', N'Nem chua rán là một loại nem làm từ thịt lợn xay và bì lợn theo công thức cũng như quy trình khá gần gũi với nem chua và được rán vàng trong dầu ăn. Là đặc sản ẩm thực đường phố của Hà Nội, món ăn vặt không chua mà béo ngậy và thơm ngon này hấp dẫn nhiều giới, đặc biệt là các bạn trẻ.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1040, N'Xúc Xích Xông Khói', 12000, 4, N'xxxongkhoi.jpg', N'Xúc xích là một loại thực phẩm chế biến từ thịt bằng phương pháp dồi kết hợp với các loại muối, gia vị, phụ gia,...')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1041, N'Trà Tắc Mật Ong', 15000, 3, N'tratac.jpg', N'Trà tắc mật ong là thức uống có hương vị thanh mát của trà, vị chua thơm của những trái tắc tươi kết hợp với mật ong.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1043, N'Bánh Mì Trí Nhớ', 12345, 6, N'banhmitrinho.jpg', N'Đây là loại bảo bối ghi nhớ.Chỉ cần chấm bánh lên một trang giấy đã ghi, sau đó người sử dụng ăn nó, sẽ nhớ mọi thứ được ghi đè trong đó. Nó rất có ích trong việc ghi nhớ ngắn hạn như kiểm tra bài cũ. Và sau 24 giờ bánh sẽ tiêu hao và vẫn nhớ như còn bánh.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1044, N'Donut Rengoku', 12345, 6, N'donutrengoku.jpg', N'Chiếc Donut được làm từ bàn tay nghệ nhân Thượng Huyền Tam của Thập Nhị Nguyệt Quỷ - Akazan.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1045, N'Donut Ace', 12345, 6, N'donutace.jpg', N'Chiếc Donut được tạo nên từ bàn tay nghệ nhân Đô Đốc Hải Quân Akainu.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1046, N'Bánh Mì Chảo', 55000, 6, N'banhmichao.jpg', N'Bánh mì chảo” là món ăn được nhiều người yêu thích bởi sự kết hợp độc đáo giữa các nguyên liệu xúc xích, pate, trứng,… cùng với nước xốt.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1047, N'Bánh Mì Bơ Tỏi', 33000, 6, N'banhmibotoi.jpg', N'Bánh mì bơ tỏi là bánh có thành phần bao gồm là tỏi và dầu ô liu hoặc bơ. Bánh được chế biến bằng phương pháp nướng.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1048, N'Bánh Mì Nướng Muối Ớt', 24000, 6, N'banhmimuoiot.jpg', N'Bánh mì nướng muối ớt là món ăn vặt nổi tiếng, dễ dàng tìm thấy trên mọi con đường tại Sài Gòn.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1049, N'Bánh Tráng Trộn', 23000, 4, N'banhtrangtron.jpg', N'Bánh tráng trộn là một trong những món “đinh” đại diện cho thế giới ăn vặt đa dạng ở Sài Gòn.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1050, N'Bánh Tráng Nướng', 21000, 4, N'banhtrangnuong.jpg', N'Một món ăn được ví như là Pizza của Việt Nam, kết hợp giữa những nguyên liệu truyền thống và hiện đại. Bánh tráng nướng xuất hiện phổ biến tại các tỉnh khu vực miền Nam nước ta, bắt nguồn từ Đà Lạt. Được rất nhiều khách du lịch trong và ngoài nước yêu thích. Sau đó pizza bánh tráng nướng được mở rộng ra cả các tỉnh miền Bắc, miền Trung với nhiều những cách chế biến độc đáo, mới lạ.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1051, N'Bún Chả Chấm', 30000, 10, N'bunchacham.jpg', N'Bún chả là một món ăn của Việt Nam, bao gồm bún, chả thịt lợn nướng trên than hoa và bát nước mắm chua cay mặn ngọt. Món ăn xuất xứ từ miền Bắc Việt Nam, là thứ quà có sức sống lâu bền nhất của Hà Nội,[1] nên có thể coi đây là một trong những đặc sản đặc trưng của ẩm thực Hà thành.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1052, N'Bún Chả Chan', 30000, 10, N'bunchachan.jpg', N'Bún chả là một món ăn của Việt Nam, bao gồm bún, chả thịt lợn nướng trên than hoa và bát nước mắm chua cay mặn ngọt. Món ăn xuất xứ từ miền Bắc Việt Nam, là thứ quà có sức sống lâu bền nhất của Hà Nội,[1] nên có thể coi đây là một trong những đặc sản đặc trưng của ẩm thực Hà thành.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1053, N'Bún Chả Ngon', 20000, 10, N'bunchangon.jpg', N'Bún không có hành là bún chả ngon. Chê!!!')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1054, N'Phở Bò', 40000, 10, N'phobo.jpg', N'Món Phở bò là món tâm đắc nhất của thực đơn Phở, món ăn này được bán mỗi ngày tại các quán ven đường, các quán cà phê, trong các nhà hàng, thậm chí cả các khách sạn 5 sao, dù ở đâu, Phở cũng được người dân ưa chuộng.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1055, N'Bún Bò Huế', 35000, 10, N'bunbohue.jpg', N'Bún bò là một trong những đặc sản của xứ Huế, mặc dù món bún này phổ biến trên cả ba miền ở Việt Nam và cả người Việt tại hải ngoại. Tại Huế, món này được gọi đơn giản là "bún bò" hoặc gọi cụ thể hơn là "bún bò thịt bò". Các địa phương khác gọi là "bún bò Huế", "bún bò gốc Huế" để chỉ xuất xứ của món ăn này. Món ăn có nguyên liệu chính là bún, thịt bắp bò, giò heo, cùng nước dùng có màu đỏ đặc trưng và vị sả và ruốc.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1056, N'Mì Xào Hải Sản', 35000, 10, N'mixaohaisan.jpg', N'Mì xào hải sản là món xào thơm ngon, hấp dẫn và cực kì phù hợp để thay đổi khẩu vị cho bữa cơm gia đình thêm mới lạ.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1057, N'Mì Xào Bò', 38000, 10, N'mixaobo.jpg', N'Mì xào bò là một món ăn ngon và có thời gian làm rất nhanh nhưng hương vị vô cùng hấp dẫn. Mì xào bò có thể ăn sáng hay ăn trưa, ăn tối đều phù hợp.')
INSERT [dbo].[Product] ([ID], [name], [price], [cid], [image], [describe]) VALUES (1058, N'Basic Spaghetti', 40000, 10, N'basicspaghetti.jpg', N'Mỳ Spaghetti hay còn gọi là mỳ ý (có xuất xứ từ nước Ý). Italia nổi tiếng với những câu chuyện tình yêu lãng mạn, ngọt ngào và mỳ Spaghetti cũng chính là món ăn không thể thiếu trong con đường dẫn đến tình yêu.')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [name], [fullname], [email], [phonenum], [avatar], [role], [password], [address]) VALUES (1, N'linh', N'Nguyễn Đình Linh', N'nguyendinhlinh19062003', N'0393314726', NULL, 1, N'19062003', N'123 abc-X-Y')
INSERT [dbo].[User] ([id], [name], [fullname], [email], [phonenum], [avatar], [role], [password], [address]) VALUES (2, N'chefflinhzd', N'Cheff LinhZD', N'nguyendinhlinh190603@gmail.com', N'0123456789', NULL, 2, N'1234321', N'456 abc-X-Y')
INSERT [dbo].[User] ([id], [name], [fullname], [email], [phonenum], [avatar], [role], [password], [address]) VALUES (1003, N'tupv', N'PhanVietTu', N'tupv@gmail.com', N'0123123123', NULL, 2, N'123123', N'111 xyz-A-B')
INSERT [dbo].[User] ([id], [name], [fullname], [email], [phonenum], [avatar], [role], [password], [address]) VALUES (1006, N'linhmp', N'MaiPhuongLinh', N'linhmp@gmail.com', N'0123412341', NULL, 2, N'123123', N'147 def-G-H')
INSERT [dbo].[User] ([id], [name], [fullname], [email], [phonenum], [avatar], [role], [password], [address]) VALUES (1008, N'linhnt', N'NguyenTuanLinh', N'linhnt@gmail.com', N'0123123456', NULL, 2, N'123123', N'258 jkl-M-N')
INSERT [dbo].[User] ([id], [name], [fullname], [email], [phonenum], [avatar], [role], [password], [address]) VALUES (2003, N'khanhcd', N'CanDuyKhanh', N'khanhcd@gmail.com', N'0112334556', NULL, 2, N'123123', N'369 qwe-T-Y')
INSERT [dbo].[User] ([id], [name], [fullname], [email], [phonenum], [avatar], [role], [password], [address]) VALUES (2004, N'giangmn', N'MaiNgocGiang', N'giangmn@gmail.com', N'0123456123', NULL, 2, N'123123', N'789 abc-X-Y')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET ANSI_PADDING ON
GO


ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ('2') FOR [role]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([u_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD FOREIGN KEY([cat_id])
REFERENCES [dbo].[Cart] ([id])
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD FOREIGN KEY([pro_id])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[DateExp]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Category] ([id])
GO