require 'memory'
require 'webmock/rspec'

require_relative 'support/webmock'
require_relative 'support/fake_github'

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
end
