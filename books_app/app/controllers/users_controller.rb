class UsersController < ApplicationController
  def new
    @user = User.new
    @email = Email.new
    @title = "Sign up"
  end

def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Successfully registered user."
	redirect_to_books_path
    else
      render 'new'
    end
  end

def edit

    @user= current_user
end

def update 
    @user.attributes = params[:user}
    if @user.save
	flash[:notice] = "Successfully updated user."
	redirect_to_books_path
    else
	render :action => 'edit'
    end
end
