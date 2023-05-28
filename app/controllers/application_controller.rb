class ApplicationController < ActionController::Base
    
    protected
    # Overwriting the sign_out redirect path method
    def after_sign_in_path_for(resource)
        dashboard_path
    end
end
