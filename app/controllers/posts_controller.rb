class PostsController < ApplicationController
  before_action :set_post, only: :show

  def index
    @posts = Post.all
  end
  
  def show
  end

  def new
  end

  def create
    @post = Post.new
    @post[:title] = params[:title]
    @post[:description] = params[:description]
    @post.save
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit(:title, :description))
    redirect_to post_path(@post)
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end
end