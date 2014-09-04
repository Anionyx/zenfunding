class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  
 
   protected
 
   def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) << :name
   end

   def after_sign_in_path_for(dead_people)
    stored_location_for(dead_people) ||
      if dead_people.is_a?(User)
        :dead_people
      else
        super
      end
    end
    
end
