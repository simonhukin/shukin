module ApplicationHelper

  def logo
    @logo = image_tag("masthead_V1.0_reflection.png", :alt => "S.Hukin ltd")
  end

  def logo_icon
    @logo_icon = image_tag("icon_logo.gif", :alt => "S.Hukin ltd")
  end

  def facebook_icon
    @facebook_logo = image_tag("icon_facebook.jpg", :alt => "Facebook S.Hukin group")
  end

  def photo_old
    @photo_old = image_tag("shukin.jpg", :alt => "S.Hukin founder - Samuel Hukin c1934")
  end

  def photo_bread
    @photo_bread = image_tag("bread_V2.0.jpg", :alt => "Bread")
  end

  def eight_across_digital_logo
    @eight_across_digital_logo = image_tag("8ad_logo.png", :alt => "eight across digital")
  end

  def customer_services
    @customer_services = image_tag("contact_us_nl.png", :alt => "Customer Services: +44 (0)114 2551397", :id => "customer_services");
  end

  #return a title on a per page basis
  def title
    base_title = "S.Hukin ltd"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def javascript(*files)
    content_for(:head) { javascript_include_tag(*files) }
  end

  def stylesheet(*files)
    content_for(:head) { stylesheet_link_tag(*files) }
  end
end
