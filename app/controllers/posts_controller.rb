class PostsController < ApplicationController
	before_filter :authenticate_user!
  def new
		@post=Post.new()
	end
	def index
  		@posts = Post.all
	end
	def create
		@post = Post.new(params[:post].permit(:title, :text))
    require 'twitter'

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = 'dqpGRWBecA8axelqmjHOXA'
      config.consumer_secret = 'lBn4cJ1db2kxA0oZgiRhQr8RdaQinfWpm9qW7WiU4'
      config.oauth_token = '493229855-bfKejNN5ytlU8fgpzuh64bmQejEfnMfK5ZsiFYG0'
      config.oauth_token_secret = '8JaAYZep2hCnNjsLtGvMrRnf0E5JQ2pHaowtoQRB0qvZj'
    end  
    client.update("jsakhadajk")
  		if @post.save
    		redirect_to @post
  		else
    		render 'new'
  		end
	end
   	def show
  		@post = Post.find(params[:id])
	end

	def edit
  		@post = Post.find(params[:id])
	end

	def update
  		@post = Post.find(params[:id])
 
  		if @post.update(params[:post].permit(:title, :text))
    		redirect_to @post
  		else
    		render 'edit'
  		end
	end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
 
  redirect_to posts_path
end
	private
  		def post_params
    		params.require(:post).permit(:title, :text)
  		end


end
