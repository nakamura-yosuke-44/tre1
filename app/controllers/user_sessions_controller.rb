class UserSessionsController < ApplicationController
  def new; end
  
  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to(posts_path, success: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render :new
    end
  end

  def destroy
    logout
    redirect_to(login_path, success: 'Logged out!')
  end
end