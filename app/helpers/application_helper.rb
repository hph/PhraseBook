module ApplicationHelper
  def active_if(condition)
    condition ? 'active' : ''
  end

  def active(page)
    active_if current_page? page
  end
end
