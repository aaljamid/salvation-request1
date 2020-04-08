class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        # pass the account information through the paramters
          devise_parameter_sanitizer.permit(:sign_up, keys: [ :name, :street_address, :city, :phone, :role])
          devise_parameter_sanitizer.permit(:account_update, keys: [ :name, :street_address, :city, :phone])
    end
end
