module UsersHelper
  def set_user_photo(user)
    user.photo.nil? ? asset_path('default_avatar.png') : cl_image_path(user.photo.public_id, height: 100, width: 100, crop: :fill)
  end

  def set_username(user)
    user.first_name.nil? ? user.email : user.first_name
  end

  def set_fullname(user)
    (user.first_name.nil? || user.last_name.nil?) ? user.email : "#{user.first_name} #{user.last_name}"
  end

  def set_grade(user, flat)

    if (flat.rent + flat.rental_costs) == 0
      grade = 0
    else
      grade = (user.income + (user.warrantor_income * 0.5)) / (flat.rent + flat.rental_costs)
      grade = ((grade * 2).round).fdiv(2)
      if grade >= 5
        grade = 5
      elsif grade <= 0
        grade = 0
      else
        grade
      end
      grade
    end
  end
end
