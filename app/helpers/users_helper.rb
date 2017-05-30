module UsersHelper
  def set_user_photo(user)
    user.photo.nil? ? asset_path('default_avatar.png') : cl_image_path(user.photo.path, height: 100, width: 100, crop: :fill)
  end

  def set_username(user)
    user.username.nil? ? user.email : user.first_name
  end
end
