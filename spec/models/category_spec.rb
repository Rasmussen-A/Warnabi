require 'spec_helper'

describe Category do
  let(:replica){ FactoryGirl.create :category, :name => 'replica' }
  let(:ring){ FactoryGirl.create :product, :category => replica }
  let(:wards){ replica.subcategories.create :name => 'Wards' }

  it 'should not be destroyed if it has products' do
    ring.category.should == replica
    expect{ replica.destroy }.to raise_error(ActiveRecord::DeleteRestrictionError)
    ring.destroy
    expect{ replica.destroy }.to change{ Category.count }.by(-1)
  end

  it 'should be able to create subcategories' do
    wards.in?(replica.subcategories).should be_true
    ring.category = wards; ring.save
    ring.category.parent.should == replica
  end

  it 'should not be destroyed if it has subcategories with a products' do
    ring.category = wards; ring.save
    expect{ wards.destroy }.to raise_error(ActiveRecord::DeleteRestrictionError)
    ring.destroy
    expect{ replica.destroy }.to raise_error(ActiveRecord::DeleteRestrictionError)
    wards.destroy
    expect{ replica.destroy }.to change{ Category.count }.by(-1)
  end
end
