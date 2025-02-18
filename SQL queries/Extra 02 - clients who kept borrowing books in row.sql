with
borrow_date_by_member as
(
	select 
		concat(members.firstname, ' ', members.lastname) as membername
		,borrowedbooks.borrowdate
		,extract(month from borrowedbooks.borrowdate) as borrow_month
	from members
	join borrowedbooks on borrowedbooks.memberid = members.memberid
	where 
		extract(year from borrowedbooks.borrowdate) = 2023 and
		concat(members.firstname, ' ', members.lastname) in
		(
			select
			concat(members.firstname, ' ', members.lastname) as membername
			from members
			join borrowedbooks on borrowedbooks.memberid = members.memberid
			where extract(year from borrowedbooks.borrowdate) = 2023
			group by concat(members.firstname, ' ', members.lastname)
			having count(borrowedbooks.borrowdate) > 2
		)
	order by 1
)
-- select * from borrow_date_by_member

select
	bdbm.membername
from borrow_date_by_member bdbm
inner join borrow_date_by_member bdbm2 
	on bdbm.membername = bdbm2.membername and bdbm2.borrow_month = (bdbm.borrow_month + 1)
inner join borrow_date_by_member bdbm3 
	on bdbm3.membername = bdbm2.membername and bdbm3.borrow_month = (bdbm2.borrow_month + 1)
