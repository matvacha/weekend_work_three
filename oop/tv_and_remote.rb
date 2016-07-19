class Remote
  def toggle_power
    if @power == true
      @power = false
    else
      @power = true
    end
  end

  def increment_volume
    @volume + 1
  end

  def decrement_volume
    @volume - 1
  end

  def set_channel(x)
    @channel = x
  end
end

class Tv < Remote
  def initialize(attributes)
    @power = attributes[:power]
    @volume = attributes[:volume]
    @channel = attributes[:channel]
  end
end

puts "TESTING class..."
puts

y = Tv.new(power: true, volume: 1, channel: 52)
y.toggle_power

puts "Your method returned:"
puts y.toggle_power

if y.toggle_power == false
  puts "PASS!"
else
  puts "F"
end

y.increment_volume

puts "Your method returned:"
puts y.increment_volume

if y.increment_volume == 2
  puts "PASS!"
else
  puts "F"
end

y.decrement_volume

puts "Your method returned:"
puts y.decrement_volume

if y.decrement_volume == 0
  puts "PASS!"
else
  puts "F"
end

y.set_channel(50)

puts "Your method returned:"
puts y.set_channel(50)

if y.set_channel(50) == 50
  puts "PASS!"
else
  puts "F"
end

# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)