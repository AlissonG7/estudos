# Legal Driving Age

# You can test for equality, but you may need to test to see
# how a number compares to a known value and display a
# message if the number is too low or too high.
# Write a program that asks the user for their age and compare
# it to the legal driving age of sixteen. If the user is sixteen or
# older, then the program should display “You are old enough
# to legally drive.” If the user is under sixteen, the program
# should display “You are not old enough to legally drive.”

# Example Output________________________________________________________________
# What is your age? 15
# You are not old enough to legally drive.

# Or

# What is your age? 35
# You are old enough to legally drive.

# Constraints___________________________________________________________________
# • Use a single output statement.
# • Use a ternary operator to write this program. If your
# language doesn’t support a ternary operator, use a reg-
# ular if/else statement, and still use a single output state-
# ment to display the message.

{age, _} = Integer.parse IO.gets("What is your age? ")
cond do
  age < 16 -> IO.puts "You are NOT old enough to legally drive."
  age >= 16 -> IO.puts "You are old enough to legally drive."
end
