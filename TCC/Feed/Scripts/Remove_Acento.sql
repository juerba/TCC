USE [TCC]
GO

/****** Object:  UserDefinedFunction [dbo].[remove_acento]    Script Date: 07/22/2013 23:24:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[remove_acento]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[remove_acento]
GO

USE [TCC]
GO

/****** Object:  UserDefinedFunction [dbo].[remove_acento]    Script Date: 07/22/2013 23:24:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create FUNCTION [dbo].[remove_acento](@Texto varchar(8000))
returns varchar(50)  
AS  
 
BEGIN
         declare @SemAcento varchar(50)  
 
         select @SemAcento = replace(@Texto,'á','a')   
         select @SemAcento = replace(@SemAcento,'à','a')   
         select @SemAcento = replace(@SemAcento,'ã','a')   
         select @SemAcento = replace(@SemAcento,'â','a')   
         select @SemAcento = replace(@SemAcento,'é','e')   
         select @SemAcento = replace(@SemAcento,'è','e')   
         select @SemAcento = replace(@SemAcento,'ê','e')   
         select @SemAcento = replace(@SemAcento,'í','i')   
         select @SemAcento = replace(@SemAcento,'ì','i')   
         select @SemAcento = replace(@SemAcento,'î','i')   
         select @SemAcento = replace(@SemAcento,'ó','o')   
         select @SemAcento = replace(@SemAcento,'ò','o')   
         select @SemAcento = replace(@SemAcento,'ô','o')   
         select @SemAcento = replace(@SemAcento,'õ','o')   
         select @SemAcento = replace(@SemAcento,'ú','u')   
         select @SemAcento = replace(@SemAcento,'ù','u')   
         select @SemAcento = replace(@SemAcento,'û','u')   
         select @SemAcento = replace(@SemAcento,'ü','u')   
         select @SemAcento = replace(@SemAcento,'ç','c')   
 
         return (UPPER(@SemAcento))  
END
GO


