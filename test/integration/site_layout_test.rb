require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'channels/search'
    assert_select "a[href=?]", root_path
    assert_select "input[type=?]", "text"
    assert_select "input[type=?]", "submit"
  end
end
