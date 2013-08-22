class SessionsController < ApplicationController

  def new

  end

  def create

    @user = User.find_by email: params[:email]
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "User Signed on Successfully"
      redirect_to users_url
    else
      flash[:error] = "Something went wrong"
      render 'new'

    end

  end

  def destroy
    reset_session
    flash[:notice] = "User successfully logged out"
    redirect_to users_url
  end

end
