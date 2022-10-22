class Tweet < ApplicationRecord
  def self.save_search
    puts "Saving Search"
    hashtag = "#healthcare"
    # Todo: If the tweet includes a photo, a link is appended to the end of the text. We want to remove this.
    @tweets = client.search(hashtag, result_type: "recent", tweet_mode: "extended").take(3)
    @tweets.each do |tweet|
      Tweet.create(
        text: tweet.full_text,
        tweet_id: tweet.id,
        tag: hashtag
      )
    end
  end

  private 
    def client
      Twitter::REST::Client.new do |config|
        config.consumer_key    = Rails.application.credentials.dig(:twitter, :api_key)
        config.consumer_secret = Rails.application.credentials.dig(:twitter, :api_secret)
      end
    end
end
