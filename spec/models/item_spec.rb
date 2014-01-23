require 'spec_helper'

describe Item do
  let(:ring){ FactoryGirl.create :product }
  let(:ornamentic){ FactoryGirl.build :item, :product => ring }

  it 'require a product and price' do
    ornamentic.product = nil
    ornamentic.valid?.should be_false
  end
end
