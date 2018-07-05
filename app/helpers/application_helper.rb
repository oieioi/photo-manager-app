require 'github/markup'
module ApplicationHelper
  def string2markdown(string)
    ::GitHub::Markup.render_s(:markdown, string)
  end
end
