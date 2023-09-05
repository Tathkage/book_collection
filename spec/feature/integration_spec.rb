# location: spec/feature/integration_spec.rb
require "rails_helper"

# # Integration Test for Title
# RSpec.describe "Creating a book: title only", type: :feature do
# 	scenario "valid inputs" do
# 	  visit new_book_path
# 	  fill_in "book[title]", with: "Book Title"
# 	  click_on "Create Book"
# 	  expect(page).to have_content("Book was successfully created.")
# 	end
# end

# # Integration Test for Rainy-Day Title
# RSpec.describe "Creating a book: empty title only", type: :feature do
# 	scenario "valid inputs" do
# 	  visit new_book_path
# 	  fill_in "book[title]", with: ""
# 	  click_on "Create Book"
# 	  expect(page).to have_content("1 error prohibited this book from being saved:")
# 	end
# end

# Integration Test for Author
RSpec.describe "Creating a book: Author Check", type: :feature do
	scenario "valid inputs" do
		visit new_book_path
		fill_in "book[title]", with: "Book Title"
		fill_in "book[author]", with: "Generic Name" # New input field for author
		fill_in "book[price]", with: 19.99          # New input field for price
		fill_in "book[published_date]", with: "2023-09-05" # New input field for published_date
		click_on "Create Book"
		expect(page).to have_content("Generic Name") # Check for author
	end
end

# Integration Test for Price
RSpec.describe "Creating a book: Price Check", type: :feature do
	scenario "valid inputs" do
	  visit new_book_path
	  fill_in "book[title]", with: "Book Title"
	  fill_in "book[author]", with: "Generic Name" # New input field for author
	  fill_in "book[price]", with: 19.99          # New input field for price
	  fill_in "book[published_date]", with: "2023-09-05" # New input field for published_date
	  click_on "Create Book"
	  expect(page).to have_content("19.99")        # Check for price
	end
end

# Integration Test for Published Date
RSpec.describe "Creating a book: Date Check", type: :feature do
	scenario "valid inputs" do
	  visit new_book_path
	  fill_in "book[title]", with: "Book Title"
	  fill_in "book[author]", with: "Generic Name" # New input field for author
	  fill_in "book[price]", with: 19.99          # New input field for price
	  fill_in "book[published_date]", with: "2023-09-05" # New input field for published_date
	  click_on "Create Book"
	  expect(page).to have_content("2023-09-05")   # Check for published date
	end
end
