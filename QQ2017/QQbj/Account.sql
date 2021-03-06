USE [MyQQ]
GO
/****** 对象:  Table [dbo].[Account]    脚本日期: 01/03/2017 19:21:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[qqCode] [int] NOT NULL,
	[nickName] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Headimg] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[qqPassword] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[age] [int] NOT NULL,
	[sex] [char](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[star] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[blood] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[nation] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[hobit] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[ipAddr] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[port] [int] NULL,
	[onlinestatus] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[remark] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[qqCode] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [MyQQ]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD CHECK  (([port]>=(0) AND [port]<=(65535)))