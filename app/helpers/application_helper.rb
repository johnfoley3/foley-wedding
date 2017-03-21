module ApplicationHelper
  def class_string(css_map)
    css_map.find_all(&:last).map(&:first).join(" ")
  end

  def nav_classes_for(path)
    class_string("nav-link": true, "active": current_page?(path))
  end
end
