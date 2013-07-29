require 'open-uri'

class HealthsController < ApplicationController

  def index
  end

  def getdata

    healths = Health.all
    render :json => healths

  end

  def getweather

    date = [20130701,20130702,20130703,20130704,20130705,20130706,20130707,20130708,20130709,20130710]
    api = WUNDERWEATHER
    weather = []

    date.each do |day|
      url = "http://api.wunderground.com/api/#{api}/history_#{day.to_s}/q/CA/San_Francisco.json"
      info = {
        date: day,
        maxtemp: JSON.parse(open(url).read)['history']['dailysummary'][0]['maxtempi'],
        mintemp: JSON.parse(open(url).read)['history']['dailysummary'][0]['mintempi']
      }
      weather << info
    end

    render :json => weather

  end


end
