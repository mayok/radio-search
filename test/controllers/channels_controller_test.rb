require 'test_helper'

class ChannelsControllerTest < ActionController::TestCase

  def setup
    @base_title = "Internet Radio Programs"
  end

  test "should get search" do
    get :search
    assert_response :success
    assert_select "title", "Search | #{@base_title}"
  end

end
