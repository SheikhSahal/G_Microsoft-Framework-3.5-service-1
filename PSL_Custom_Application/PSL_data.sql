USE [PSL]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 05-Apr-19 7:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[ManagerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 05-Apr-19 7:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[User_name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[C_Password] [varchar](50) NULL,
	[Company] [varchar](50) NULL CONSTRAINT [df_Company]  DEFAULT ('PSL'),
 CONSTRAINT [PK_Login_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 05-Apr-19 7:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menus](
	[Menu_id] [int] IDENTITY(1,1) NOT NULL,
	[Menu_name] [varchar](50) NULL,
	[Menu_Parent_id] [int] NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Privilege]    Script Date: 05-Apr-19 7:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Privilege](
	[User_id] [varchar](50) NULL,
	[Menu_id] [int] NULL,
	[Grant_YN] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (1, N'John', 5)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (2, N'Mark', 8)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (3, N'Steve', 8)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (4, N'Tom', 3)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (5, N'Lara', 8)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (6, N'Simon', 2)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (7, N'David', 4)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (8, N'Ben', NULL)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (9, N'Stacy', 2)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [ManagerID]) VALUES (10, N'Sam', 5)
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (1, N'admin', N'Admin', N'Admin', N'PSL')
INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (2, N'sahal', N'12345', N'12345', N'PSL')
INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (3, N'irfan_bhai', N'1234', N'1234', N'PSL')
INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (4, N'tooba', N'123', N'123', N'PSL')
INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (5, N'bhabhi', N'123', N'123', N'PSL')
INSERT [dbo].[Login] ([id], [User_name], [Password], [C_Password], [Company]) VALUES (6, N'zeeshan_bhai', N'123', N'123', N'PSL')
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (1, N'Marketing', 2)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (2, N'Sales', NULL)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (3, N'Human Resource', 2)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (4, N'Finance', NULL)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (5, N'f1', 4)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (6, N'f2', 4)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (7, N'f3', 4)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (8, N'ff2', 6)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (9, N'fff2', 6)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (10, N'ffff2', 6)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (11, N'ffff2', 6)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (12, N'ffff2', 6)
INSERT [dbo].[Menus] ([Menu_id], [Menu_name], [Menu_Parent_id]) VALUES (13, N'ffff2', 6)
SET IDENTITY_INSERT [dbo].[Menus] OFF
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN]) VALUES (N'admin', 1, N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN]) VALUES (N'admin', 2, N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN]) VALUES (N'admin', 3, N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN]) VALUES (N'admin', 4, N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN]) VALUES (N'sahal', 1, N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN]) VALUES (N'sahal', 2, N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN]) VALUES (N'irfan_bhai', 1, N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN]) VALUES (N'irfan_bhai', 2, N'N')
INSERT [dbo].[User_Privilege] ([User_id], [Menu_id], [Grant_YN]) VALUES (N'irfan_bhai', 3, N'N')
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[User_Privilege]  WITH CHECK ADD  CONSTRAINT [FK_User_Privilege_Menus] FOREIGN KEY([Menu_id])
REFERENCES [dbo].[Menus] ([Menu_id])
GO
ALTER TABLE [dbo].[User_Privilege] CHECK CONSTRAINT [FK_User_Privilege_Menus]
GO
/****** Object:  StoredProcedure [dbo].[B_tree]    Script Date: 05-Apr-19 7:30:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[B_tree]
as 
with r as (
      select menu_id, menu_name, menu_parent_id, depth=0 ,sort=cast(Menu_id as varchar(max))
      from Menus
      where Menu_Parent_id is null
      union all
      select pc.Menu_id, pc.Menu_name, pc.Menu_Parent_id, depth=r.depth+1 ,sort=r.sort+cast(pc.Menu_id as varchar(30))
      from r
      inner join Menus pc on r.Menu_id=pc.Menu_Parent_id
      where r.depth<32767
)
select  r.Menu_id,tree=replicate('-',r.depth*3)+r.Menu_name, r.Menu_Parent_id , r.sort ,r.depth
from r 
order by sort;


GO
