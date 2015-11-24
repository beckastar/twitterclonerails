class SessionsController < ApplicationController

	def create
		current_user = User.find_by_username_and_passwd(params['user']['username'], params['user']['password'])		
		if current_user
			login(current_user)
			redirect_to user_path(current_user)
		else
			render "session/new"
		end
	end
end
