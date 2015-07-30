require 'test_helper'

class ChannelTest < ActiveSupport::TestCase
  def setup
    @channel = Channel.new(title: "hogehoge", movieType: "sound", thumbnailPath: "foobar", personality: "piyopiyo")
  end

  test "should be valid" do
    assert @channel.valid?
  end
end
