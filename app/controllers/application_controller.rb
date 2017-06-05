class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :store_current_location, :unless => :devise_controller?
  before_action :authenticate_user!

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:is_landlord])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :gender, :status, :is_landlord, :description, :income, :has_warrantor, :warrantor_type, :warrantor_income, :phone_number, :birth_year])
  end
  include Pundit

    # Pundit: white-list approach.
    after_action :verify_authorized, except: :index, unless: :skip_pundit?
    after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

    # Uncomment when you *really understand* Pundit!
    # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    # def user_not_authorized
    #   flash[:alert] = "You are not authorized to perform this action."
    #   redirect_to(root_path)
    # end

    # def after_sign_in_path_for(resource)
    #   session["user_return_to"] || root_path
    # end

    def store_current_location
      if request.method == "GET"
        store_location_for(:user, request.url)
      end
    end

    private
    def skip_pundit?
      devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
    end
end
