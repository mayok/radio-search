require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  def setup
    @text = channels(:one)
  end

  test "layout search links" do
    get root_path
    assert_template 'channels/search'
    assert_select "a[href=?]", root_path
    assert_select "input[type=?]", "text"
    assert_select "input[type=?]", "submit"
  end

  test "layout result links" do
    get result_path
    assert_template 'channels/result'
    assert_select "a[href=?]", root_path
    #assert_select "p", "Not found"
  end
end
