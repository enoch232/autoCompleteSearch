class SearchSuggestionsController < ApplicationController
  def index
  	render json: SearchSuggestion.find_terms(params[:term])
  end
end
