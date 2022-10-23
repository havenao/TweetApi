set :output, "log/cron_log.log"

every 1.minutes do 
  runner "Tweet.pull_recent_tweets", :environment => "development"
end