with
calculations as
	(
	select 
		members.firstname
		,members.lastname
		,count(borrowedbooks.borrowdate)
		,(current_date - members.joindate)/count(borrowedbooks.borrowdate) as avg_time_between_borrowing
	from members
	join borrowedbooks on members.memberid = borrowedbooks.memberid
	group by members.firstname, members.lastname, members.joindate
	order by members.firstname, members.lastname
	)

select concat(firstname, ' ', lastname) from calculations
where avg_time_between_borrowing < 60