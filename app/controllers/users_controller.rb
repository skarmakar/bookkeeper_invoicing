class UsersController < ApplicationController
  def new
  	@user = User.new
  	@title = "Sign Up"
  end

  def create
  	@user=User.new(params[:user])
  	if @user.save 
  		flash[:success] = "Welcome to Sample App"
  		redirect_to user_path(@user)
  	else
  	@title = "Sign up"
  	render 'new'
  end
end
end
