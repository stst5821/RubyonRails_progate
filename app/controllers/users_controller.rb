class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def signup
    @user = User.new(name: params[:name], email: params[:email])
  end

  def create
    @user = User.new(name: params[:name], email: params[:email])
    if @user.save
    flash[:notice] = "ユーザー登録が完了しました！"
    redirect_to("/users/index")
    else
      render("users/signup")
    end
  end

  def edit
    @user = User.find_by(id:params[:id])
  end

  def update

  end
end
