module SessionHelper
  def user_session
    link = ''
    if user_signed_in?
      link << link_to("Log out", destroy_user_session_path, method: "delete", class: "mx-1 no-decoration") 
    else
      link << link_to("Sign up", new_user_registration_path, class: "mx-1 no-decoration")
      link << link_to("Log in", new_user_session_path, class: "mx-1 no-decoration")
    end
    return link.html_safe
  end
end
