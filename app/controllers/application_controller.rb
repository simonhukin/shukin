class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  $baking_categories = [99,101,103,105,107,109,110,113,114,115,116,118,119,120,121,123,124,125,127,128,130,131,133,135,137]
  $dairy_categories = [107,110,113,127]
  $decorating_categories = [102,103,107,109,111,112,115,119,121,123]
  $fats_oils_categoies = [101,120,127,136]
  $fruit_nuts_categoies = [104,118,119,128]
  $non_edible_categoies = [100,102,108,117,122,129,136]
  $other_consumables_categoies = [106,131,132,133,134]
  $savoury_categoies = [105,134,104]
  $sweet_categoies = [103,104,107,109,110,112,118,119,123,125,126,135]

end
