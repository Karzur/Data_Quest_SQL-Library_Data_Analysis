/*
BOOKS TABLE
BookID,Title,Author,Genre,PublishedYear,Price
1,Focused fault-tolerant forecast,Luis Howard,Fantasy,1996,56.01
*/

create table books (
	BookID integer
	,Title text
	,Author text
	,Genre text
	,PublishedYear integer
	,Price float
)


/*
BORROWEDBOOKS TABLE
BorrowID,MemberID,BookID,BorrowDate,ReturnDate
1,72,37,2020-06-23,2020-07-23
*/

create table borrowedbooks (
	BorrowID integer
	,MemberID integer
	,BookID integer
	,BorrowDate date
	,ReturnDate date
)


/*
MEMBERS TABLE
MemberID,FirstName,LastName,JoinDate,MembershipType
1,Christopher,Foley,2019-02-16,Premium
*/

create table members (
	MemberID integer
	,FirstName text
	,LastName text
	,JoinDate date
	,MembershipType text
)