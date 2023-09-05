# location: spec/unit/unit_spec.rb
require "rails_helper"

# # Unit Test for Book Model; includes rainy-day test
# RSpec.describe Book, type: :model do
#   subject do
#     described_class.new(title: "Test Book")
#   end

#   it "is valid with valid attributes" do
#     expect(subject).to be_valid
#   end

#   it "is not valid without a name" do
#     subject.title = nil
#     expect(subject).not_to be_valid
#   end
# end

# Unit Test for Updated Book Model
RSpec.describe Book, type: :model do
  subject do
    described_class.new(
      title: "Test Book",
      author: "Generic Name", # New attribute: author
      price: 19.99,       # New attribute: price
      published_date: Date.new(2023, 9, 5) # New attribute: published_date
    )
  end
  
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it "is not valid without an author" do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it "is not valid without a price" do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it "is not valid without a published date" do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end