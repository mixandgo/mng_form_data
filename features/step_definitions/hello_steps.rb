When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see a welcome message$/) do
  expect(page).to have_content("Hello")
end
