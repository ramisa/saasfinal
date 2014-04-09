class UsersController < ApplicationController
  def new
    @user = User.new
    @email = Email.new
    @title = "Sign up"
  end

def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
    else
      @title = "Sign up"
      render 'new'
    end
  end
end
