Feature: Home page

  Scenario: Viewing application's home page
    Given there's a post friend "My first" with "Hello, BDD World!" content
    When I am on the homepage
    Then I Should see the "My first" post