class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @recent_post = Post.where(author_id: params[:id]).order(created_at: :desc).limit(3)
  end
end
