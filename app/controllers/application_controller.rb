class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :require_login

  private
    def not_authenticated
      redirect_to login_path, alert: "Veuillez vous connecter pour effectuer cette action."
    end

    def render_404
      render :file => "#{Rails.root}/public/404.html", :status => 404
    end
end
