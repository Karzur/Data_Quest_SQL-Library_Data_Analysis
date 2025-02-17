alter table books
add price_estimate varchar(32);

update books
set price_estimate = 'Low'
where price < 10;

update books
set price_estimate = 'Medium'
where price >= 10 and price < 30;

update books
set price_estimate = 'High'
where price >= 30;

select * from books