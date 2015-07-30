require 'test_helper'

class ChannelTest < ActiveSupport::TestCase
  def setup
    @channel = Channel.new(title: "hogehoge", url: "fuga", thumbnailPath: "foobar", personality: "piyo", guest: "piyo", movieCount: "123")
  end

  test "should be valid" do
    assert @channel.valid?
  end

  test "title should be present" do
    @channel.title = "    "
    assert_not @channel.valid?
  end
end
