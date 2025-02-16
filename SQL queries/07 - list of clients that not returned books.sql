select distinct members.firstname, members.lastname from members
join borrowedbooks on members.memberid = borrowedbooks.memberid
where borrowedbooks.returndate is null
order by members.firstname, members.lastname