INSERT INTO [Stop_Times]
           ([trip_id]
           ,[arrival_time]
           ,[departure_time]
           ,[stop_id]
           ,[stop_sequence])

SELECT T.trip_id
	,cast(H.Horario as time(0)) as arrival_time
	,cast(H.Horario as time(0)) as departure_time
	,stop_id AS STOP_ID
	, sp.Sequencia AS STOP_SQUENCE 
 FROM TCC..Horarios H INNER JOIN Transit..Trips T
  ON  replace(replace(H.LINHA,'.',''),'-','') COLLATE Latin1_General_CI_AS = replace(replace(replace(replace(replace(replace(replace(REPLACE(T.route_id,'5778','5758'),'D',''),'F',''),'C',''),'G',''),'B',''),'A',''),'.','')
		  inner join tcc..Sequencia_Pontos sp on replace(replace(replace(replace(replace(replace(replace(REPLACE(T.route_id,'5778','5758'),'D',''),'F',''),'C',''),'G',''),'B',''),'A',''),'.','') COLLATE Latin1_General_CI_AS =  replace(replace(replace(replace(replace(replace(replace(REPLACE(sp.linha,'5778','5758'),'D',''),'F',''),'C',''),'G',''),'B',''),'A',''),'.','')
	  inner join Stops st on sp.Ponto  COLLATE Latin1_General_CI_AS = st.stop_id
where t.direction_id = 0
and h.Sentido in ('1','C','O')
and sp.Sentido in ('PF1-PF2','Circular')

UNION
SELECT T.trip_id
	,cast(H.Horario as time(0))  as arrival_time
	,cast(H.Horario as time(0))  as departure_time
	,stop_id AS STOP_ID
	, sp.Sequencia AS STOP_SQUENCE 
 FROM TCC..Horarios H INNER JOIN Transit..Trips T
  ON  replace(replace(H.LINHA,'.',''),'-','') COLLATE Latin1_General_CI_AS = replace(replace(replace(replace(replace(replace(replace(REPLACE(T.route_id,'5778','5758'),'D',''),'F',''),'C',''),'G',''),'B',''),'A',''),'.','')
		  inner join tcc..Sequencia_Pontos sp on replace(replace(replace(replace(replace(replace(replace(REPLACE(T.route_id,'5778','5758'),'D',''),'F',''),'C',''),'G',''),'B',''),'A',''),'.','') COLLATE Latin1_General_CI_AS =  replace(replace(replace(replace(replace(replace(replace(REPLACE(sp.linha,'5778','5758'),'D',''),'F',''),'C',''),'G',''),'B',''),'A',''),'.','')
	  inner join Transit..Stops st on sp.Ponto  COLLATE Latin1_General_CI_AS = st.stop_id
where t.direction_id = 1
and h.Sentido in ('2','C','O')
and sp.Sentido in ('PF2-PF1','Circular')

--)

--AS T
--where trip_id like '3288A%'
--]
----select distinct trip_id from Transit..Trips 

--select * from tcc..Horarios where Linha = '32-88'
--select distinct linha from tcc..Sequencia_Pontos where Linha = '3288'
--select * from Transit..Trips where route_id like '%A%'

--SELECT *
-- FROM TCC..Horarios H INNER JOIN Transit..Trips T
--  ON  replace(replace(H.LINHA,'.',''),'-','') COLLATE Latin1_General_CI_AS = replace(replace(replace(replace(replace(replace(replace(REPLACE(T.route_id,'5778','5758'),'D',''),'F',''),'C',''),'G',''),'B',''),'A',''),'.','')

--	  inner join tcc..Sequencia_Pontos sp on replace(replace(replace(replace(replace(replace(replace(REPLACE(T.route_id,'5778','5758'),'D',''),'F',''),'C',''),'G',''),'B',''),'A',''),'.','') COLLATE Latin1_General_CI_AS =  replace(replace(replace(replace(replace(replace(replace(REPLACE(sp.linha,'5778','5758'),'D',''),'F',''),'C',''),'G',''),'B',''),'A',''),'.','')
--	  inner join Transit..Stops st on sp.Ponto  COLLATE Latin1_General_CI_AS = st.stop_id
	
--where t.direction_id = 1
--and h.Sentido in ('2','C','O')
--and trip_id = '3288A-VOL           '
--and sp.Sentido in ('PF2-PF1','Circular')
