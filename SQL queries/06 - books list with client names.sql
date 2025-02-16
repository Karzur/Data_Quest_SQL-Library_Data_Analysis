select books.title, members.firstname, members.lastname from borrowedbooks
join members on borrowedbooks.memberid = members.memberid
join books on books.bookid = borrowedbooks.bookid
order by books.title