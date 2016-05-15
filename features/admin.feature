Feature: As the restaurant owner
  So that my customers can pick up their orders
  I would like to put a restaurant description, and address on my website.

Background:
  Given I am an admin user

Scenario: Allows the owner to access an admin page
  Given I am on the "admin page"
  And I fill in "username" with "admin"
  And I fill in "password" with "1234"
  And I click on the Log in to admin page button
  Then I should see "Welcome administrator"
  And I should see "Restaurant Name"


Scenario: Allows the owner to add restaurant name, description and address.
  Given I am on the "admin page"
  And I fill in "username" with "admin"
  And I fill in "password" with "1234"
  And I click on the Log in to admin page button
  And I fill in "restaurant_description" with "A cheap sushi place, perfect for lunch"
  And I fill in "restaurant_address" with "Valhallavägen 73"
  And I click on the "update_restaurant" button
  Then show me the page
  Then I should see "You have updated restaurant information for restaurant Flying Fish"

  Scenario: Allows the owner to modify restaurant name, description and address.
    Given I am on the "admin page"
    And I fill in "username" with "admin"
    And I fill in "password" with "1234"
    And I click on the Log in to admin page button
    And there is already an existing restaurant
    And I fill in "restaurant_description" with "A high-end sushi place"
    And I fill in "restaurant_address" with "Danderydsgatan 18"
    And I click on the "update_restaurant" button
    Then I should see "You have updated restaurant information for restaurant Flying Fish"
