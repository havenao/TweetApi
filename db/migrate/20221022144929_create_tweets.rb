class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.text :text
      t.text :tweet_id

      t.timestamps
    end
  end
end
