class UsersController < ApplicationController

  def profile
    @user = current_user
  end

  def show_upload_file
  end

  def upload_file
    user = current_user
    document = user.documents.create(params.permit(:title, :description, :document))

    return redirect_to '/profile'
  end

end