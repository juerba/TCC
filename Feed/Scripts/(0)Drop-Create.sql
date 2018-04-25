USE [Transit_2]
GO

/****** Object:  Table [dbo].[Agency]    Script Date: 07/22/2013 22:05:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agency]') AND type in (N'U'))
DROP TABLE [dbo].[Agency]
GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Agency]    Script Date: 07/22/2013 22:05:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Agency](
	[agency_id] [nchar](10) NULL,
	[agency_name] [nchar](10) NULL,
	[agency_url] [nchar](100) NULL,
	[agency_timezone] [nchar](25) NULL
) ON [PRIMARY]

GO


USE [Transit_2]
GO

/****** Object:  Table [dbo].[Calendar]    Script Date: 07/22/2013 22:05:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Calendar]') AND type in (N'U'))
DROP TABLE [dbo].[Calendar]
GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Calendar]    Script Date: 07/22/2013 22:05:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Calendar](
	[service_id] [nchar](10) NULL,
	[monday] [tinyint] NULL,
	[tuesday] [tinyint] NULL,
	[wednesday] [tinyint] NULL,
	[thursday] [tinyint] NULL,
	[friday] [tinyint] NULL,
	[saturday] [tinyint] NULL,
	[sunday] [tinyint] NULL,
	[start_date] [nchar](10) NULL,
	[end_date] [nchar](10) NULL
) ON [PRIMARY]

GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Calendar_Dates]    Script Date: 07/22/2013 22:05:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Calendar_Dates]') AND type in (N'U'))
DROP TABLE [dbo].[Calendar_Dates]
GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Calendar_Dates]    Script Date: 07/22/2013 22:05:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Calendar_Dates](
	[service_id] [nchar](10) NULL,
	[date] [nchar](10) NULL,
	[exception_type] [nchar](10) NULL
) ON [PRIMARY]

GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Route]    Script Date: 07/22/2013 22:06:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Route]') AND type in (N'U'))
DROP TABLE [dbo].[Route]
GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Route]    Script Date: 07/22/2013 22:06:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Route](
	[route_id] [nchar](10) NULL,
	[agency_id] [nchar](10) NULL,
	[route_short_name] [nchar](50) NULL,
	[route_long_name] [nchar](500) NULL,
	[route_desc] [nchar](500) NULL,
	[route_type] [int] NULL
) ON [PRIMARY]

GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Route_Sequence]    Script Date: 07/22/2013 22:06:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Route_Sequence]') AND type in (N'U'))
DROP TABLE [dbo].[Route_Sequence]
GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Route_Sequence]    Script Date: 07/22/2013 22:06:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Route_Sequence](
	[route_id] [nchar](10) NULL,
	[sequence_id] [nchar](10) NULL
) ON [PRIMARY]

GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Stop_Times]    Script Date: 07/22/2013 22:06:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stop_Times]') AND type in (N'U'))
DROP TABLE [dbo].[Stop_Times]
GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Stop_Times]    Script Date: 07/22/2013 22:06:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Stop_Times](
	[trip_id] [nchar](10) NULL,
	[arrival_time] [nchar](10) NULL,
	[departure_time] [nchar](10) NULL,
	[stop_id] [nchar](10) NULL,
	[stop_sequence] [nchar](10) NULL
) ON [PRIMARY]

GO
USE [Transit_2]
GO

/****** Object:  Table [dbo].[Stops]    Script Date: 07/22/2013 22:06:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stops]') AND type in (N'U'))
DROP TABLE [dbo].[Stops]
GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Stops]    Script Date: 07/22/2013 22:06:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Stops](
	[stop_id] [nchar](10) NULL,
	[stop_name] [nchar](100) NULL,
	[stop_lat] [float] NULL,
	[stop_lon] [float] NULL
) ON [PRIMARY]

GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Trips]    Script Date: 07/22/2013 22:06:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Trips]') AND type in (N'U'))
DROP TABLE [dbo].[Trips]
GO

USE [Transit_2]
GO

/****** Object:  Table [dbo].[Trips]    Script Date: 07/22/2013 22:06:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Trips](
	[route_id] [nchar](10) NULL,
	[service_id] [nchar](10) NULL,
	[trip_headsign] [nchar](100) NULL,
	[trip_id] [nchar](20) NULL,
	[direction_id] [int] NULL
) ON [PRIMARY]

GO


