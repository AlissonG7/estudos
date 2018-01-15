# Blood Alcohol Calculator

# Sometimes you have to perform a more complex calculation
# based on some provided inputs and then use that result to
# make a determination.
# Create a program that prompts for your weight, gender,
# number of drinks, the amount of alcohol by volume of the
# drinks consumed, and the amount of time since your last
# drink. Calculate your blood alcohol content (BAC) using this
# formula
#              BAC = (A × 5.14 / W × r) − .015 × H
# where...
# [ ] A is total alcohol consumed, in ounces (oz).
# [ ] W is body weight in pounds.
# [ ] r is the alcohol distribution ratio:
#   – 0.73 for men
#   – 0.66 for women
# [ ] H is number of hours since the last drink.
# Display whether or not it’s legal to drive by comparing the
# blood alcohol content to 0.08 .

# Example Output________________________________________________________________
# Your BAC is 0.08
# It is not legal for you to drive.

# Constraint____________________________________________________________________
# [ ] Prevent the user from entering non-numeric values.

#INCOMPLETO, VERIFICAR FORMULA

weight = IO.gets "Weight (pounds): "
gender = IO.gets "Gender (M or F): "
consumed = IO.gets "Alcohol consumed (ounces): "
volume = IO.gets "Drink's alcohol volume : "
time = IO.gets "Time since last drink (hours): "
gender_ratio = cond do
  gender == "M" or "m" -> 0.73
  gender == "F" or "f" -> 0.66
end

bac = (consumed * 5.14/ weight * gender_ratio) - 0.015 * time
if bac < 0.08 do
  IO.puts "It is not legal for you to drive."
else
  IO.puts "It is legal for you to drive."
end
