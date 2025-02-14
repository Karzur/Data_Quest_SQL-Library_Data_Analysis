select 
	bookid,
	case
		when returndate is null then (current_date - borrowdate)
	else (returndate - borrowdate)
	end as borrow_time
from borrowedbooks
order by bookid



select bookid, borrowdate, returndate from borrowedbooks
order by bookid