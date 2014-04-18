class UsersController < ApplicationController

def new
    @user = User.new
end

def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Ralphs List!"
      redirect_to @user
    else
      render 'new'
    end
 end

def edit
    @user= current_user
end

def show
  @user = User.find(params[:id])
end

def update
	@user.attributes = params[:user]
    if @user.save
		flash[:notice] = "Successfully updated user."
		redirect_to_books_path
    else
		render :action => 'edit'
    end
end

def all
  @users = User.all
end

private

  def user_params
    params.require(:user).permit(:name, :email, :gender, :age, :password, :password_confirmation)
  end

end


