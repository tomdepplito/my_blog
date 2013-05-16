class PagesController < ApplicationController
  def landing
    @blogs = Blog.all
  end
end
