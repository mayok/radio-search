# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

#set :output, "/path/to/my/cron_log.log"
set :environment, :production

every 1.day, :at => '11:03' do
  runner "Tasks::Update.execute"
end

every 1.day, :at => '11:29' do
  runner "Tasks::List.execute"
end
