class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  $baking = [103,104]
  $baking_categories = [105,106]
  $confectionary_categories = [107,108]
  $whole_food_categories = [109,110]
  $dried_fruits_categoies = [111,120]

end
