class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    
    render :new
  end

end
