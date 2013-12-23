require 'spec_helper'

describe Book do
  context 'seeding yo' do

    let(:blanks){[nil, '']}

    it { should have_valid(:title).when('harry potter', 'game of thrones', 'lord of the rings') }
    it { should_not have_valid(:title).when(*blanks) }

    it { should validate_uniqueness_of(:title) }

    it 'seeds the database' do
      count = Book.count
      Book.seed
      expect(Book.count).to_not eql(count)
    end

    it 'does not duplicate seeds in the database' do
      Book.seed
      count = Book.count
      Book.seed
      expect(Book.count).to eql(count)
    end
  end  
end
