Feature: home page functionality
 
  As a user
  When I type in the url for the home page
  I should be at the home page

Scenario: home page
  When I go to ralphs_list home page
  Then I should see "Welcome to Ralphs List!"
