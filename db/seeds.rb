# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Use idempotent methods to avoid duplicate records when re-running seeds
books = [
	{ title: "The Hobbit", author: "J.R.R. Tolkien", price: 10.99, published_date: Date.new(1937, 9, 21) },
	{ title: "1984", author: "George Orwell", price: 8.99, published_date: Date.new(1949, 6, 8) },
	{ title: "To Kill a Mockingbird", author: "Harper Lee", price: 7.99, published_date: Date.new(1960, 7, 11) },
	{ title: "The Great Gatsby", author: "F. Scott Fitzgerald", price: 9.99, published_date: Date.new(1925, 4, 10) },
	{ title: "Moby Dick", author: "Herman Melville", price: 11.99, published_date: Date.new(1851, 10, 18) }
]

books.each do |attrs|
  Book.find_or_create_by(title: attrs[:title]) do |b|
    b.author = attrs[:author]
    b.price = attrs[:price]
    b.published_date = attrs[:published_date]
  end
end

# Load environment-specific seeds from db/seeds/<environment>.rb if present.
# For example: db/seeds/development.rb, db/seeds/production.rb
env_file = Rails.root.join('db', 'seeds', "#{Rails.env}.rb")
load(env_file) if File.exist?(env_file)