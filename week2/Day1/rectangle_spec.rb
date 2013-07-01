require 'rspec'
require './rectangle.rb'

describe Rectangle do

  subject do
    Rectangle.new(4, 2)
  end

  describe '.perimeter' do

    it 'should calculate perimeter' do
      subject.perimeter.should == 12
    end

    it 'should calculate perimeter' do
      rect = Rectangle.new(0, 0)
      rect.perimeter.should == 0
    end

  end

  describe '.area' do

    it 'should calculate area' do
      subject.area.should == 8
    end

  end

end

