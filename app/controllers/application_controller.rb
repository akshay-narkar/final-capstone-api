class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  private

  def item_params
    params.permit(:email, :password, :password_confirmation)
  end
end
