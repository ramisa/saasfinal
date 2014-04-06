Feature: signup page functionality
 
  As a user
  When I type in the url for the signup page
  I should be at the signup page

Scenario: signup page
  When I go to ralphs_list signup page
  Then I should see "RalphsList Sign Up!"
