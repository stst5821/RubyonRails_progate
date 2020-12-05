class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new(content:params[:content]) # インスタンスを作り、new.html.erbのフォームから入力されたcontentカラムのデータを変数に代入
    @post.save
    redirect_to("/posts/index")
  end
end
