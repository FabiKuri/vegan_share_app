class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string     :shop_name         , null: false
      t.text       :content           , null: false
      t.integer    :genre_id          , null: false
      t.string    :plan_base_menu    , null: false
      t.integer    :prefecture_id     , null: false
      t.string    :food_menu         , null: false
      t.timestamps
    end
  end
end
