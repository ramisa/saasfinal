Feature: display list of books sorted by different criteria
 
  As a user
  In order to more specificially find the book I am searching for
  I want to be able to sort the books by price and condition

Background: books have been added to database
  
  Given the following movies exist:
  | title                   | author | condition    | price |
  | Saasbook                |        | very good    | 40.00 |
  | Calculus Book           |        | okay         | 30.00 |


Scenario: sort books by increasing order of price
  Given I am on the RalphsList home page
  When I follow "Price"
  Then I should see "Calculus Book" before "Saasbook"


Scenario: sort books in decreasing order of condition
  When I follow "Condition"
  Then I should see "Saasbook" before "Calculus Book"

