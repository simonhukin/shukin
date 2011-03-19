module ManufacturersHelper

  def manufacturer_image(manufacturer)
    @manufacturer_image = image_tag(manufacturer.image, :alt => manufacturer.name)
  end
end
