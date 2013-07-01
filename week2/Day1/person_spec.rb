require 'rspec'
require './person.rb'

describe Person do 

  subject do 
    p = Person.new("Tabitha", 3, "female", 8)
    p.pets = {pets1: "hahaha"}
    p

  end

  describe 'to_s' do 
    it 'should describe a person with name, age, gender, sand number of kids' do 
      subject.to_s.should == "Tabitha is a 3 year old female with 8 kids and 1 pets"
    end

  end

  describe 'name' do 
    it 'should return the name of the person.' do 
      subject.name.should == "Tabitha"
    end
  end

  describe 'age' do 
    it 'should return the age of the person.' do 
      subject.age.should == 3
    end
  end

  describe 'num_kids' do 
    it 'should return the number of kids.' do 
      subject.num_kids.should == 8

    end

  end

end

