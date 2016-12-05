class KeywordsController < ApplicationController

	def index
		@keyword = Keyword.all
	end

	def new 
 		@keyword = Keyword.new
	end 

	def create
		@keyword = Keyword.new(keyword_params)

		if @keyword.save
			flash[:notice] = "Category was created successfully."
			redirect_to keyword_path
		else
			render 'new'
		end 
	end
	def show 
		
	end 

	private
	def keyword_params
		params.require(:keyword).permit(:name)
	end
	
end
