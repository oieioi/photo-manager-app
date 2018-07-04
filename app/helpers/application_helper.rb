module ApplicationHelper
  def string2markdown(string)
    processor = ::Qiita::Markdown::Processor.new(hostname: "example.com")
    processor.call(string)[:output].to_s.html_safe
  end
end
