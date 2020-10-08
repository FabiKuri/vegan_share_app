class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]
  before_action :basic_auth

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end 

  def new
    @tweet = Tweet.new 
  end 

  def create
    # binding.pry
    Tweet.create(tweet_params)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def edit
  end 

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
  end 

  def show 
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
  end 

  def search
    @tweets = Tweet.search(params[:keyword])
  end


  private
  
  def tweet_params
    params.require(:tweet).permit(:shop_name, :content, :genre_id, :image,
       :prefecture_id, :food_menu, plan_base_menu: []).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

end
