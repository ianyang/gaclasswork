class HomeController < ApplicationController

def start
end

def a
end

def b
end

def one

  render '1'

end

def two

  render '2'

end

def door
  case params['option'].downcase
    when 'a' then redirect_to('/a')
    when 'b' then redirect_to('/b')
    when '1' then redirect_to('/1')
    when '2' then redirect_to('/2')
  end

end

end