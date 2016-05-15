Given(/^is logged in as "([^"]*)"$/) do |user|
  @admin_user = User.create(username: username, password: password, admin: 1)
end

Given(/^I am an admin user$/) do
  @admin_user = User.create(username: "admin", password: "1234", admin: 1)
end

Given(/^I am on the admin page$/) do |page|
  pending
end

Then(/^I click on the Log in to admin page button$/) do
  click_link_or_button 'Log in to admin page'
end

Given(/^there is already an existing restaurant$/) do
  @restaurant = Restaurant.create(name: "Flying Fish",
  description: "A cheap sushi place, perfect for lunch",
  address: "Valhallavägen 73")
end
