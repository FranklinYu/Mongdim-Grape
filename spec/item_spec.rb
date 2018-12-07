require 'rack/test'

require_relative '../app'

describe Mongdim::API do
  include Rack::Test::Methods

  def app
    subject
  end

  it 'works' do
    get '/items'
    expect(last_response).to be_ok
  end
end
