module ApplicationHelper
  def display_datetime(dt)
    dt.strftime("%m %b %Y, %H:%M %Z") # 25 May 2014, 23:12 UTC
  end
end
