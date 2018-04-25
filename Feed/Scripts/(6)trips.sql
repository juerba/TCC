INSERT INTO [Trips]
           ([route_id]
           ,[service_id]
           ,[trip_headsign]
           ,[trip_id]
           ,[direction_id])
SELECT distinct
	  replace(replace(LINHA,'.',''),'-','') as route_id
	 , rs.sequence_id as service_id
	 , dbo.remove_acento(SUBSTRING(nome,0,PATINDEX('%(PF1)%',Nome))) AS trip_headsign
	 , Linha+'-IDA' as trip_id
	 , 0 as direction_id
  FROM [TCC].[dbo].[Sequencia_Pontos] SP
  INNER JOIN Route_Sequence rs on replace(replace(replace(replace(replace(replace(replace(REPLACE(sp.Linha,'5778','5758'),'D',''),'F',''),'C',''),'G',''),'B',''),'A',''),'.','')  COLLATE Latin1_General_CI_AS = replace(replace(rs.route_id,'.',''),'-','')
  UNION
  SELECT distinct
	  replace(replace(LINHA,'.',''),'-','') as route_id
	 , rs.sequence_id as service_id
	 , dbo.remove_acento(LTRIM(REPLACE(REPLACE(REPLACE(REPLACE(SUBSTRING(nome,PATINDEX('%(PF1)%',Nome),PATINDEX('%(PF2)%',Nome)),'  ',' '),'(PF1)-',''),'(PF1) -',''),'(PF2)',''))) AS trip_headsign
	 , Linha+'-VOL' as trip_id
	 , 1 as direction_id
  FROM [TCC].[dbo].[Sequencia_Pontos] SP
  INNER JOIN Route_Sequence rs on replace(replace(replace(replace(replace(replace(replace(REPLACE(sp.Linha,'5778','5758'),'D',''),'F',''),'C',''),'G',''),'B',''),'A',''),'.','')  COLLATE Latin1_General_CI_AS = replace(replace(rs.route_id,'.',''),'-','')
  ORDER BY replace(replace(LINHA,'.',''),'-','')
  