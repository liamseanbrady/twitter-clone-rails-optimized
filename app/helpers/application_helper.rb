module ApplicationHelper
  def display_datetime(dt)
    dt.strftime("%d %m %Y, %H:%M %Z") # 25 May 2014, 23:12
  end
end
