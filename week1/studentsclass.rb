#!/usr/bin/env ruby

class Student
  attr_accessor :name, :email, :phone

  def initialize(data)
    @name = data["name"]
    @email = data["email"]
    @phone = data["phone"]
  end

end
