class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :shop_name
      t.timestamps
    end
  end
end
