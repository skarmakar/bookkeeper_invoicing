class SessionsController < ApplicationController
  def new
    @title= "Sign in"
  end

  def create
    user = User.authenticate(params[:session][:email],
                           params[:session][:password]  )
    if user.nil?

      flash.now[:error] = "Invalid Email/password combination"
      @title = "Sign in" 
      render 'new'

 else
sign_in user
redirect_back_to (user) #redirect to the profile page or the page the usser trying to access

  #Handle
  end 
  end

def destroy
  sign_out 
  redirect_to signin_path
end
end
