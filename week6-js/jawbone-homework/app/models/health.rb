class Health < ActiveRecord::Base
  attr_accessible :date, :steps, :calories, :sleepduration, :sleepquality

  validates_presence_of :date, :steps
end
