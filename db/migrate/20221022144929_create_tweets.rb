class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string :text
      t.string :tweet_id

      t.timestamps
    end
  end
end
