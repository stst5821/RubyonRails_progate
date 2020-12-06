class PostsController < ApplicationController
  
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new(content:params[:content])
  end

  def create
    @post = Post.new(content:params[:content]) # インスタンスを作り、new.html.erbのフォームから入力されたcontentカラムのデータを変数に代入
    if @post.save
    flash[:notice] = "投稿を作成しました"
    redirect_to("/posts/index")
    else
    render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]

    # バリデーション通ってsaveできたらindexにリダイレクト。saveできなかったら再度、edit画面にリダイレクトさせる
    if @post.save
    flash[:notice] = "投稿を編集しました"
    redirect_to("/posts/index")
    else
    render("posts/edit") # editアクションを経由せずに、直接editビューを表示させる。こうすることで、バリデーションで弾かれても入力したデータが消えない。
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end
end
