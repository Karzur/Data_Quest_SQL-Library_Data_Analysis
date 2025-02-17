select 
	concat(firstname, ' ', lastname) as client
	,case
		when extract(year from joindate) >= 2024 then 'New'
		else 'Regular'
	end as client_classification
from members