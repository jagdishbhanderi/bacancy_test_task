require 'spec_helper'

describe HomeController do

  describe "GET index" do
    before :each do
      should use_before_action(:authenticate_user!)
    end

    it "get proper response with valid keys and response with status ok" do
      get :index
      uri = URI('http://api.ihackernews.com/page')
      response = Net::HTTP.get_response(uri)
      data = JSON.parse(response.body)
      expect(data).to have_key('nextId')
      expect(data).to have_key('items')
      respond_with :ok
    end

  end
end
