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
 
         select @SemAcento = replace(@Texto,'�','a')   
         select @SemAcento = replace(@SemAcento,'�','a')   
         select @SemAcento = replace(@SemAcento,'�','a')   
         select @SemAcento = replace(@SemAcento,'�','a')   
         select @SemAcento = replace(@SemAcento,'�','e')   
         select @SemAcento = replace(@SemAcento,'�','e')   
         select @SemAcento = replace(@SemAcento,'�','e')   
         select @SemAcento = replace(@SemAcento,'�','i')   
         select @SemAcento = replace(@SemAcento,'�','i')   
         select @SemAcento = replace(@SemAcento,'�','i')   
         select @SemAcento = replace(@SemAcento,'�','o')   
         select @SemAcento = replace(@SemAcento,'�','o')   
         select @SemAcento = replace(@SemAcento,'�','o')   
         select @SemAcento = replace(@SemAcento,'�','o')   
         select @SemAcento = replace(@SemAcento,'�','u')   
         select @SemAcento = replace(@SemAcento,'�','u')   
         select @SemAcento = replace(@SemAcento,'�','u')   
         select @SemAcento = replace(@SemAcento,'�','u')   
         select @SemAcento = replace(@SemAcento,'�','c')   
 
         return (UPPER(@SemAcento))  
END
GO


