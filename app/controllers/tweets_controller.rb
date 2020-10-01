class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all 
  end 

  def new
    @tweet = Tweet.new 
  end 

  def create
    # binding.pry
    Tweet.create(tweet_params)
  end


  private
  
  def tweet_params
    params.require(:tweet).permit(:shop_name, :content, :genre_id, :image,
       :prefecture_id, :food_menu, plan_base_menu: [])
  end

end
