require 'spec_helper'

describe Material do
  let(:silver){ FactoryGirl.build :material }

  it 'should require a name' do
    silver.name = ''
    silver.valid?.should be_false
    expect{ silver.save }.not_to change{ Material.count }.by(1)
  end
end
