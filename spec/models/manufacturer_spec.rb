require 'spec_helper'

describe Manufacturer do
  let(:ryian){ FactoryGirl.build :manufacturer }

  it 'should require a name' do
    ryian.name = ''
    ryian.valid?.should be_false
    expect{ ryian.save }.not_to change{ Manufacturer.count }.by(1)
  end
end
