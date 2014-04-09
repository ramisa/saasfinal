class BooksController < ApplicationController


  def index
    sort = params[:sort] || session[:sort]
    case sort
    when 'title'
      ordering,@title_header = {:order => :title}, 'hilite'
    when 'author'
      ordering,@author_header = {:order => :release_date}, 'hilite'
    end
    @condition = Book.conditions
    @price = Book.price
    
    
    if params[:sort] != session[:sort] or params[:ratings] != session[:ratings]
      session[:sort] = sort

      redirect_to :sort => sort
    end
   

  def new
    # default: render 'new' template
  end

  def create
	
    @book = Book.create!(params[:book])
	if @book.save

    flash[:notice] = "#{@book.title} was successfully created."
    redirect_to books_path
else

	render: new
  end

  def update
    @book.update_attributes!(params[:book])
    flash[:notice] = "#{@book.title} was successfully updated."
    redirect_to books_path(@book)
  end

  def destroy
    @book = book.find(params[:title])
    @book.destroy
    flash[:notice] = "Book '#{@book.title}' deleted."
    redirect_to books_path
  end

end
