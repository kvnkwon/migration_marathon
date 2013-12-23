class Book < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :title
  
  has_many :checkouts, inverse_of: :book
  has_many :categorizations, inverse_of: :book

  def self.seed
    books.each do |book_params|
      Book.create(book_params)
    end
  end

  def self.books
    [
      {author: 'bob', title: "bob's jungle book"},
      {author: 'alice', title: "alice's jungle book"},
      {author: 'kevin', title: "kevin's jungle book"}
    ]
  end
end
