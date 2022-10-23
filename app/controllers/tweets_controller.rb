class TweetsController < ApplicationController
  def index
    render plain: "Topical Tweets Api Running..."
  end


  # GET /tweets
  def latest_of_tag
    tag = '#' + params[:hashtag]
    @tweets = Tweet.where(tag: tag)

    render json: @tweets
  end

  # # TODO: DELETE ME
  # def seed
  #   tags_to_search = ['#healthcare', '#nasa', '#opensource']

  #   tags_to_search.each do |hashtag|
  #     # Note: If the tweet includes a photo, a link is appended to the end of the text. We may want to remove this.
  #     @tweets = client.search(hashtag, result_type: "recent", tweet_mode: "extended").take(10)

  #     # Save each tweet to DB
  #     @tweets.each do |tweet|
  #       puts tweet.uri
  #       Tweet.create(
  #         text: tweet.full_text,
  #         tweet_id: tweet.id,
  #         tag: hashtag,
  #         uri: tweet.uri
  #       )
  #     end
  #   end
  # end

  # # TODO: DELETE ME
  # private 
  #   def client
  #     Twitter::REST::Client.new do |config|
  #       config.consumer_key    = Rails.application.credentials.dig(:twitter, :api_key)
  #       config.consumer_secret = Rails.application.credentials.dig(:twitter, :api_secret)
  #     end
  #   end

end
