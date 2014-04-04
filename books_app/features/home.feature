Feature: home page functionality
 
  As a user
  When I type in the url for the home page
  I should be at the home page

Background: 
  
  Given I type in the url for the home page

Scenario: home page
  When I follow "
  Then I should be on "ralphs_list/home"
