Feature: display more info of selected book
 
  As a user
  In order to find more infomration on a book I may want to buy
  I would like to be able to click on the osting to go to a page that has more details

Background: books have been added to database
  
  Given the following movies exist:
  | title                   | author | condition |
  | Saasbook                |        | okay      |
  | Calculus Book           |        | very good |
 

  And I am on the RalphsList home page

Scenario: get more info on Saasbook
  When I follow "Saasbook"
  Then I should be on Saasbook More Info page
  And I should see "price"


