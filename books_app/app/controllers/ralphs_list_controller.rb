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

end