# Heroku cannot use cron. Need to use Heroku scheduler instead for prod.

set :output, "log/cron_log.log"

every 1.hour do 
  runner "Tweet.pull_recent_tweets", :environment => "development"
end

# Note: This schedule was firing, but failing to call the method.
      # I believe there was an issue with my mac's local ruby versioning.
      # Since I switched to heroku, I dropped the issue, but that is what I would have investigated first.