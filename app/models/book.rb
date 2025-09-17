class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }, presence: true
  validates :published_date, presence: true

  has_many :user_books, dependent: :destroy
  has_many :users, through: :user_books
end
