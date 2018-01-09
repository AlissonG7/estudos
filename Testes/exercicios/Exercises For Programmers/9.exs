# Paint Calculator

# Sometimes you have to round up to the next number rather
# than follow standard rounding rules.
# Calculate gallons of paint needed to paint the ceiling of a
# room. Prompt for the length and width, and assume one
# gallon covers 350 square feet. Display the number of gallons
# needed to paint the ceiling as a whole number.

# Example Output________________________________________________________________
# You will need to purchase 2 gallons of
# paint to cover 360 square feet.
# Remember, you can’t buy a partial gallon of paint. You must
# round up to the next whole gallon.

# Constraints___________________________________________________________________
# • Use a constant to hold the conversion rate.
# • Ensure that you round up to the next whole number.

{length,_}=Float.parse(IO.gets("Room's length? "))
{width,_}=Float.parse(IO.gets("Room's width? "))
area=length*width
gallon = 350 # area covered by one gallon
gallons_required = round(Float.ceil(area/gallon))
IO.puts("You will need to purchase #{gallons_required} gallons of paint to cover #{area} square feet.")
