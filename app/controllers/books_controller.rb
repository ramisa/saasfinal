class BooksController < ApplicationController

  def index
   @books = Book.all
  end

  def postlisting

  end

  def new
    # default: render 'new' template
  end

  def create
    @book = Book.create!(book_params)

    flash[:notice] = "#{@book.title} was successfully created."
    redirect_to '/'
  end

  def update
    @book.update_attributes!(book_params)
    flash[:notice] = "#{@book.title} was successfully updated."
    redirect_to book_path(@book)
  end

private

  def book_params
   	params.require(:book).permit(:title, :author, :condition, :price)
  end

end
