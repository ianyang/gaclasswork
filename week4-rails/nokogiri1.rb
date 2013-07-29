require 'nokogiri'
require 'open-uri'

url = "http://www.foopee.com/punk/the-list/by-date.1.html"
url_data = Nokogiri::HTML(open(url))

#.css
#.text

url_data.css("li b").each do |show|
    puts show.text.gsub(", S.F.", "")
end