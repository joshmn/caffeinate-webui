module Caffeinate::Webui::ApplicationHelper
  def active_link_to(label, href, active: false)
    link_to(label, href, class: "nav-link #{'active' if active}")
  end

  def time(datetime)
    label = [time_ago_in_words(datetime)]
    if datetime.past?
      label << "ago"
    else
      "from now"
    end

    content_tag(:abbr, label.join(" "), title: datetime)
  end
end
