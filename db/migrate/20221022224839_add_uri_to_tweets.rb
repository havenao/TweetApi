class AddUriToTweets < ActiveRecord::Migration[7.0]
  def change
    add_column :tweets, :uri, :text
  end
end
