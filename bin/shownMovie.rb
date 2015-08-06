require 'net/http'
require 'uri'
require 'json'

uri = URI.parse('http://www.onsen.ag/api/shownMovie/shownMovie.json')
json = Net::HTTP.get(uri)
result = JSON.parse(json)
puts result
