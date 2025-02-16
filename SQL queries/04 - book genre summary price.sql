select genre, floor(sum(price)) from books
group by genre