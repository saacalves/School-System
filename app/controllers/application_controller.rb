class ApplicationController < ActionController::Base
  layout :layout_by_resource

  protected
  def after_sign_in_path_for(resource_or_scope)
    admin_root_path || stored_location_for(resource_or_scope)
  end

  private

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
