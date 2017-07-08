class Admin::AuthorsController < ApplicationController

	layout 'admin'
	
	def index
		@authors = Author.all
	end

	def new
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

	def author_params
		params.require(:author).permit(:name, :sur_name)
	end
end
