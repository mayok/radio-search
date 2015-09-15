require "#{Rails.root}/app/models/channel_list"
require 'net/http'
require 'uri'
require 'json'

class Tasks::Update
  def self.execute
    uri = URI.parse('http://www.onsen.ag/api/shownMovie/shownMovie.json')
    json = Net::HTTP.get(uri)
    channels = JSON.parse(json)
    channels["result"].each do |channel|
      if ChannelList.find_by(title: "#{channel}").nil?
        cl = ChannelList.new
        cl.title = channel
        cl.save
      end
    end
  end
end
