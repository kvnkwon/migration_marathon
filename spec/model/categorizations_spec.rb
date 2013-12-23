require 'spec_helper'

describe Categorization do

  it { should validate_presence_of(:book) }
  it { should validate_presence_of(:category) }
  it { should belong_to(:book) }
  it { should belong_to(:category) }

end
