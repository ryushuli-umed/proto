class UserController < ApplicationController

	def new
	end

	def create
		@user = User.new(
			email: params[:email],
			password: params[:password]
			)
		@user.save
		redirect_to("signedup")
	end

	def login_form
	end

	def login
		@user = User.find_by(
			email: params[:email],
			password: params[:password]
			)
		if @user
			redirect_to("loggedin")
		else
			redirect_to("login")
		end
	end

	def loggedin
	end


end
