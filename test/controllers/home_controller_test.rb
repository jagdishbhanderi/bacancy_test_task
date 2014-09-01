require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  before do
    should use_before_action(:authenticate_user!)
  end

  test "should get index page" do
    get :index
    #assigns(:url).should eq("http://api.ihackernews.com/page")
    #response.should render_template :index
  end

end
