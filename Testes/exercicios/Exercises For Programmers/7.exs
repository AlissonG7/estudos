{length,_} = Float.parse(IO.gets "What is the length of the room in feet? ")
{width,_} = Float.parse(IO.gets "What is the width of the room in feet ")
conv = 0.009290304
area_feet = length * width
area_meters = area_feet * conv
IO.puts "You entered dimensions of #{length} feet by #{width} feet."
IO.puts "The area is\n #{area_feet} square feet\nThe area is\n #{area_meters} square meters"
