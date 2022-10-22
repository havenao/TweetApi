class AddTagToTweets < ActiveRecord::Migration[7.0]
  def change
    add_column :tweets, :tag, :string
  end
end
