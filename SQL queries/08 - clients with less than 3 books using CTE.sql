with
	books_borrowed_by_person as
	(
	select 
		members.firstname
		,members.lastname
		,count(books.title) as borrowed_quantity
	from borrowedbooks
	join members on members.memberid = borrowedbooks.memberid 
	join books on books.bookid = borrowedbooks.bookid
	group by members.firstname, members.lastname
	)

select * from books_borrowed_by_person
where borrowed_quantity < 3
order by borrowed_quantity desc, firstname, lastname
