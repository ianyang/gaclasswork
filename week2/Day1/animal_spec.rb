require 'rspec'
require './animal.rb'

describe Animal do

  subject Animal do
    Animal.new('Pebble', 2, 'male', 'cat')
  end

  describe '.to_s' do

    it 'should give you the name' do
      subject.name.should == 'Pebble'
    end

    # it "should return sentence" do
    #   subject.to_s.should == "Pebble is a 2 year old male cat that loves #{@toys.join(', ')}"
    # end

  end

end