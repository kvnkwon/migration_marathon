class Categorization < ActiveRecord::Base
  belongs_to :book
  belongs_to :category
  validates_presence_of :book
  validates_presence_of :category
end