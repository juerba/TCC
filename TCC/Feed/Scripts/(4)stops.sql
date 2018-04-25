INSERT INTO [Stops]
           ([stop_id]
           ,[stop_name]
           ,[stop_lat]
           ,[stop_lon])
SELECT	
	  CODIGO AS stop_id
	, REPLACE(dbo.remove_acento(descricao),',','') as stop_name
	, latitude as stop_lat
	, longetude as stop_lon
from tcc..ponto
