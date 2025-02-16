select memberid, firstname, lastname, joindate from members
where 
	joindate between (current_date - 92) and current_date
order by joindate