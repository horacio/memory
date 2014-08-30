RSpec.configure do |configuration|
  configuration.before(:each) do
    stub_request(:get, /github.com/).to_rack(FakeGitHub)
  end
end
