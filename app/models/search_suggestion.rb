class SearchSuggestion < ActiveRecord::Base
  
  def self.find_terms(prefix)
    suggestions = Post.where("title like ?", "#{prefix}_%")
    suggestions.pluck(:title)
  end
end