class Search < ApplicationRecord
  def properties
    @posts = Post.all
  	@posts = Post.all.where(["title LIKE ?", "%#{title}%"]) if title.present?
  	@posts
  end
end
