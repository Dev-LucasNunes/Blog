class BlogController < ApplicationController
  def index
    @post = Post.where('publish_date <= ?', Time.zone.now).first
  end
end
