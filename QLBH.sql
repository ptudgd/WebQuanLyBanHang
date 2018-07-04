USE [QLBH]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 18/05/2018 1:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[CustomerName] [nvarchar](255) NULL,
	[isVender] [bit] NULL,
	[isCustomer] [bit] NULL,
	[WriteDate] [nvarchar](255) NULL,
	[EditDate] [nvarchar](255) NULL,
	[WriterId] [int] NULL,
	[EditorId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 18/05/2018 1:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] NULL,
	[Phone] [nvarchar](255) NULL,
	[EmployeeName] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[WriteDate] [nvarchar](255) NULL,
	[EditDate] [nvarchar](255) NULL,
	[EditorId] [int] NULL,
	[WriterId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18/05/2018 1:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[Price] [bigint] NULL,
	[Barcode] [varchar](255) NULL,
	[Qty] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductGroup]    Script Date: 18/05/2018 1:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductGroup](
	[ProductGroupId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductGroupName] [nvarchar](255) NULL,
	[Remark] [nvarchar](255) NULL,
 CONSTRAINT [PK_ProductGroup_1] PRIMARY KEY CLUSTERED 
(
	[ProductGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 18/05/2018 1:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Username] [varchar](255) NOT NULL,
	[Password] [varchar](255) NULL,
	[LastLogin] [datetime] NULL,
	[Email] [varchar](255) NULL,
	[EmployeeId] [int] NULL,
	[Token] [varchar](255) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([EmployeeId], [Phone], [EmployeeName], [Email], [Address], [WriteDate], [EditDate], [EditorId], [WriterId]) VALUES (1, N'01674404746', N'Nguy?n Hoàng Duy', N'nguyenhoangduy1997@gmail.com', N'Q8', N'', N'', 0, 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [Barcode], [Qty]) VALUES (0, N'qwewq', 0, N'213213213', 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [Barcode], [Qty]) VALUES (1, N'Colorful GTX 1050 2 FAN', 3450000, N'13245679', 10)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [Barcode], [Qty]) VALUES (2, N'qwewqeqe', 1212, N'2213123213', 212)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [Barcode], [Qty]) VALUES (3, N'213213213', 0, N'213213213', 0)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [Barcode], [Qty]) VALUES (4, N'wqewqewq', 21313, N'321312313213', 3123)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [Barcode], [Qty]) VALUES (5, N'213213', 213123, N'123123213', 123123)
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [Price], [Barcode], [Qty]) VALUES (6, N'213123', 12312312, N'123123123123', 123123123)
GO
INSERT [dbo].[User] ([Username], [Password], [LastLogin], [Email], [EmployeeId], [Token]) VALUES (N'admin', N'admin', CAST(N'2018-05-17T07:35:54.000' AS DateTime), N'', 0, N'')
GO
