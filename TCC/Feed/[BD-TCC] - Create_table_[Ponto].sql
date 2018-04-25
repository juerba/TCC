USE [TCC]
GO

/****** Object:  Table [dbo].[Ponto]    Script Date: 07/15/2013 20:32:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ponto]') AND type in (N'U'))
DROP TABLE [dbo].[Ponto]
GO

USE [TCC]
GO

/****** Object:  Table [dbo].[Ponto]    Script Date: 07/15/2013 20:32:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ponto](
	[Latitude] [float] NULL,
	[Longetude] [float] NULL,
	[Codigo] [nvarchar](10) NULL,
	[Descricao] [nvarchar](500) NULL
) ON [PRIMARY]

GO


