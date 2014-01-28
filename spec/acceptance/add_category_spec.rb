require 'spec_helper'

feature 'Add categories' do

  scenario 'create parent category' do
    visit new_category_path
  end

end
