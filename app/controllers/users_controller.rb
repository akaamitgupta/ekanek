class UsersController < ApplicationController
  skip_before_action :authorized, only: [:show_document]

  def profile
    @user = current_user
  end

  def show_upload_file
  end

  def upload_file
    user = current_user
    document = user.documents.create(params.permit(:title, :description, :document))
    document.update({code: get_code_for_document(document)})

    return redirect_to '/profile'
  end

  def show_document
    document = Document.find_by({code: params[:code]})
    redirect_to document.document.url
  end

  private
    def get_code_for_document(document)
      Digest::MD5.hexdigest(document.id.to_s)[0...6]
    end
end