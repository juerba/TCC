INSERT INTO [Agency]
           ([agency_id]
           ,[agency_name]
           ,[agency_url]
           ,[agency_timezone])

Select  01 as agency_id
       ,'EMDURB' as agency_name
       ,'http://www.emdurb.com.br/site2010/' as agency_url
       ,'America/Sao_Paulo' as agency_timezone
