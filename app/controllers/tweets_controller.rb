class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
		@tweets = Tweet.all
	end


	def create
		@tweet_to_create = Tweet.new(tweet_params)
		if @tweet_to_create.save
			flash.now["success"] = "Tweet Success"
		else 
			flash.now["danger"] = "404: Danger"
		end 

		

		@tweet = Tweet.new

		@tweets = Tweet.all


		render 'new'

	end

	def edit
	end

	def show
	end

	def index
	end

	def tweet_params
		params.require("tweet").permit("content")
    end 
 
end