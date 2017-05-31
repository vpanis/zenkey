module UsersHelper
  def set_user_photo(user)
    user.photo.nil? ? asset_path('default_avatar.png') : cl_image_path(user.photo.path, height: 100, width: 100, crop: :fill)
  end

  def set_username(user)
    user.first_name.nil? ? user.email : user.first_name
  end

  def set_fullname(user)
    (user.first_name.nil? || user.last_name.nil?) ? user.email : "#{user.first_name} #{user.last_name}"
  end

  def set_grade(user, flat)
    grade = (user.income + (user.warrantor_income * 0.5)) / (flat.rent + flat.rental.costs)
    grade = ((grade * 2).round) / 2
  end
end
