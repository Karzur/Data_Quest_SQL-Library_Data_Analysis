# DATA QUEST SQL - Library data analysis

This is solution to one of "Data Quests" from [Data Acolyte](https://www.linkedin.com/company/data-acolyte-discord/) group. Event has ended on 16.02.2025. Don't be shy and join us in next challenge!  
[Data Acolyte](https://www.linkedin.com/company/data-acolyte-discord/) is a community for all data enthusiasts, from beginners to experts where they can learn and grow together. You're welcome to join on Discord any time!

Discord: https://discord.gg/fwrFmgYNH6  
LinkedIn: https://www.linkedin.com/company/data-acolyte-discord/

## Table of contents
- [Tasks description](#tasks-description)
- [My process](#my-process)
  - [Built with](#built-with)
  - [What I learned](#what-i-learned)
  - [Useful resources](#useful-resources)
- [Author](#author)

## Tasks description

Standard tasks:
1. Load data to database - import CSV files to tables Books, Members, BorrowedBooks.
2. Calculate the number of days each book was borrowed - include unreturned books.
3. Find all customers who joined in the last three months and sort them by joining date.
4. Group books by genre and calculate the total price of books in each genre.
5. Find the number of books borrowed by customers in each membership category - see who is the most active.
6. List all books along with the name and surname of the customer who borrowed them.
7. Find customers who haven't returned their books.
8. Use CTE to find the total number of books each member has checked out, and filter for customers who have checked out fewer than 3 books.
9. Add a column classifying books by price:  
"Low" (Price < 10)  
"Average" (10 ≤ Price < 30)  
"High" (Price ≥ 30)
10. Create a customer classification report:
"New" - if they joined within the last year.
"Regular" - if they joined erlier than within last year.
11. Find customers who borrow books regularly - e.g. at least once every two months.
12. Find books that haven't been returned the longest and sort them by number of days since borrow date.

Additional tasks:
1. Additionally to task 5 find first names and last names for top 10 people.
2. Identify clients who kept books for at least 3 months in a row in last year.

## My process

### Built with

- PostgreSQL
- CTE

### What I learned

1. How to setup Git for projects outside VSC
2. Revised basic queries
3. 

### Useful resources

- [CTE basics](https://www.sqlpedia.pl/cte-common-table-expressions/) - Website that explains what are common table expressions and how to use them on simple examples

## Author

- LinkedIn - [Kacper Karczewski](https://www.linkedin.com/in/kacper-karczewski/)