namespace :search_suggestions do
  desc "generate"
  task index: :environment do
  	SearchSuggestion.index_products
  end

	
end