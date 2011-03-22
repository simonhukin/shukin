class JavascriptsController < ApplicationController
  # javascripts_controller.rb
  def dynamic_sub_categories
    @sub_categories = SubCategory.find(:all)
  end
end
