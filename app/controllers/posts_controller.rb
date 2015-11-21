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
    session[:form_params] = params.inspect
    redirect_to new_post_path
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end
end