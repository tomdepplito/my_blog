class BlogController < ApplicationController
  before_filter :authenticate_user!, :admin?, :except => [:index, :show]

  def index
    @blogs = Blog.paginate(:page => params[:page]).order("created_at DESC")
    @blog_count = 0
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @new_blog = Blog.new
  end

  def create
    @new_blog = Blog.new(params[:blog])
    redirect_to blog_path(@new_blog) if @new_blog.save!
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(params[:blog])
      redirect_to blog_path(@blog)
    end
  end

  def admin?
    redirect_to blog_index_path unless current_user.admin
  end
end
