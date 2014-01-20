require 'spec_helper'

describe Product do
  let(:ring){ FactoryGirl.build :product }
  
  it 'not valid without name and description' do
    ring.name = ''
    ring.description = ''
    ring.valid?.should be_false
  end
end
