class UsersController < ApplicationController

	def new
		@user = User.new
		# 

	end

	def create
		User.create(username: params[:user][:username], password: params[:user][:password])
		redirect_to new_user_path
	end

	def show
		@user = User.find(params[:id])
	end
end
