Feature: signup page functionality
 
  As a user
  When I click the link to signup for ralphs_list from the home page
  I should be at the signup page
  And I should be able to successfully sign up for ralphs_list.

Scenario: signup page
  Given I am on the ralphs_list home page
  When I follow "Sign up now!"
  Then I should be on ralphs_list signup page
  When I fill in "First Name" with "Tyler"
  And I select "Male" from "Gender"
  And I fill in "Email Address" with "tyler.vannurden@colorado.edu"
  And I fill in "Password" with "test"
  And I fill in "Confirm Password" with "test"
  And I press "Create Account"
  Then I should be on the ralphs_list home page
