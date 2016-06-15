class SearchesController < ApplicationController
  def create
  	@searches = Post.all.where(["title LIKE ?", params[:title]]) if params[:title].present?
  	redirect_to searches_path
  end
  def index

  end

end
