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
    @user = User.find_by(id:params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    if @user.save
      flash[:notice] = "ユーザー情報を更新しました！"
      redirect_to("/users/index")
    else
      render("users/edit")
    end
  end

  def destroy
    @user = User.find_by(id:params[:id])
    @user.destroy
    flash[:notice] = "ユーザー情報を削除しました。"
    redirect_to("/users/index")
  end
end
