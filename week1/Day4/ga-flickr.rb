!#/usr/bin/env ruby

require('open-uri')
require('json')

class GaFlickr
  def self.load()
    url = "http://api.flickr.com/services/feeds/photos_public.gne?format=json"
    options = {
      "User-Agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36",
      "Referer" => "http://api.jquery.com/jQuery.getJSON/",
      "Accept" => "application/json"
    }

    open(url, options) { |f|
      text = f.read()
      text.gsub!(/jsonFlickrFeed\(/, '')
      text = text[0..-2] #gsub!(/\)/, '')
      return JSON.parse(text)
    }
  end
end