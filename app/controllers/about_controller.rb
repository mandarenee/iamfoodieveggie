class AboutController < ApplicationController
  def index
    @comments = Comment.all
  end

  def contact
  	
  end
end