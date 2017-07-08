class Admin::BooksController < ApplicationController

	layout 'admin'
	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			if params[:images]
				params[:images].each { |image|
					@author.pictures.create(image: picture)
				}
			end
			redirect_to root_path
		else
			render 'new'
		end

	end

	private
	def book_params
		params.require(:book).permit(:title, :author_id, :category_id, :desc, :image_id, :user_id)
	end
end
