class Survey < ActiveRecord::Base
  attr_accessible :name, :questions_attributes, :answers_attributes

  has_many :questions, :dependent => :destroy
  has_many :answers, :through => :questions

  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :answers

  validates_presence_of :name
end
