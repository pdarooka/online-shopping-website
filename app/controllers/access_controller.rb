class AccessController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize

  def new
    if session[:user_id]
      redirect_to admin_url, notice: "Already logged on"
      return
    end
  end

  def create
    user = User.find_by(name: params[:name])
    if user and (params[:password] == user[:password_digest]) #.authenticate() is for older ruby/bcrypt version, so couldn't use
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, notice: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to shopper_url, notice: "Logged out"
  end
end
