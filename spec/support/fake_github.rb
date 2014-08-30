require 'sinatra/base'

class FakeGitHub < Sinatra::Base
  get '/:username.atom' do
    atom_response 200, 'feed_sample.atom'
  end

  private

  def atom_response(response_code, file_name)
    content_type :atom
    status response_code
    File.open(File.dirname(__FILE__) + '/samples/' + file_name, 'rb').read
  end
end
