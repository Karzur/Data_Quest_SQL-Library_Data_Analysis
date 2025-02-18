select books.title, (current_date - borrowedbooks.borrowdate) as days_since_borrow from borrowedbooks
join books on books.bookid = borrowedbooks.bookid
where borrowedbooks.returndate is null
order by days_since_borrow desc
limit 10