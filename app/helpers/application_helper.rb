module ApplicationHelper
  def activeClass(path)
    "active" if current_page?(path)
    end
end
