module FlatsHelper
  def set_flat_image(flat)
    flat.photos.size == 0 ? cl_image_tag(asset_path('default_flat.png')) : cl_image_tag(flat.photos.first.path, :alt => "banner_image", height:300, width: 720, crop: :fill)
  end

  def set_number(string)
    a = string.split
    "#{a[1]} (#{a[0]})"
  end
end
