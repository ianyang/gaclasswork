class List < ActiveRecord::Base
  attr_accessible :name, :category

  has_many :items

  validates_uniqueness_of :name

end