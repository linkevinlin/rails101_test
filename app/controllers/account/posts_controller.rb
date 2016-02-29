class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
     @groups = current_user.participated_groups
   end

  def index
    @posts = current_user.posts.order("updated_at DESC")
  end
end
