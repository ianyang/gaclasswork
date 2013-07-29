# == Schema Information
#
# Table name: healths
#
#  id            :integer          not null, primary key
#  date          :date
#  steps         :integer
#  calories      :integer
#  sleepduration :integer
#  sleepquality  :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class HealthTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
