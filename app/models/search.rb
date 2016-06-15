class Search < ApplicationRecord
  def properties
    @properties ||= search_posts
  end
  private
  def search_posts
  	@posts = Post.all
  	@posts = Post.all.where(["title LIKE ?", "%#{title}%"]) if title.present?
  	@posts
  end
end
