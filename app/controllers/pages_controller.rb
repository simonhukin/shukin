class PagesController < ApplicationController
  def home
    @title = "Home"
    @current_page = "home"
  end

  def about
    @title = "About"
    @current_page = "about"
  end

  def products
    @title = "Products"
    @current_page = "products"
  end

  def contact
    @title = "Contact"
    @current_page = "contact"
  end

end
