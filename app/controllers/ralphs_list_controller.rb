class RalphsListController < ApplicationController
  def home
  	@books = Book.all
  end

  def help
  end

  def about
  end
  
  def contact
  end
  
  def search
  
  phrase = params[:search] ? params[:search] : ""
  @results = Book.search(phrase, :user => @user)

  if phrase == ""
    flash.now[:warning] = %q{
      Sorry to tell you, but you're going to
      have to actually search for something
    }
  elsif @results.size == 0
    flash.now[:notice] = %q{
      Hmm, didn't find anything. Give it
      another shot, maybe?
    }
  end
end
end


