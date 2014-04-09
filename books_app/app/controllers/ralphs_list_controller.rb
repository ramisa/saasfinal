class RalphsListController < ApplicationController

  def home
  	@books = Book.all
  end

  def signup
  end

  def postlisting

  end

  def myaccount
  end

  def new
    # default: render 'new' template
  end

  def create
    @book = Book.create!(book_params)
	

    flash[:notice] = "#{@book.title} was successfully created."
    redirect_to '/ralphs_list/home'
  end

  def update
    @book.update_attributes!(params[:book])
    flash[:notice] = "#{@book.title} was successfully updated."
    redirect_to book_path(@book)
  end

private

  	def book_params
  	params.require(:book).permit(:title, :author, :condition, :price)
  end

end
