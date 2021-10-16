module FlashHelper
  def flash_message
    return "<p data-flash-target='message' class='border text-center fs-7 p-1 text-success'>#{notice}</p>".html_safe if notice
    return "<p data-flash-target='message' class='border text-center fs-7 p-1 text-danger'>#{alert}</p>".html_safe if alert
  end
end