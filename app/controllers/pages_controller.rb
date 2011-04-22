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

    @categories = Category.all
    
    if params[:id].blank?
      @products = Product.all.paginate(:page => params[:page])
    else
      @products = Product.find_all_by_category_id(params[:id]).paginate(:page => params[:page])
      @current_cat = Category.find_by_id(params[:id]);
    end  

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
