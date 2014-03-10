module EmailContentHelper
  def parse_email(content)
    message_lines = content.split("\n")

    Hash[message_lines.map{|attribute| [attribute.gsub('text:', '').split(":").first.downcase.to_sym, attribute.gsub('text:', '').split(":").last.strip]}]
  end
end