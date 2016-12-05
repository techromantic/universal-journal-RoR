class KeywordsController < ApplicationController

	def index
		@keywords = Kevword.all
	end

	def new 
 		@keyword = Keyword.new
	end 

	def create
		@keyword = Keyword.new(category_params)

		if @keyword.save
			flash[:notice] = "Category was created successfully."
			redirect_to categories_path
		else
			render 'new'
		end 
	end
	def show 
		
	end 

	private
	def category_params
		params.require(:category).permit(:name)
	end
	
end
