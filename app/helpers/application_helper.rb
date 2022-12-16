module ApplicationHelper
  def flash_background_color(type)
    case type
    when 'notice'
      :green
    when 'alert'
      :red
    end
  end
end
