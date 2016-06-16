class SearchSuggestion < ApplicationRecord
  attr_accessible :popularity, :term
  def self.search_term(prefix)
  	suggestions = where("term LIKE ?","#{prefix}_%")
  	suggestions.order("popularity desc").limit(10).pluck(:term)
  end
end
