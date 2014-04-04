Feature: User can manually add movie
	As a user
	In order to sell a book through my account
	I woul dlike to be able to post a listing of the book I am trying to sell

Scenario: Add a book to sell
	Given I am on the RalphsList home page
	And I have signed in to my account
	When I follow "Add a listing"
	Then I should be on the create New Listing page
	When I fill in "Title" with "Calculus Book"
	And I select "okay" from "Condition"
	And I fill in "Price" with "30.00"
	And I press "Add Listing"
	Then I should be on the RalphsList home page
	And I should see "Calculus Book"
