require "net/http"

class HomeController < ApplicationController
  before_action :authenticate_user!

  # getting pages from ihackernews
  def index
    url = "http://api.ihackernews.com/page"
    resp = Net::HTTP.get_response(URI.parse(url))
    data = JSON.parse(resp.body)
    @result_data =  Kaminari.paginate_array(data["items"]).page(params[:page]).per(10)
  end
end
