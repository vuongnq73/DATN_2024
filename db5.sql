use master
go

create database [DATN_20214]
go

use [DATN_20214]
GO
/****** Object:  User [sa1]    Script Date: 10/15/2024 6:59:18 PM ******/
CREATE USER [sa1] FOR LOGIN [sa1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[account]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_account] [varchar](50) NULL,
	[username] [varchar](20) NULL,
	[pass] [varchar](20) NULL,
	[first_name] [nvarchar](250) NULL,
	[last_name] [nvarchar](250) NULL,
	[avatar] [varchar](250) NULL,
	[address_account] [nvarchar](250) NULL,
	[phone_number] [varchar](20) NULL,
	[email] [varchar](225) NULL,
	[status_account] [int] NULL,
	[create_by] [nvarchar](100) NULL,
	[create_at] [date] NULL,
	[update_by] [nvarchar](100) NULL,
	[update_at] [date] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[account_role]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_role](
	[role_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[voucher_id] [int] NULL,
	[account_id] [int] NULL,
	[customer_id] [int] NULL,
	[code_bill] [varchar](50) NULL,
	[type_bill] [nvarchar](100) NULL,
	[customer_name] [nvarchar](250) NULL,
	[phone_number] [varchar](20) NULL,
	[address_customer] [text] NULL,
	[money_ship] [decimal](10, 2) NULL,
	[subtotal_before_discount] [decimal](10, 2) NULL,
	[money_reduce] [decimal](10, 2) NULL,
	[total_money] [decimal](10, 2) NULL,
	[create_date] [date] NULL,
	[desired_date] [date] NULL,
	[status_bill] [int] NULL,
	[create_by] [nvarchar](100) NULL,
	[create_at] [date] NULL,
	[update_by] [nvarchar](100) NULL,
	[update_at] [date] NULL,
	[note] [text] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shirt_detail_id] [int] NULL,
	[bill_id] [int] NULL,
	[code_bill_detail] [varchar](50) NULL,
	[quantity] [int] NULL,
	[price] [decimal](10, 2) NULL,
	[status_bill_detail] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_payment]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_payment](
	[bill_id] [int] NOT NULL,
	[payment_id] [int] NOT NULL,
	[payment_amount] [decimal](10, 2) NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC,
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_brand] [varchar](50) NULL,
	[name_brand] [nvarchar](250) NULL,
	[status_brand] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[code_cart] [varchar](50) NULL,
	[create_by] [nvarchar](100) NULL,
	[create_at] [date] NULL,
	[update_by] [nvarchar](100) NULL,
	[update_at] [date] NULL,
	[status_cart] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart_detail]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shirt_detail_id] [int] NULL,
	[cart_id] [int] NULL,
	[code_cart_detail] [varchar](50) NULL,
	[quantity] [int] NULL,
	[status_cart_detail] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_category] [varchar](50) NULL,
	[name_category] [nvarchar](250) NULL,
	[status_category] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_color] [varchar](50) NULL,
	[name_color] [nvarchar](250) NULL,
	[status_color] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gender]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gender](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_gender] [varchar](50) NULL,
	[name_gender] [nvarchar](250) NULL,
	[status_gender] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image_shirt_detail]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_shirt_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shirt_detail_id] [int] NULL,
	[code_image] [varchar](50) NULL,
	[name_image] [nvarchar](250) NULL,
	[main_image] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_material] [varchar](50) NULL,
	[name_material] [nvarchar](250) NULL,
	[status_material] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[origin]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[origin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_origin] [varchar](50) NULL,
	[name_origin] [nvarchar](250) NULL,
	[status_origin] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pattern]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pattern](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_pattern] [varchar](50) NULL,
	[name_pattern] [nvarchar](250) NULL,
	[status_pattern] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_method]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_method](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_paymentmethod] [varchar](50) NULL,
	[name_paymentmethod] [nvarchar](100) NULL,
	[status_paymentmethod] [int] NULL,
	[note] [text] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role_A]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_A](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_role] [varchar](50) NULL,
	[name_role] [nvarchar](100) NULL,
	[status_role] [int] NULL,
	[description_role] [text] NULL,
	[create_by] [nvarchar](100) NULL,
	[create_at] [date] NULL,
	[update_by] [nvarchar](100) NULL,
	[update_at] [date] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[season]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[season](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_season] [varchar](50) NULL,
	[name_season] [nvarchar](250) NULL,
	[status_season] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shirt]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shirt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[brand_id] [int] NULL,
	[category_id] [int] NULL,
	[code_shirt] [varchar](50) NULL,
	[name_shirt] [nvarchar](250) NULL,
	[create_by] [nvarchar](100) NULL,
	[create_at] [date] NULL,
	[update_by] [nvarchar](100) NULL,
	[update_at] [date] NULL,
	[status_shirt] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shirt_detail]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shirt_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shirt_id] [int] NULL,
	[brand_id] [int] NULL,
	[pattern_id] [int] NULL,
	[gender_id] [int] NULL,
	[origin_id] [int] NULL,
	[season_id] [int] NULL,
	[size_id] [int] NULL,
	[material_id] [int] NULL,
	[color_id] [int] NULL,
	[code_shirt_detail] [varchar](50) NULL,
	[price] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
	[status_shirt_detail] [int] NULL,
	[create_by] [nvarchar](100) NULL,
	[create_at] [date] NULL,
	[update_by] [nvarchar](100) NULL,
	[update_at] [date] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_size] [varchar](50) NULL,
	[name_size] [nvarchar](250) NULL,
	[status_size] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 10/15/2024 6:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_voucher] [varchar](50) NULL,
	[type_voucher] [varchar](100) NULL,
	[name_voucher] [varchar](250) NULL,
	[discount_value] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
	[min_bill_value] [decimal](10, 2) NULL,
	[maximum_discount] [decimal](10, 2) NULL,
	[startdate] [date] NULL,
	[enddate] [date] NULL,
	[status_voucher] [int] NULL,
	[description_voucher] [text] NULL,
	[create_by] [nvarchar](100) NULL,
	[create_at] [date] NULL,
	[update_by] [nvarchar](100) NULL,
	[update_at] [date] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[account] ADD  DEFAULT ((0)) FOR [status_account]
