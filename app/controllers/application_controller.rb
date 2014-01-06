class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :load_tweets

  def load_tweets
  	require 'twitter'

	client = Twitter::REST::Client.new do |config|
	  config.consumer_key = 'dqpGRWBecA8axelqmjHOXA'
	  config.consumer_secret = 'lBn4cJ1db2kxA0oZgiRhQr8RdaQinfWpm9qW7WiU4'
	  config.oauth_token = '493229855-bfKejNN5ytlU8fgpzuh64bmQejEfnMfK5ZsiFYG0'
	  config.oauth_token_secret = '8JaAYZep2hCnNjsLtGvMrRnf0E5JQ2pHaowtoQRB0qvZj'
	end  
    #@tweets = client.home_timeline # For this demonstration lets keep the tweets limited to the first 5 available.
  end
end
