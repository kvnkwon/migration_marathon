class Category < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :categorizations, inverse_of: :category


  def self.seed
    categories.each do |cate_params|
      Category.create(cate_params)
    end
  end

  def self.categories
    [
      {name: 'action'},
      {name: 'adventure'},
      {name: 'mystery'}
    ]
  end
end
