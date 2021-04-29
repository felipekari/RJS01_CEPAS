class ApplicationController < ActionController::Base

  def authorize_admin!
    unless current_user.admin?
      flash[:error] = "Debes ser administrador para acceder a esta seccion"
      redirect_to root_path
    end
  end

end
