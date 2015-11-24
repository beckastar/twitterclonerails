class TweetsController < ApplicationController
	def create
		Tweet.create(tweettext: params['tweet']['tweettext'], user_id: current_user.id)
		redirect_to user_path(current_user)
	end 


end
