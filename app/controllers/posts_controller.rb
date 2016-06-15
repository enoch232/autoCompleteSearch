class PostsController < ApplicationController
  before_action :find_params, only: [:new, :create, :destroy, :update, :edit]
  def index
  	@posts = Post.all
  end
  def new 
  	@post = Post.new
  end
  def create
  	@post = Post.new(post_params)
  end 
  def show
  end
  def edit
  end
  def update
  end
  def destroy
  	@post.destroy
  	redirect_to root_path
  end
  private
  def post_params 
  	params.require(:posts).permit(:title, :description, :price)
  end
  def find_params
  	@post = Post.find(params[:id])
  end
end
