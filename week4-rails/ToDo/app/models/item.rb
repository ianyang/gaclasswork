class Item < ActiveRecord::Base
  attr_accessible :name, :due, :list_id

  belongs_to :list

  validates_presence_of :list_id

  validate :duecheck

  def duecheck
    if self.due < Time.now
      errors.add(:due, "Overdue already")
    end
  end

end