require "#{Rails.root}/app/models/channel_list"
require "#{Rails.root}/app/models/channel"
require 'net/http'
require 'uri'
require 'json'

class Tasks::List
  def self.execute
    channels = ChannelList.all
    channels.each do |channel|
      uri = URI.parse("http://www.onsen.ag/data/api/getMovieInfo/#{channel.title}")
      json = Net::HTTP.get(uri).gsub(/(callback\(|\)\;)/,"")
      result = JSON.parse(json)

      unless result["type"].nil?
        c = Channel.new
        c.title         = result["title"]
        c.thumbnailPath = result["thumbnailPath"]
        c.personality   = result["personality"]
        c.guest         = result["guest"]
        c.url           = result["url"]
        c.movieCount    = result["count"]

        c.save
      end
    end
  end
end
