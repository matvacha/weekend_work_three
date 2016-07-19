# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method
puts "TESTING class..."
puts

x = HotelReservation.new(customer_name: "John", date: "7/7/17", room_number: "5", amenities: "tv")

x.room_number = "7"

puts "Your method returned:"
puts x.room_number

if x.room_number == "7"
  puts "PASS!"
else
  puts "F"
end

x.add_a_fridge

puts "Your method returned:"
puts x.amenities

if x.amenities.include?("fridge")
  puts "PASS!"
else
  puts "F"
end

x.add_a_crib

puts "Your method returned:"
puts x.amenities

if x.amenities.include?("crib")
  puts "PASS!"
else
  puts "F"
end

x.add_a_custom_amenity("balcony")

puts "Your method returned:"
puts x.amenities

if x.amenities.include?("balcony")
  puts "PASS!"
else
  puts "F"
end
