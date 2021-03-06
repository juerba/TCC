
---- todos os dias
insert into Route_Sequence (route_id, sequence_id)

SELECT Distinct  replace(replace(Ht.LINHA,'.',''),'-',''), 'USD'
  FROM [TCC].[dbo].[Horarios] ht
WHERE 
 EXISTS (
SELECT distinct  replace(replace(H1.LINHA,'.',''),'-','')
      ,[Descricao]
      ,[TipoDia]
  FROM [TCC].[dbo].[Horarios] h1
  where TipoDia = 'D'
    and replace(replace(H1.LINHA,'.',''),'-','') = replace(replace(H1.LINHA,'.',''),'-','')
)
AND EXISTS 
(SELECT distinct replace(replace(H2.LINHA,'.',''),'-','')
      ,[Descricao]
      ,[TipoDia]
  FROM [TCC].[dbo].[Horarios] h2
  where TipoDia = 'S'
  and replace(replace(H2.LINHA,'.',''),'-','') = replace(replace(ht.LINHA,'.',''),'-',''))
AND EXISTS 
(SELECT distinct replace(replace(H3.LINHA,'.',''),'-','')
      ,[Descricao]
      ,[TipoDia]
  FROM [TCC].[dbo].[Horarios] h3
  where TipoDia = 'U'
  and replace(replace(H3.LINHA,'.',''),'-','') = replace(replace(H3.LINHA,'.',''),'-',''))

insert into Route_Sequence (route_id, sequence_id)

SELECT Distinct replace(replace(H1.LINHA,'.',''),'-',''), 'USD'
  FROM [TCC].[dbo].[Horarios] h1
  where isnull(TipoDia,'') = '' 

-- só dia útil

insert into Route_Sequence (route_id, sequence_id)

SELECT Distinct replace(replace(Ht.LINHA,'.',''),'-',''), 'U'
  FROM [TCC].[dbo].[Horarios] ht
WHERE not EXISTS (
SELECT distinct replace(replace(H1.LINHA,'.',''),'-','')
      ,[Descricao]
      ,[TipoDia]
  FROM [TCC].[dbo].[Horarios] h1
  where TipoDia = 'D'
  and replace(replace(H1.LINHA,'.',''),'-','') = replace(replace(ht.LINHA,'.',''),'-','')
)
AND not EXISTS 
(SELECT distinct replace(replace(h2.LINHA,'.',''),'-','')
      ,[Descricao]
      ,[TipoDia]
  FROM [TCC].[dbo].[Horarios] h2
  where TipoDia = 'S'
  and replace(replace(H2.LINHA,'.',''),'-','') = replace(replace(Ht.LINHA,'.',''),'-',''))
AND EXISTS 
(SELECT distinct replace(replace(H3.LINHA,'.',''),'-','')
      ,[Descricao]
      ,[TipoDia]
  FROM [TCC].[dbo].[Horarios] h3
  where TipoDia = 'U'
  and replace(replace(H3.LINHA,'.',''),'-','') = replace(replace(ht.LINHA,'.',''),'-',''))


-- só diautil e sabado
insert into Route_Sequence (route_id, sequence_id)

SELECT Distinct replace(replace(ht.LINHA,'.',''),'-',''), 'US'
  FROM [TCC].[dbo].[Horarios] ht
WHERE NOT EXISTS (
SELECT distinct replace(replace(H1.LINHA,'.',''),'-','')
      ,[Descricao]
      ,[TipoDia]
  FROM [TCC].[dbo].[Horarios] h1
  where TipoDia = 'D'
  and replace(replace(H1.LINHA,'.',''),'-','') = replace(replace(Ht.LINHA,'.',''),'-','')
)
AND EXISTS 
(SELECT distinct replace(replace(H2.LINHA,'.',''),'-','')
      ,[Descricao]
      ,[TipoDia]
  FROM [TCC].[dbo].[Horarios] h2
  where TipoDia = 'S'
  and replace(replace(H2.LINHA,'.',''),'-','') = replace(replace(Ht.LINHA,'.',''),'-',''))
AND EXISTS 
(SELECT distinct replace(replace(H3.LINHA,'.',''),'-','')
      ,[Descricao]
      ,[TipoDia]
  FROM [TCC].[dbo].[Horarios] h3
  where TipoDia = 'U'
  and replace(replace(H3.LINHA,'.',''),'-','') = replace(replace(Ht.LINHA,'.',''),'-',''))
  
  --SELECT * FROM ROUTE_SEQUENCE
  
  --SELECT distinct [Linha]
  --    ,[Descricao]
  --    ,[TipoDia]
  --FROM [TCC].[dbo].[Horarios] h3