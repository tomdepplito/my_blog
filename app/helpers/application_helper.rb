module ApplicationHelper
  def blog_navigate(id, direction)
    direction == 'next' ? id += 1 : id -= 1
    eval(Blog.exists?(id) ? "blog_path(id)" : "root_path")
  end

  def date(date)
    date.strftime('%m-%d-%y')
  end
end
