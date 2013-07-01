require'json'
require'open-uri'

module Flickr

  def Flickr::loadStuff()
    obj = JSON.parse(open("http://www.example.com"))
  end

  class Flicky
  end

end