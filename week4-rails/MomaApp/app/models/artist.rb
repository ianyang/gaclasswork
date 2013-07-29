class Artist < ActiveRecord::Base
  attr_accessible :name, :nationality, :dob, :period, :image

  has_many :paintings

end
