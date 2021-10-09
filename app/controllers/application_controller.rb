class ApplicationController < ActionController::Base

  protected

  def devise_parameter_sanitizer
    User::ParameterSanitizer.new(User, :user, params)
  end
end
