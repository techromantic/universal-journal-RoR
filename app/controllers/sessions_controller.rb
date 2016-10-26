class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)

		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id 
			flash[:success] = "You have sucessfully logged in."
			redirect_to user_path(user), :notice => "Welcome back!"
		else
			flash.now[:danger] = "There was something wrong with your login info."

			render 'new'
		end 
	end

	def destroy 
		redirect_to root_path, :notice => "Till next time."
	end

end
