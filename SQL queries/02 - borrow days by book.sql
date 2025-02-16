select 
	borrowedbooks.bookid,
	books.title,
	SUM(case
		when borrowedbooks.returndate is null then (current_date - borrowedbooks.borrowdate)
	else (borrowedbooks.returndate - borrowedbooks.borrowdate)
	end) as borrow_time
from borrowedbooks
join books on books.bookid = borrowedbooks.bookid
group by borrowedbooks.bookid, books.title
order by borrowedbooks.bookid


/*
select bookid, borrowdate, returndate from borrowedbooks
order by bookid
*/