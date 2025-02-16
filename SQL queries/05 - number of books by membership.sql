select
	members.membershiptype
	,count(borrowedbooks.borrowid)
from members
join borrowedbooks on  borrowedbooks.memberid = members.memberid
group by members.membershiptype
order by count(borrowedbooks.borrowid) desc