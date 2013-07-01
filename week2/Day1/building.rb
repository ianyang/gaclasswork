class Building

  attr_accessor :name, :address, :units

  def initialize(name, address, units = [])
    @name = name
    @address = address
    @units = []
  end

  def get_contact_list
  end

  def calc_total_sqft_rented
  end

  

  def get_available_units
    available_units = []
    units.each do |unit|
      available_units << unit if unit.available?
    end
    available_units
  end

  def get_contact_list
    tenant.values.join("\n")
  end
end