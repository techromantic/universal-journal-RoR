class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(username: params[:session][:username])

		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id 
			flash[:success] = "You have sucessfully logged in."
			redirect_to '/feed', :notice => "Welcome back!"
		else
			flash.now[:danger] = "There was something wrong with your login info."

			render 'new'
		end 
	end

	def destroy 
		session[:user_id] = nil
		redirect_to root_path, :notice => "Till next time."
	end

end
