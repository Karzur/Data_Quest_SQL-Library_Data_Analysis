with
bookcount as
(
	select
		members.membershiptype
		,members.firstname
		,members.lastname
		,count (borrowedbooks.borrowid) as number_of_books
	from members
	join borrowedbooks on  borrowedbooks.memberid = members.memberid
	group by members.membershiptype, members.lastname, members.firstname
	order by members.membershiptype, count(borrowedbooks.borrowid) desc, members.lastname
)

select
	*
from 
	(
	select 
		*
		,row_number() over(partition by membershiptype order by number_of_books desc) as membership_rank
	from bookcount
	)
where membership_rank <= 10
