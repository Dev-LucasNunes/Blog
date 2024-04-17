class BlogController < ApplicationController

  layout "application_blank"
  # para todas as açoes vai usar esse blak
  def index
    @post = Post.where('publish_date <= ?', Time.zone.now).order("publish_date desc").first
  end
end
