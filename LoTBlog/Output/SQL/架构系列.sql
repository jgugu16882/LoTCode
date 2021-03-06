USE [LoTBlog]
GO
/****** Object:  Table [dbo].[ActionInfo]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActionInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActionName] [nvarchar](30) NOT NULL,
	[Url] [varchar](100) NOT NULL,
	[HttpMethod] [int] NOT NULL,
	[SubTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[Statu] [int] NOT NULL,
	[ActionInfoType] [int] NOT NULL,
 CONSTRAINT [PK_ACTIONINFO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminRecord]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nickname] [nvarchar](15) NOT NULL,
	[IP] [varchar](64) NOT NULL,
	[Action] [nvarchar](249) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_ADMINRECORD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Advertisement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Map] [nvarchar](50) NOT NULL,
	[AContext] [varchar](500) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_ADVERTISEMENT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Article]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Article](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[TContent] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](15) NOT NULL,
	[HitCount] [int] NOT NULL,
	[Sort] [int] NOT NULL,
	[GroupType] [int] NOT NULL,
	[Recommend] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[TypeIds] [varchar](100) NOT NULL,
	[SeoId] [int] NULL,
	[TagIds] [varchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[DisplayPic] [varchar](179) NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArticleDisPhoto]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArticleDisPhoto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](15) NOT NULL,
	[PicUrl] [varchar](179) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_ARTICLEDISPHOTO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArticleTag]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleTag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](15) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_ARTICLETAG] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticleType]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Pid] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_ArticleType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BaseInfo]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaseInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TopTitle] [nvarchar](29) NOT NULL,
	[TopText] [nvarchar](100) NOT NULL,
	[TopLogoOne] [varchar](300) NOT NULL,
	[TopLogoTwo] [varchar](300) NOT NULL,
	[RightImg] [varchar](300) NOT NULL,
	[RightTitle] [nvarchar](29) NOT NULL,
	[Manifesto] [nvarchar](29) NOT NULL,
	[Nickname] [nvarchar](29) NOT NULL,
	[Goal] [nvarchar](29) NOT NULL,
	[Dream] [nvarchar](29) NOT NULL,
	[QQ] [int] NOT NULL,
	[Email] [varchar](29) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_BASEINFO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Census]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Census](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](27) NOT NULL,
	[Total] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_CENSUS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nickname] [nvarchar](15) NOT NULL,
	[Title] [nvarchar](25) NULL,
	[Context] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](25) NOT NULL,
	[IPAddress] [varchar](64) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_COMMENT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DDos]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DDos](
	[Id] [varchar](40) NOT NULL,
	[Ip] [varchar](64) NOT NULL,
	[Count] [int] NOT NULL,
	[LastTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_DDOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DntRootInfo]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DntRootInfo](
	[Id] [varchar](40) NOT NULL,
	[NoName] [nvarchar](15) NOT NULL,
	[NoPass] [varchar](40) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_DNTROOTINFO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FriendLink]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FriendLink](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LinkName] [nvarchar](15) NOT NULL,
	[WebUrl] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[Sort] [int] NOT NULL,
	[LinkType] [int] NOT NULL,
 CONSTRAINT [PK_FRIENDLINK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HotWord]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotWord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
	[HotCount] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_HOTWORD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImgFlash]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImgFlash](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TopTitle] [nvarchar](100) NOT NULL,
	[BottomTitle] [nvarchar](100) NOT NULL,
	[BackImg] [varchar](500) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_IMGFLASH] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PeopleDisPhoto]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PeopleDisPhoto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](15) NOT NULL,
	[PicUrl] [varchar](179) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PEOPLEDISPHOTO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Photo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](15) NOT NULL,
	[DisPlayPic] [varchar](179) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[Sort] [int] NOT NULL,
	[PTypeId] [int] NOT NULL,
 CONSTRAINT [PK_PHOTO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhotoType]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](15) NOT NULL,
	[Introduction] [nvarchar](249) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PHOTOTYPE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PublicRecord]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PublicRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](39) NOT NULL,
	[IP] [varchar](64) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PUBLICRECORD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QQModel]    Script Date: 2016/7/17 12:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QQModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[OpenId] [varchar](50) NOT NULL,
	[AccessToken] [varchar](50) NOT NULL,
	[Figureurl] [varchar](200) NULL,
	[Count] [int] NOT NULL,
	[EndDataTime] [datetime] NOT NULL,
	[Status] [smallint] NOT NULL,
 CONSTRAINT [PK_QQModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleGroup]    Script Date: 2016/7/17 12:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](20) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_ROLEGROUP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RootAndAction]    Script Date: 2016/7/17 12:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RootAndAction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsPass] [bit] NOT NULL,
	[UserId] [varchar](40) NOT NULL,
	[ActionInfoId] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_R_ROOTINFO_ACTIONINFO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SeoTKD]    Script Date: 2016/7/17 12:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeoTKD](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SeoKeywords] [nvarchar](149) NOT NULL,
	[Sedescription] [nvarchar](249) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SEOTKD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Talking]    Script Date: 2016/7/17 12:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Talking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](25) NULL,
	[Say] [nvarchar](500) NOT NULL,
	[DisplayPic] [varchar](179) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[HitCount] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_TALKING] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRegInfo]    Script Date: 2016/7/17 12:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRegInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Pass] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_UserRegInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XSS]    Script Date: 2016/7/17 12:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XSS](
	[Id] [varchar](40) NOT NULL,
	[Ip] [varchar](64) NOT NULL,
	[Count] [int] NOT NULL,
	[LastTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_XSS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ArticleType] ADD  CONSTRAINT [DF_ArticleType_Pid]  DEFAULT ((0)) FOR [Pid]
GO
ALTER TABLE [dbo].[QQModel] ADD  CONSTRAINT [DF_QQModel_Count]  DEFAULT ((1)) FOR [Count]
GO
ALTER TABLE [dbo].[QQModel] ADD  CONSTRAINT [DF_QQModel_Status]  DEFAULT ((3)) FOR [Status]
GO
