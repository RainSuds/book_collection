require "rails_helper"

RSpec.describe Book, type: :model do
  context "validations" do
    it "is valid with all attributes" do
      book = Book.new(
        title: "Dune",
        author: "Frank Herbert",
        price: 9.99,
        published_date: Date.new(1965, 8, 1)
      )
      expect(book).to be_valid
    end

    it "is invalid without a title" do
      book = Book.new(
        title: "",
        author: "Frank Herbert",
        price: 9.99,
        published_date: Date.new(1965, 8, 1)
      )
      book.validate
      expect(book.errors[:title]).to include("can't be blank")
    end

    it "is invalid without an author" do
      book = Book.new(
        title: "Dune",
        author: "",
        price: 9.99,
        published_date: Date.new(1965, 8, 1)
      )
      book.validate
      expect(book.errors[:author]).to include("can't be blank")
    end

    it "is invalid without a price" do
      book = Book.new(
        title: "Dune",
        author: "Frank Herbert",
        price: nil,
        published_date: Date.new(1965, 8, 1)
      )
      book.validate
      expect(book.errors[:price]).to include("can't be blank")
    end

    it "is invalid with a negative price" do
      book = Book.new(
        title: "Dune",
        author: "Frank Herbert",
        price: -1,
        published_date: Date.new(1965, 8, 1)
      )
      book.validate
      expect(book.errors[:price]).to include("must be greater than or equal to 0")
    end

    it "is invalid without a published_date" do
      book = Book.new(
        title: "Dune",
        author: "Frank Herbert",
        price: 9.99,
        published_date: nil
      )
      book.validate
      expect(book.errors[:published_date]).to include("can't be blank")
    end
  end
end
