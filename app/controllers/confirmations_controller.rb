class ConfirmationsController < ApplicationController
  def create
    @user = User.find_by(email: params[:user][:email].downcase)

    @user.send_confirmation_email! if @user.present? && @user.unconfirmed?
  end
end
