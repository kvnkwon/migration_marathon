class Checkout < ActiveRecord::Base
  belongs_to :book, inverse_of :checkouts
  
  validates_presence_of :book
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :checkout_date
  validates_presence_of :due_date
end
