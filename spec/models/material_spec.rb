require 'spec_helper'

describe Material do
  let(:ring){ FactoryGirl.create :product }
  let(:silver){ FactoryGirl.build :material, :product => ring }

  it 'require a product and price' do
    silver.product = nil
    silver.type = ''
    silver.valid?.should be_false
  end
end
