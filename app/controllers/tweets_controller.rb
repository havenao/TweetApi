class TweetsController < ApplicationController
  def index
    render plain: "Topical Tweets Api Running..."
  end

  # GET /tweets
  def latest_of_tag
    tag = '#' + params[:hashtag]
    @tweets = Tweet.where(tag: tag).order(created_at: :desc).limit(10)

    render json: @tweets
  end
end
