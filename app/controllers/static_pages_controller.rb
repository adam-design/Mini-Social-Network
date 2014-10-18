class StaticPagesController < ApplicationController
	def main_page
		tweet = Tweet.all
		@tweet = Tweet.all
	end

	def about_us
	end

	def contact_us
	end
end
