class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string     :shop_name         , null: false
      t.text       :content           , null: false
      t.integer    :genre_id          , null: false
      t.integer    :plan_base_menu    , null: false
      t.integer    :prefecture_id     , null: false
      t.integer    :food_menu         , null: false
      t.integer    :user_id           , null: false, foreign_key: true
      t.timestamps
    end
  end
end
