require 'spec_helper'

describe Item do
  let(:ring){ FactoryGirl.create :product }
  let(:silver){ FactoryGirl.create :material }
  let(:ornamentic){ FactoryGirl.create :item, :product => ring, :material => silver }

  before do
    # Save all to database
    ring.save; silver.save; ornamentic.save
  end

  it 'should belong to product' do
   ornamentic.product = nil
     ornamentic.valid?.should be_false
     # Here we expect that existed entry couldn't be updated 
     expect{ ornamentic.save }.to_not change{ ornamentic.product }.to(nil)
   # Here we expect that created entry shouldn't be saved
   plain = FactoryGirl.build :item, :product => nil, :material => silver
     expect{ plain.save }.to_not change{ Item.count }.by(1)
  end

  it 'should have a material' do
   ornamentic.material = nil
     ornamentic.valid?.should be_false
     expect{ ornamentic.save }.to_not change{ ornamentic.material }.to(nil)
   plain = FactoryGirl.build :item, :product => ring, :material => nil
     expect{ plain.save }.to_not change{ Item.count }.by(1)
  end

  it 'should be destroyed with a product' do
    expect{ ring.destroy }.to change{ Item.count }.by(-1)
  end
end
