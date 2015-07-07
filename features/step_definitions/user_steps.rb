Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I click on the sign up link$/) do
  step %{I click on the login link}
  click_on "Sign up"
end

When(/^I click on the login link$/) do
  click_on "Login"
end

When(/^I sign up for a personal free account$/) do
  fill_in "Email", :with => "john@example.com"
  fill_in "Password", :with => "secret123"
  fill_in "Password confirmation", :with => "secret123"
  click_on "Sign up"
end

When(/^I submit the login form$/) do
  fill_in "Email", :with => "john@example.com"
  fill_in "Password", :with => "secret123"
  click_on "Log in"
end

Then(/^I should see the account registration message$/) do
  message = "A message with a confirmation link has been sent to your "\
    "email address"
  expect(page).to have_content(message)
end

Then(/^I should receive a registration confirmation email$/) do
  step %{"john@example.com" should receive an email}
end

Given(/^I am a registered user$/) do
  create(:user, :email => "john@example.com", :password => "secret123")
end

Then(/^I should see my dashboard$/) do
  expect(page).to have_content("Dashboard")
end