GO
ALTER TABLE [dbo].[account] ADD  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[account] ADD  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[account] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[account_role] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[bill] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[bill] ADD  DEFAULT (getdate()) FOR [desired_date]
GO
ALTER TABLE [dbo].[bill] ADD  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[bill] ADD  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[bill] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[bill_detail] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[bill_payment] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[brand] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[cart] ADD  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[cart] ADD  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[cart] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[cart_detail] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[color] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[gender] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[image_shirt_detail] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[material] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[origin] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[pattern] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[payment_method] ADD  DEFAULT ((0)) FOR [status_paymentmethod]
GO
ALTER TABLE [dbo].[payment_method] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[role_A] ADD  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[role_A] ADD  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[role_A] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[season] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[shirt] ADD  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[shirt] ADD  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[shirt] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[shirt_detail] ADD  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[shirt_detail] ADD  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[shirt_detail] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[size] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[voucher] ADD  DEFAULT (getdate()) FOR [startdate]
GO
ALTER TABLE [dbo].[voucher] ADD  DEFAULT (getdate()) FOR [enddate]
GO
ALTER TABLE [dbo].[voucher] ADD  DEFAULT ((0)) FOR [status_voucher]
GO
ALTER TABLE [dbo].[voucher] ADD  DEFAULT (getdate()) FOR [create_at]
GO
ALTER TABLE [dbo].[voucher] ADD  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[voucher] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[account_role]  WITH CHECK ADD  CONSTRAINT [fk_] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[account_role] CHECK CONSTRAINT [fk_]
GO
ALTER TABLE [dbo].[account_role]  WITH CHECK ADD  CONSTRAINT [fk_accountRole_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role_A] ([id])
GO
ALTER TABLE [dbo].[account_role] CHECK CONSTRAINT [fk_accountRole_role]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [fk_bill_voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[voucher] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [fk_bill_voucher]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [fk_customer_account] FOREIGN KEY([customer_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [fk_customer_account]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [fk_staff_account] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [fk_staff_account]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [fk_billdetail_bill] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [fk_billdetail_bill]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [fk_billdetail_shirtDetail] FOREIGN KEY([shirt_detail_id])
REFERENCES [dbo].[shirt_detail] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [fk_billdetail_shirtDetail]
GO
ALTER TABLE [dbo].[bill_payment]  WITH CHECK ADD  CONSTRAINT [fk_billpayment_bill] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[bill_payment] CHECK CONSTRAINT [fk_billpayment_bill]
GO
ALTER TABLE [dbo].[bill_payment]  WITH CHECK ADD  CONSTRAINT [fk_billpayment_paymentmedhod] FOREIGN KEY([payment_id])
REFERENCES [dbo].[payment_method] ([id])
GO
ALTER TABLE [dbo].[bill_payment] CHECK CONSTRAINT [fk_billpayment_paymentmedhod]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [fk_cart_account] FOREIGN KEY([account_id])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [fk_cart_account]
GO
ALTER TABLE [dbo].[cart_detail]  WITH CHECK ADD  CONSTRAINT [fk_cartdetail_cart] FOREIGN KEY([cart_id])
REFERENCES [dbo].[cart] ([id])
GO
ALTER TABLE [dbo].[cart_detail] CHECK CONSTRAINT [fk_cartdetail_cart]
GO
ALTER TABLE [dbo].[cart_detail]  WITH CHECK ADD  CONSTRAINT [fk_cartdetail_shirtDetail] FOREIGN KEY([shirt_detail_id])
REFERENCES [dbo].[shirt_detail] ([id])
GO
ALTER TABLE [dbo].[cart_detail] CHECK CONSTRAINT [fk_cartdetail_shirtDetail]
GO
ALTER TABLE [dbo].[image_shirt_detail]  WITH CHECK ADD  CONSTRAINT [fk_image_shirtDetail] FOREIGN KEY([shirt_detail_id])
REFERENCES [dbo].[shirt_detail] ([id])
GO
ALTER TABLE [dbo].[image_shirt_detail] CHECK CONSTRAINT [fk_image_shirtDetail]
GO
ALTER TABLE [dbo].[shirt]  WITH CHECK ADD  CONSTRAINT [fk_shirt_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([id])
GO
ALTER TABLE [dbo].[shirt] CHECK CONSTRAINT [fk_shirt_brand]
GO
ALTER TABLE [dbo].[shirt]  WITH CHECK ADD  CONSTRAINT [fk_shirt_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[shirt] CHECK CONSTRAINT [fk_shirt_category]
GO
ALTER TABLE [dbo].[shirt_detail]  WITH CHECK ADD  CONSTRAINT [fk_shirtDetail_color] FOREIGN KEY([color_id])
REFERENCES [dbo].[color] ([id])
GO
ALTER TABLE [dbo].[shirt_detail] CHECK CONSTRAINT [fk_shirtDetail_color]
GO
ALTER TABLE [dbo].[shirt_detail]  WITH CHECK ADD  CONSTRAINT [fk_shirtDetail_gender] FOREIGN KEY([gender_id])
REFERENCES [dbo].[gender] ([id])
GO
ALTER TABLE [dbo].[shirt_detail] CHECK CONSTRAINT [fk_shirtDetail_gender]
GO
ALTER TABLE [dbo].[shirt_detail]  WITH CHECK ADD  CONSTRAINT [fk_shirtDetail_material] FOREIGN KEY([material_id])
REFERENCES [dbo].[material] ([id])
GO
ALTER TABLE [dbo].[shirt_detail] CHECK CONSTRAINT [fk_shirtDetail_material]
GO
ALTER TABLE [dbo].[shirt_detail]  WITH CHECK ADD  CONSTRAINT [fk_shirtDetail_origin] FOREIGN KEY([origin_id])
REFERENCES [dbo].[origin] ([id])
GO
ALTER TABLE [dbo].[shirt_detail] CHECK CONSTRAINT [fk_shirtDetail_origin]
GO
ALTER TABLE [dbo].[shirt_detail]  WITH CHECK ADD  CONSTRAINT [fk_shirtDetail_pattern] FOREIGN KEY([pattern_id])
REFERENCES [dbo].[pattern] ([id])
GO
ALTER TABLE [dbo].[shirt_detail] CHECK CONSTRAINT [fk_shirtDetail_pattern]
GO
ALTER TABLE [dbo].[shirt_detail]  WITH CHECK ADD  CONSTRAINT [fk_shirtDetail_season] FOREIGN KEY([season_id])
REFERENCES [dbo].[season] ([id])
GO
ALTER TABLE [dbo].[shirt_detail] CHECK CONSTRAINT [fk_shirtDetail_season]
GO
ALTER TABLE [dbo].[shirt_detail]  WITH CHECK ADD  CONSTRAINT [fk_shirtDetail_shirt] FOREIGN KEY([shirt_id])
REFERENCES [dbo].[shirt] ([id])
GO
ALTER TABLE [dbo].[shirt_detail] CHECK CONSTRAINT [fk_shirtDetail_shirt]
GO
ALTER TABLE [dbo].[shirt_detail]  WITH CHECK ADD  CONSTRAINT [fk_shirtDetail_size] FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([id])
GO
ALTER TABLE [dbo].[shirt_detail] CHECK CONSTRAINT [fk_shirtDetail_size]
GO
-- Insert data into voucher
INSERT INTO voucher (code_voucher, type_voucher, name_voucher, discount_value, quantity, min_bill_value, maximum_discount, startdate, enddate, status_voucher, description_voucher, create_by, create_at, update_by, update_at, deleted) VALUES
('VOUCHER001', 'Percent', '10% Off', 10.00, 100, 50.00, 20.00, GETDATE(), DATEADD(DAY, 30, GETDATE()), 1, '10% off on orders over $50', 'system', GETDATE(), 'system', GETDATE(), 0),
('VOUCHER002', 'Amount', 'Flat $5 Off', 5.00, 50, 0.00, 5.00, GETDATE(), DATEADD(DAY, 30, GETDATE()), 1, '$5 off on any order', 'system', GETDATE(), 'system', GETDATE(), 0),
('VOUCHER003', 'Percent', '20% Off', 20.00, 100, 100.00, 50.00, GETDATE(), DATEADD(DAY, 30, GETDATE()), 1, '20% off on orders over $100', 'system', GETDATE(), 'system', GETDATE(), 0),
('VOUCHER004', 'Amount', 'Flat $10 Off', 10.00, 75, 0.00, 10.00, GETDATE(), DATEADD(DAY, 30, GETDATE()), 1, '$10 off on any order', 'system', GETDATE(), 'system', GETDATE(), 0),
('VOUCHER005', 'Percent', '15% Off', 15.00, 100, 70.00, 30.00, GETDATE(), DATEADD(DAY, 30, GETDATE()), 1, '15% off on orders over $70', 'system', GETDATE(), 'system', GETDATE(), 0);

-- Insert data into payment_method
INSERT INTO payment_method (code_paymentmethod, name_paymentmethod, status_paymentmethod, note, deleted) VALUES
('PM001', 'Credit Card', 1, 'Visa, MasterCard', 0),
('PM002', 'PayPal', 1, 'Pay with PayPal', 0),
('PM003', 'Bank Transfer', 1, 'Direct bank transfer', 0),
('PM004', 'Cash on Delivery', 1, 'Pay cash upon delivery', 0),
('PM005', 'Gift Card', 1, 'Pay with gift cards', 0);

-- Insert data into bill_payment
INSERT INTO bill_payment (bill_id, payment_id, payment_amount, deleted) VALUES
(1, 1, 50.00, 0),
(1, 2, 45.00, 0),
(2, 1, 30.00, 0),
(3, 3, 60.00, 0),
(3, 4, 70.00, 0);

-- Insert data into bill
INSERT INTO bill (voucher_id, account_id, customer_id, code_bill, type_bill, customer_name, phone_number, address_customer, money_ship, subtotal_before_discount, money_reduce, total_money, create_date, desired_date, status_bill, create_by, create_at, update_by, update_at, note, deleted) VALUES
(1, 1, 1, 'BILL001', 'Online', 'John Doe', '1234567890', '123 Elm St', 5.00, 100.00, 10.00, 95.00, GETDATE(), DATEADD(DAY, 7, GETDATE()), 1, 'system', GETDATE(), 'system', GETDATE(), 'No notes', 0),
(2, 1, 1, 'BILL002', 'In-Store', 'Jane Smith', '0987654321', '456 Oak St', 10.00, 150.00, 5.00, 140.00, GETDATE(), DATEADD(DAY, 7, GETDATE()), 1, 'system', GETDATE(), 'system', GETDATE(), 'No notes', 0),
(3, 2, 2, 'BILL003', 'Online', 'Alice Johnson', '5555555555', '789 Pine St', 8.00, 200.00, 20.00, 180.00, GETDATE(), DATEADD(DAY, 7, GETDATE()), 1, 'system', GETDATE(), 'system', GETDATE(), 'No notes', 0),
(4, 3, 3, 'BILL004', 'In-Store', 'Bob Brown', '1112223333', '321 Birch St', 5.00, 120.00, 15.00, 105.00, GETDATE(), DATEADD(DAY, 7, GETDATE()), 1, 'system', GETDATE(), 'system', GETDATE(), 'No notes', 0);
-- Insert data into account
INSERT INTO account (code_account, username, pass, first_name, last_name, avatar, address_account, phone_number, status_account, create_by, create_at, update_by, update_at, deleted, email) 
VALUES 
('ACC1', 'john_doe', 'password123', 'John', 'Doe', 'avatar1.jpg', '123 Main St, City, Country', '0123456789', 0, 'admin', GETDATE(), 'admin', GETDATE(), 0, 'john.doe@example.com'),
('ACC2', 'jane_smith', 'password456', 'Jane', 'Smith', 'avatar2.jpg', '456 Elm St, City, Country', '0987654321', 0, 'admin', GETDATE(), 'admin', GETDATE(), 0, 'jane.smith@example.com'),
('ACC3', 'alice_wonder', 'password789', 'Alice', 'Wonder', 'avatar3.jpg', '789 Oak St, City, Country', '0112233445', 0, 'admin', GETDATE(), 'admin', GETDATE(), 0, 'alice.wonder@example.com'),
('ACC4', 'bob_builder', 'password000', 'Bob', 'Builder', 'avatar4.jpg', '101 Pine St, City, Country', '0223344556', 0, 'admin', GETDATE(), 'admin', GETDATE(), 0, 'bob.builder@example.com');

-- Insert data into account_role
INSERT INTO account_role (role_id, account_id, deleted) VALUES
(1, 1, 0),
(2, 2, 0),
(1, 3, 0),
(3, 4, 0),
(2, 5, 0);

-- Insert data into role_A
INSERT INTO role_A (code_role, name_role, status_role, description_role, create_by, create_at, update_by, update_at, deleted) VALUES
('ADMIN', 'Admin', 1, 'Administrator role', 'system', GETDATE(), 'system', GETDATE(), 0),
('USER', 'User', 1, 'Regular user role', 'system', GETDATE(), 'system', GETDATE(), 0),
('STAFF', 'Staff', 1, 'Staff role', 'system', GETDATE(), 'system', GETDATE(), 0);

-- Insert data into cart
INSERT INTO cart (account_id, code_cart, create_by, create_at, update_by, update_at, status_cart, deleted) VALUES
(1, 'CART001', 'system', GETDATE(), 'system', GETDATE(), 1, 0),
(2, 'CART002', 'system', GETDATE(), 'system', GETDATE(), 1, 0),
(3, 'CART003', 'system', GETDATE(), 'system', GETDATE(), 1, 0),
(4, 'CART004', 'system', GETDATE(), 'system', GETDATE(), 1, 0),
(5, 'CART005', 'system', GETDATE(), 'system', GETDATE(), 1, 0);

-- Insert data into cart_detail
INSERT INTO cart_detail (shirt_detail_id, cart_id, code_cart_detail, quantity, status_cart_detail, deleted) VALUES
(1, 1, 'CD001', 2, 1, 0),
(2, 1, 'CD002', 1, 1, 0),
(3, 2, 'CD003', 3, 1, 0),
(4, 3, 'CD004', 1, 1, 0),
(5, 4, 'CD005', 2, 1, 0);

-- Insert data into bill_detail
INSERT INTO bill_detail (shirt_detail_id, bill_id, code_bill_detail, quantity, price, status_bill_detail, deleted) VALUES
(1, 1, 'BD001', 2, 25.00, 1, 0),
(2, 1, 'BD002', 1, 15.00, 1, 0),
(3, 2, 'BD003', 3, 30.00, 1, 0),
(4, 3, 'BD004', 1, 40.00, 1, 0),
(5, 4, 'BD005', 2, 20.00, 1, 0);

-- Insert data into shirt
INSERT INTO shirt (brand_id, category_id, code_shirt, name_shirt, create_by, create_at, update_by, update_at, status_shirt, deleted) VALUES
(1, 1, 'S001', 'T-Shirt', 'system', GETDATE(), 'system', GETDATE(), 1, 0),
(1, 2, 'S002', 'Polo Shirt', 'system', GETDATE(), 'system', GETDATE(), 1, 0),
(2, 1, 'S003', 'Hoodie', 'system', GETDATE(), 'system', GETDATE(), 1, 0),
(2, 2, 'S004', 'Sweater', 'system', GETDATE(), 'system', GETDATE(), 1, 0),
(3, 1, 'S005', 'Jacket', 'system', GETDATE(), 'system', GETDATE(), 1, 0);

-- Insert data into shirt_detail
INSERT INTO shirt_detail (shirt_id, brand_id, pattern_id, gender_id, origin_id, season_id, size_id, material_id, color_id, code_shirt_detail, price, quantity, status_shirt_detail, create_by, create_at, update_by, update_at, deleted) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 'SD001', 25.00, 100, 1, 'system', GETDATE(), 'system', GETDATE(), 0),
(2, 1, 1, 2, 1, 1, 2, 1, 2, 'SD002', 30.00, 150, 1, 'system', GETDATE(), 'system', GETDATE(), 0),
(3, 2, 2, 1, 1, 1, 1, 1, 1, 'SD003', 40.00, 200, 1, 'system', GETDATE(), 'system', GETDATE(), 0),
(4, 2, 2, 2, 1, 1, 2, 1, 2, 'SD004', 35.00, 50, 1, 'system', GETDATE(), 'system', GETDATE(), 0),
(5, 3, 3, 1, 1, 1, 1, 1, 1, 'SD005', 50.00, 25, 1, 'system', GETDATE(), 'system', GETDATE(), 0);

-- Insert data into brand
INSERT INTO brand (code_brand, name_brand, status_brand, deleted) VALUES
('B001', 'Brand A', 1, 0),
('B002', 'Brand B', 1, 0),
('B003', 'Brand C', 1, 0),
('B004', 'Brand D', 1, 0),
('B005', 'Brand E', 1, 0);

-- Insert data into category
INSERT INTO category (code_category, name_category, status_category, deleted) VALUES
('C001', 'Men', 1, 0),
('C002', 'Women', 1, 0),
('C003', 'Kids', 1, 0),
('C004', 'Accessories', 1, 0),
('C005', 'Footwear', 1, 0);

-- Insert data into season
INSERT INTO season (code_season, name_season, status_season, deleted) VALUES
('S001', 'Spring', 1, 0),
('S002', 'Summer', 1, 0),
('S003', 'Fall', 1, 0),
('S004', 'Winter', 1, 0),
('S005', 'All Year', 1, 0);

-- Insert data into material
INSERT INTO material (code_material, name_material, status_material, deleted) VALUES
('M001', 'Cotton', 1, 0),
('M002', 'Polyester', 1, 0),
('M003', 'Wool', 1, 0),
('M004', 'Silk', 1, 0),
('M005', 'Denim', 1, 0);

-- Insert data into image_shirt_detail
INSERT INTO image_shirt_detail (shirt_detail_id, code_image, name_image, main_image, deleted) VALUES
(1, 'IMG001', 'shirt1.jpg', 1, 0),
(2, 'IMG002', 'shirt2.jpg', 0, 0),
(3, 'IMG003', 'shirt3.jpg', 1, 0),
(4, 'IMG004', 'shirt4.jpg', 0, 0),
(5, 'IMG005', 'shirt5.jpg', 1, 0);

-- Insert data into size
INSERT INTO size (code_size, name_size, status_size, deleted) VALUES
('SIZE001', 'S', 1, 0),
('SIZE002', 'M', 1, 0),
('SIZE003', 'L', 1, 0),
('SIZE004', 'XL', 1, 0),
('SIZE005', 'XXL', 1, 0);

-- Insert data into pattern
INSERT INTO pattern (code_pattern, name_pattern, status_pattern, deleted) VALUES
('P001', 'Striped', 1, 0),
('P002', 'Solid', 1, 0),
('P003', 'Checked', 1, 0),
('P004', 'Floral', 1, 0),
('P005', 'Geometric', 1, 0);

-- Insert data into gender
INSERT INTO gender (code_gender, name_gender, status_gender, deleted) VALUES
('G001', 'Men', 1, 0),
('G002', 'Women', 1, 0),
('G003', 'Unisex', 1, 0),
('G004', 'Kids', 1, 0),
('G005', 'Babies', 1, 0);

-- Insert data into origin
INSERT INTO origin (code_origin, name_origin, status_origin, deleted) VALUES
('O001', 'USA', 1, 0),
('O002', 'China', 1, 0),
('O003', 'Vietnam', 1, 0),
('O004', 'India', 1, 0),
('O005', 'Bangladesh', 1, 0);

-- Insert data into color
INSERT INTO color (code_color, name_color, status_color, deleted) VALUES
('C001', 'Red', 1, 0),
('C002', 'Blue', 1, 0),
('C003', 'Green', 1, 0),
('C004', 'Black', 1, 0),
('C005', 'White', 1, 0);

select * from account
select * from role_A
select * from account_role

ALTER TABLE account ALTER COLUMN pass NVARCHAR(500);

delete from account
where id = 9

