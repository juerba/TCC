INSERT INTO [Transit_2].[dbo].[Route]
           ([route_id]
           ,[agency_id]
           ,[route_short_name]
           ,[route_long_name]
           ,[route_desc]
           ,[route_type])
SELECT distinct LINHA as route_id
	, 01 as agency_id
	, [Linha] as route_short_name
      ,dbo.remove_acento(Nome) as route_long_name
      ,dbo.remove_acento(Via) as route_desc
      , 3 as route_type
  FROM [TCC].[dbo].[Sequencia_Pontos]