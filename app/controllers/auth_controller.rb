class AuthController < ApplicationController
  skip_before_action :authorized, only: [:show_signup, :signup, :show_login, :login, :logout]

  def show_signup
  end

  def signup
    user = User.create(params.permit(:name, :email, :password))

    session[:user_id] = user.id
    redirect_to '/profile'
  end

  def show_login
  end

  def login
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      return redirect_to '/profile'
    end

    redirect_to '/login'
  end

  def logout
    session[:user_id] = nil

    redirect_to '/login'
  end

end