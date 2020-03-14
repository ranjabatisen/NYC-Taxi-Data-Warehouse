SELECT PULocationID from (
	SELECT PULocationID, tripCount/denominator as prob 
		from (
		SELECT sum(tripCount) as denominator 
		from summary 
		WHERE DOLocationID = 1 AND part_of_day = 2) as temp,summary 
		WHERE DOLocationID = 1 AND part_of_day = 2) as temp1
order by prob desc LIMIT 5; 