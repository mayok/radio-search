require 'net/http'
require 'uri'
require 'json'

uri = URI.parse('http://www.onsen.ag/data/api/getMovieInfo/yryr')
json = Net::HTTP.get(uri).gsub(/(callback\(|\)\;)/,"")
result = JSON.parse(json)
puts result

# ここでデータベースに格納する
#result["title"]
#result["thumbnailPath"]
#result["personality"]
#result["guest"]
#result["url"]
#result["count"]
