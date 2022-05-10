class PagesController < ApplicationController
  def index
    @articles=Article.all
  end

  def contact
    @contact=Contact.new
  end

  def about
  end

  def ads
  end
end
