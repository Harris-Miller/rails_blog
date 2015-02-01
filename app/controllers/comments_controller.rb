class CommentsController < ApplicationController
  def index
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comments_params)
    redirect_to article_path(@article)
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def comments_params
    params.require(:comment).permit(:commenter, :body)
  end
end
