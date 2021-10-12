class TweetsController < ApplicationController
  def index
   @tweet= Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    logger.debug"________"

    @tweet = Tweet.new(message: params[:tweet][:message], tdate: params[:tweet][:tdate])
    if @tweet.save
       redirect_to tweets_path  
    else
      render 'new'
    end
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to tweets_path  
  end
  
  def show
    @tweet = Tweet.find(params[:id])
  end
  
  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  def update
    @tweet = Tweet.find(params[:id])
    Tweet.update(message: params[:tweet][:message], tdate:params[:tweet][:tdate])
    redirect_to root_path
  end

end
