module RequestHelpers
  module Helpers
    
  end

  RSpec.configure do |config|
    config.include RequestHelpers::Helpers, :type => :acceptance, :example_group => {
      :file_path => config.escaped_path(%w[spec acceptance])}
  end
end
