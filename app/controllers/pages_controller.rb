class PagesController < ApplicationController
  def home
    @title = "Home"
    @current_page = "home"
  end

  def about
    @title = "About"
    @current_page = "about"
  end

  def products_page
    @title = "Products"
    @current_page = "products_page"
  end

  def contact
    @title = "Contact"
    @current_page = "contact"
  end

  def admin
    @title = "Admin"
    @current_page = "admin"
  end

end
