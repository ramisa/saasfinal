Ralph's List
============

**Team Members:** Tyler VanNurden, Carissa Chen, Ramisa Faruque

**Project Description:** The goal of this project is to create a website that makes it easy for CU students to sell their textbooks to other students at CU. Lots of CU students get ripped-off when selling back their textbooks to the bookstore, or bookstores online. Not only that, but a big majority of course books are custom editions which typically aren’t bought-back by anyone. CU students are always on campus so exchanging books for cash on campus is ideal. To encourage use, the big push for this will be making it as easy as possible to buy and sell textbooks on this platform because lets face it, we’re lazy. 

MVC Description & its purpose within the app:
----------------------------------------------

**Views**

1. Home page
  * Similar to Rotten Potatoes, the home page will contain a list of all books that are currently for sale by users. This page will have a search bar that allows for searching for a specific book. The search can be done via ISBN, course code, department, title, or author.

2.	Search Results
  * After a user searches for a specific book, they can sort resulting items by price or condition. If a user would like more information on this book or want to purchase it, they will click on that posting.

3.	Book details
  * This view will list all details about the book that were created when the book was published as “for sale”.

4.	Create a new user account
  * If a user would like to purchase or sell a book, they will have to create an account. To avoid ambiguous features and keep things simple and easy, this account will only require your first name, email address and password.

5.	Create a new listing for sale
  * When creating a new listing, the seller will have to specify a few things in order to make it easy for other users to find what they’re looking for. This will be ISBN, the course code that this book was used for including department code (eg: CSCI, MCEN), the book’s title and author.

6.	View your account
  * Users will be able to see their active postings as well as concluded postings.

7.	View Another User’s Account
  * Within this page, you will be able to see other users active and concluded postings.
  
**Controllers**

1. Books
2. Customers


**Models**

1. Books
2. Customers
