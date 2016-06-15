class PostsController < ApplicationController
  before_action :find_params, only: [:destroy, :update, :edit, :show]
  def index
  	@posts = Post.all
  end
  def new 
  	@post = Post.new
  end
  def create
  	@post = Post.new(post_params)
  	if @post.save
  	  redirect_to root_path
  	else
      render :new
  	end
  end 
  def show
  end
  def edit
  end
  def update
  	@post.update(post_params)
  	redirect_to @post
  end
  def destroy
  	@post.destroy
  	redirect_to root_path
  end
  private
  def post_params 
  	params.require(:post).permit(:title, :description, :price)
  end
  def find_params
  	@post = Post.find(params[:id])
  end
end
