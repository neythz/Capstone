
CREATE TABLE [dbo].[disb_fund_cluster](
	[fund_cluster_no] [int] IDENTITY(1,1) NOT NULL,
	[fund_source_name] [varchar](100) NOT NULL,
 CONSTRAINT [pk_fcno] PRIMARY KEY CLUSTERED 
(
	[fund_cluster_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[disb_institutes]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[disb_institutes](
	[institute_no] [int] IDENTITY(1,1) NOT NULL,
	[institute_name] [varchar](100) NOT NULL,
	[representative_claimant] [varchar](100) NOT NULL,
	[address] [varchar](max) NOT NULL,
 CONSTRAINT [pk_ino] PRIMARY KEY CLUSTERED 
(
	[institute_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[disb_officer]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[disb_officer](
	[employee_no] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[middle_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[contact_no] [numeric](11, 0) NOT NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [pk_eno] PRIMARY KEY CLUSTERED 
(
	[employee_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[disbursement_purpose]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[disbursement_purpose](
	[purpose_no] [int] IDENTITY(1,1) NOT NULL,
	[purpose_name] [varchar](100) NOT NULL,
 CONSTRAINT [pk_pno] PRIMARY KEY CLUSTERED 
(
	[purpose_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dv_transaction]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dv_transaction](
	[dv_no] [varchar](20) NOT NULL,
	[ors_burs_no] [varchar](10) NOT NULL,
	[disbursement_purpose] [varchar](50) NOT NULL,
	[mode_of_payment] [varchar](50) NOT NULL,
	[institute_name] [varchar](100) NOT NULL,
	[claimant_name] [varchar](100) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[fund_cluster] [varchar](100) NOT NULL,
	[date] [date] NOT NULL,
	[particulars] [varchar](100) NOT NULL,
	[responsibility_center] [varchar](100) NOT NULL,
	[mfo_pap] [varchar](100) NOT NULL,
	[amount] [float] NOT NULL,
	[status] [varchar](20) NULL,
	[employee_assigned] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mode_of_payment]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mode_of_payment](
	[payment_no] [int] IDENTITY(1,1) NOT NULL,
	[payment_mode] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[responsibility_center]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[responsibility_center](
	[resp_center_no] [int] IDENTITY(1,1) NOT NULL,
	[resp_center_name] [varchar](100) NOT NULL,
	[resp_center_representative] [varchar](100) NOT NULL,
 CONSTRAINT [pk_rno] PRIMARY KEY CLUSTERED 
(
	[resp_center_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sample]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sample](
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SampleTable]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SampleTable](
	[name] [varchar](50) NULL,
	[value] [numeric](38, 0) NULL,
	[color] [varchar](20) NULL,
	[value2] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_account_type]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_account_type](
	[acc_uid] [int] IDENTITY(0,1) NOT NULL,
	[acc_code] [nvarchar](50) NOT NULL,
	[acc_description] [nvarchar](500) NOT NULL,
	[acc_parent_uid] [int] NULL,
 CONSTRAINT [pk_tbl_account_type] PRIMARY KEY CLUSTERED 
(
	[acc_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[acc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_apayable]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_apayable](
	[ap_uid] [int] IDENTITY(1,1) NOT NULL,
	[ap_institute_name] [varchar](100) NULL,
	[ap_purpose] [varchar](50) NOT NULL,
	[ap_resp_center] [varchar](100) NOT NULL,
	[ap_date] [date] NOT NULL,
	[ap_amount] [float] NOT NULL,
	[ap_status] [varchar](50) NOT NULL,
	[claimant_name] [varchar](100) NOT NULL,
 CONSTRAINT [pk_apid] PRIMARY KEY CLUSTERED 
(
	[ap_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_coa]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_coa](
	[coa_account_uid] [int] IDENTITY(0,1) NOT NULL,
	[coa_code] [numeric](18, 0) NOT NULL,
	[coa_description] [nvarchar](500) NOT NULL,
	[coa_account_flag] [int] NOT NULL,
	[coa_active_flag] [int] NOT NULL,
	[acc_parent_uid] [int] NULL,
 CONSTRAINT [pk_tbl_coa] PRIMARY KEY CLUSTERED 
(
	[coa_account_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[coa_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_fund]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_fund](
	[fund_uid] [int] IDENTITY(0,1) NOT NULL,
	[fund_code] [numeric](18, 0) NOT NULL,
	[fund_description] [nvarchar](150) NOT NULL,
 CONSTRAINT [pk__tbl_fund] PRIMARY KEY CLUSTERED 
(
	[fund_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[fund_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_jev]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_jev](
	[jev_id] [int] IDENTITY(1,1) NOT NULL,
	[jev_no] [nvarchar](12) NOT NULL,
	[jev_date] [datetime] NOT NULL,
	[fund_uid] [int] NOT NULL,
	[tmp_header_uid] [int] NOT NULL,
	[particulars] [nvarchar](1000) NOT NULL,
	[trans_transaction_type_uid] [int] NOT NULL,
	[amount] [float] NULL,
	[account_flag] [bit] NULL,
	[resp_center_uid] [int] NOT NULL,
	[status] [nvarchar](20) NOT NULL,
	[prepared_by] [int] NOT NULL,
	[approved_date] [datetime] NULL,
	[approved_by] [int] NULL,
	[disapproved_date] [datetime] NULL,
	[disapproved_by] [int] NULL,
	[remarks] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tbl_jev] PRIMARY KEY CLUSTERED 
(
	[jev_jev_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_reference_document]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_reference_document](
	[ref_UID] [int] IDENTITY(0,1) NOT NULL,
	[ref_code] [numeric](18, 0) NOT NULL,
	[ref_description] [nvarchar](500) NOT NULL,
 CONSTRAINT [pk_tbl_reference_doc] PRIMARY KEY CLUSTERED 
(
	[ref_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ref_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_responsibility_center]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_responsibility_center](
	[resp_center_uid] [int] IDENTITY(0,1) NOT NULL,
	[resp_center_code] [nvarchar](50) NOT NULL,
	[resp_center_acronym] [nvarchar](50) NOT NULL,
	[resp_center_description] [nvarchar](500) NOT NULL,
 CONSTRAINT [pk_tbl_resp_center] PRIMARY KEY CLUSTERED 
(
	[resp_center_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_template_detail]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_template_detail](
	[tmp_detail_uid] [int] IDENTITY(0,1) NOT NULL,
	[coa_account_uid] [int] NOT NULL,
	[tmp_detail_account_flag] [bit] NOT NULL,
 CONSTRAINT [pk_tbl_template_detail] PRIMARY KEY CLUSTERED 
(
	[tmp_detail_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_template_header]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_template_header](
	[tmp_header_uid] [int] IDENTITY(0,1) NOT NULL,
	[tmp_header_code] [nvarchar](50) NOT NULL,
	[tmp_header_particular] [nvarchar](500) NOT NULL,
	[trans_transaction_type_uid] [int] NOT NULL,
 CONSTRAINT [pk_tbl_template_header] PRIMARY KEY CLUSTERED 
(
	[tmp_header_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[tmp_header_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_template_supporting_document]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_template_supporting_document](
	[tmp_supporting_doc_uid] [int] IDENTITY(0,1) NOT NULL,
	[ref_UID] [int] NOT NULL,
	[tmp_supporting_doc_isrequired] [bit] NOT NULL,
 CONSTRAINT [pk_tbl_template_supporting_document] PRIMARY KEY CLUSTERED 
(
	[tmp_supporting_doc_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_transaction_type]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_transaction_type](
	[trans_transaction_type_uid] [int] IDENTITY(0,1) NOT NULL,
	[trans_code] [nvarchar](50) NOT NULL,
	[trans_description] [nvarchar](500) NOT NULL,
	[trans_transaction_parent_uid] [int] NULL,
 CONSTRAINT [pk_tbl_transaction_type] PRIMARY KEY CLUSTERED 
(
	[trans_transaction_type_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[trans_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[trans_tbl_liquidation]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trans_tbl_liquidation](
	[liquidation_report_no] [int] IDENTITY(1,1) NOT NULL,
	[serial_no] [int] NULL,
	[date] [varchar](10) NULL,
	[responsibility_center] [varchar](50) NULL,
	[particulars] [varchar](100) NULL,
	[amount] [money] NULL,
	[total] [money] NULL,
 CONSTRAINT [pk_lrid] PRIMARY KEY CLUSTERED 
(
	[liquidation_report_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/19/2017 12:19:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[dv_transaction] ADD  DEFAULT ('Paid') FOR [status]
GO
ALTER TABLE [dbo].[tbl_account_type]  WITH CHECK ADD  CONSTRAINT [fk_tbl_account_type_acc_parent_uid] FOREIGN KEY([acc_parent_uid])
REFERENCES [dbo].[tbl_account_type] ([acc_uid])
GO
ALTER TABLE [dbo].[tbl_account_type] CHECK CONSTRAINT [fk_tbl_account_type_acc_parent_uid]
GO
ALTER TABLE [dbo].[tbl_coa]  WITH CHECK ADD  CONSTRAINT [fk_tbl_coa_acc_parent_uid] FOREIGN KEY([acc_parent_uid])
REFERENCES [dbo].[tbl_account_type] ([acc_uid])
GO
ALTER TABLE [dbo].[tbl_coa] CHECK CONSTRAINT [fk_tbl_coa_acc_parent_uid]
GO
ALTER TABLE [dbo].[tbl_jev]  WITH CHECK ADD FOREIGN KEY([acc_uid])
REFERENCES [dbo].[tbl_account_type] ([acc_uid])
GO
ALTER TABLE [dbo].[tbl_jev]  WITH CHECK ADD FOREIGN KEY([resp_center_uid])
REFERENCES [dbo].[tbl_responsibility_center] ([resp_center_uid])
GO
ALTER TABLE [dbo].[tbl_jev]  WITH CHECK ADD  CONSTRAINT [pk_tbl_jev_fund_uid] FOREIGN KEY([fund_uid])
REFERENCES [dbo].[tbl_fund] ([fund_uid])
GO
ALTER TABLE [dbo].[tbl_jev] CHECK CONSTRAINT [pk_tbl_jev_fund_uid]
GO
ALTER TABLE [dbo].[tbl_jev]  WITH CHECK ADD  CONSTRAINT [pk_tbl_jev_tmp_header_uid] FOREIGN KEY([tmp_header_uid])
REFERENCES [dbo].[tbl_template_header] ([tmp_header_uid])
GO
ALTER TABLE [dbo].[tbl_jev] CHECK CONSTRAINT [pk_tbl_jev_tmp_header_uid]
GO
ALTER TABLE [dbo].[tbl_jev]  WITH CHECK ADD  CONSTRAINT [pk_tbl_jev_trans_transaction_type_uid] FOREIGN KEY([trans_transaction_type_uid])
REFERENCES [dbo].[tbl_transaction_type] ([trans_transaction_type_uid])
GO
ALTER TABLE [dbo].[tbl_jev] CHECK CONSTRAINT [pk_tbl_jev_trans_transaction_type_uid]
GO
ALTER TABLE [dbo].[tbl_template_detail]  WITH CHECK ADD  CONSTRAINT [fk_tbl_template_detail_coa_account_uid] FOREIGN KEY([coa_account_uid])
REFERENCES [dbo].[tbl_coa] ([coa_account_uid])
GO
ALTER TABLE [dbo].[tbl_template_detail] CHECK CONSTRAINT [fk_tbl_template_detail_coa_account_uid]
GO
ALTER TABLE [dbo].[tbl_template_header]  WITH CHECK ADD  CONSTRAINT [fk_tbl_template_header_trans_type_uid] FOREIGN KEY([trans_transaction_type_uid])
REFERENCES [dbo].[tbl_transaction_type] ([trans_transaction_type_uid])
GO
ALTER TABLE [dbo].[tbl_template_header] CHECK CONSTRAINT [fk_tbl_template_header_trans_type_uid]
GO
ALTER TABLE [dbo].[tbl_template_supporting_document]  WITH CHECK ADD  CONSTRAINT [fk_tbl_template_supporting_document_ref_UID] FOREIGN KEY([ref_UID])
REFERENCES [dbo].[tbl_reference_document] ([ref_UID])
GO
ALTER TABLE [dbo].[tbl_template_supporting_document] CHECK CONSTRAINT [fk_tbl_template_supporting_document_ref_UID]
GO
ALTER TABLE [dbo].[tbl_transaction_type]  WITH CHECK ADD  CONSTRAINT [fk_tbl_trans_type_trans_parent_uid] FOREIGN KEY([trans_transaction_parent_uid])
REFERENCES [dbo].[tbl_transaction_type] ([trans_transaction_type_uid])
GO
ALTER TABLE [dbo].[tbl_transaction_type] CHECK CONSTRAINT [fk_tbl_trans_type_trans_parent_uid]
GO
USE [master]
GO
ALTER DATABASE [Financials] SET  READ_WRITE 
GO
