class SearchesController < ApplicationController
  def index
  	@searches = Search.all.order("created_at DESC")
  end
  def new
  	@search = Search.new
  end
  def create
  	@search = Search.new(search_params)
  	if @search.save
  	  redirect_to @search
  	else
  	  render :new
  	end
  end
  def show
  	@search = Search.find(params[:id]).order("created_at DESC")
  end
  private
  def search_params
  	params.require(:search).permit(:title)
  end
end
