# Area of a Rectangular Room

# When working in a global environment, you’ll have to
# present information in both metric and Imperial units. And
# you’ll need to know when to do the conversion to ensure
# the most accurate results.
# Create a program that calculates the area of a room. Prompt
# the user for the length and width of the room in feet. Then
# display the area in both square feet and square meters.

# Example Output
# What is the length of the room in feet? 15
# What is the width of the room in feet? 20
# You entered dimensions of 15 feet by 20 feet.
# The area is
# 300 square feet
# 27.871 square meters
# The formula for this conversion is
# m² = f² X 0.09290304

# Constraints
# [x] Keep the calculations separate from the output.
# [x] Use a constant to hold the conversion factor.

{length,_} = Float.parse(IO.gets "What is the length of the room in feet? ")
{width,_} = Float.parse(IO.gets "What is the width of the room in feet ")
conv = 0.009290304
area_feet = length * width
area_meters = area_feet * conv
IO.puts "You entered dimensions of #{length} feet by #{width} feet."
IO.puts "The area is\n #{area_feet} square feet\nThe area is\n #{area_meters} square meters"
