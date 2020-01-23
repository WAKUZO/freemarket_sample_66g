class PostController < ApplicationController
  def index
    @items = Item.includes(:images).order("created_at DESC").limit(10)
  end
end