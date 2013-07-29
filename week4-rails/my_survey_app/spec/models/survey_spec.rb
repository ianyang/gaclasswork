# encoding: UTF-8

require 'spec_helper'

describe Survey do

  it { should have_many(:questions) }
  it { should have_many(:answers).through(:questions) }

  it { should validate_presence_of(:name) }

end