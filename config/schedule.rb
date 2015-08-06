# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

#set :output, "/path/to/my/cron_log.log"
set :environment, :production

# できれば rake task にしたい
job_type :shownMovie, 'cd :path && bin/shownMovie.rb'
job_type :channel, 'cd :path && bin/channel.rb'

# 番組ごとに更新時間違う
every 6.hours do
  shownMovie
  channel
end
