# Temperature Converter

# You’ll often need to determine which part of a program is
# run based on user input or other events.
# Create a program that converts temperatures from Fahren-
# heit to Celsius or from Celsius to Fahrenheit. Prompt for the
# starting temperature. The program should prompt for the
# type of conversion and then perform the conversion.
# The formulas are
# C = (F − 32) × 5 / 9
# and
# F = (C × 9 / 5) + 32

# Example Output________________________________________________________________
# Press C to convert from Fahrenheit to Celsius.
# Press F to convert from Celsius to Fahrenheit.
# Your choice: C
# Please enter the temperature in Fahrenheit: 32
# The temperature in Celsius is 0.

# Constraints___________________________________________________________________
# • Ensure that you allow upper or lowercase values for C
# and F .
# • Use as few output statements as possible and avoid
# repeating output strings.

IO.puts "Press C to convert from Fahrenheit to Celsius.\nPress F to convert from Celsius to Fahrenheit."
[to_temp, _] = String.split(IO.gets("Your choice: "), "\n")
to_temp=String.upcase(to_temp)
cond do
  to_temp == "F" ->
    a = "Celsius"
    b = "Fahrenheit"
    from_temp = "C"
  to_temp == "C" ->
    a = "Fahrenheit"
    b = "Celsius"
    from_temp = "F"
end
{input_temp, _} = Integer.parse(IO.gets "Please enter the temperature in #{a}: ")

output_temp = cond do
  to_temp == "F" ->
    (input_temp*9/5)+32
  to_temp == "C" ->
    (input_temp-32)*5/9
end

IO.puts "The temperature in #{b} is #{output_temp}."
