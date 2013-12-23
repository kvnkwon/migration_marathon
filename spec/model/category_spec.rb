require 'spec_helper'

describe Category do

  let(:blanks){[nil, '']}

  it { should have_valid(:name).when('action', 'adventure', 'mystery') }
  it { should_not have_valid(:name).when(*blanks) }

  it { should validate_uniqueness_of(:name) }
  
  context 'seeding yo' do
    it 'seeds the database' do
      count = Category.count
      Category.seed
      expect(Category.count).to_not eql(count)
    end

    it 'does not duplicate seeds in the database' do
      Category.seed
      count = Category.count
      Category.seed
      expect(Category.count).to eql(count)
    end
  end  
end
