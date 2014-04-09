Feature: User can manually add movie
	As a user
	In order to sell a book
	I would like to be able to post a listing of the book I am trying to sell

Scenario: Add a book to sell
	Given I am on the ralphs_list home page
	When I follow "Add new book"
	Then I should be on ralphs_list postlisting page
	When I fill in "Title" with "Calculus Book"
	When I fill in "Author" with "Stewart"
	And I select "Okay" from "Condition"
	And I fill in "Price" with "30.00"
	And I press "Add Listing"
	Then I should be on the ralphs_list home page
	And I should see "Calculus Book"
