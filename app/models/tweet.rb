class Tweet < ApplicationRecord
  # We search Twitter for recent tweets with specified tags
  # Then we save the tweets to the DB
  def self.pull_recent_tweets
    client = Twitter::REST::Client.new do |config|
      config.consumer_key    = Rails.application.credentials.dig(:twitter, :api_key)
      config.consumer_secret = Rails.application.credentials.dig(:twitter, :api_secret)
    end

    # We can add more tags here:
    tags_to_search = ['#healthcare', '#nasa', '#opensource']

    tags_to_search.each do |hashtag|
      @tweets = client.search(hashtag, result_type: "recent").take(10)

      # Save each tweet to DB
      @tweets.each do |tweet|
        Tweet.create(
          text: tweet.text,
          tweet_id: tweet.id,
          tag: hashtag,
          uri: tweet.uri
        )
      end
    end
  end
end
