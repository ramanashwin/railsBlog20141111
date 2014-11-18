class PostsController < ApplicationController
  def index 
   # @content_first = "This is sample text for the blog";
   # @content_second = "This is also sample text for the blog";
   @posts = Post.all   
  end
    
  def edit
    @post = Post.find(params[:id])
  end
    
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => "Your post has been created"
    else
      render "new"
    end
  end
  
  def new
    @post = Post.new
    @category = Category.all
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to post_path, :notice => "Your post has been updated"
    else
      render "edit"
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def destroy
     @post = Post.find(params[:id])
     @post.destroy
     redirect_to posts_path, :notice => "your post has been deleted"
  end
end
