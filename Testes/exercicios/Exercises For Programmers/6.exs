# Retirement Calculator

# Your computer knows what the current year is, which means
# you can incorporate that into your programs. You just have
# to figure out how your programming language can provide
# you with that information.
# Create a program that determines how many years you have
# left until retirement and the year you can retire. It should
# prompt for your current age and the age you want to retire
# and display the output as shown in the example that follows.

# Example Output________________________________________________________________
# What is your current age? 25
# At what age would you like to retire? 65
# You have 40 years left until you can retire.
# It's 2015, so you can retire in 2055.

# Constraints___________________________________________________________________
# [x] Again, be sure to convert the input to numerical data
# before doing any math.
# [x] Don’t hard-code the current year into your program.
# Get it from the system time via your programming lan-
# guage.

{age, _} = IO.gets("What is your current age? ")
|> Integer.parse()
{retire_age, _} = IO.gets("At what age would you like to retire? ")
|> Integer.parse()

#Getting and parsing year from system
{today,_} = Date.utc_today()
|> Date.to_string()
|> String.slice(0,4)
|> Integer.parse()

IO.puts("You have #{retire_age - age} years left until you can retire.")
IO.puts("It's #{today}, so you can retire in #{today + (retire_age - age)}.")
