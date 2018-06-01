class BlogController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def index
    @blogs = Blog.all.order(:id)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = @user.blogs.new(blogs_params)
    if @blog.save
      redirect_to blog_path(@blog)
    else
      render :new
    end
  end


 private

  def blogs_params
    params.require(:blog).permit(:title, :article)
  end

  def set_user
    @user = current_user
  end

end
