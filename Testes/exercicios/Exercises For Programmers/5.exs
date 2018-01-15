# Simple Math

# You’ll often write programs that deal with numbers. And
# depending on the programming language you use, you’ll
# have to convert the inputs you get to numerical data types.
# Write a program that prompts for two numbers. Print the
# sum, difference, product, and quotient of those numbers as
# shown in the example output:

# Example Output________________________________________________________________
# What is the first number? 10
# What is the second number? 5
# 10 + 5 = 15
# 10 - 5 = 5
# 10 * 5 = 50
# 10 / 5 = 2

# Constraints___________________________________________________________________
# [ ] Values coming from users will be strings. Ensure that
# you convert these values to numbers before doing the
# math.

# 5 = 15
# 5 = 5
# 5 = 50
# 5 = 2

# [x] Keep the inputs and outputs separate from the numerical
# conversions and other processing.
# [x] Generate a single output statement with line breaks in
# the appropriate spots.

first_input = IO.gets("What is the first number? ")
|> String.trim_trailing
second_input = IO.gets("What is the second number? ")
|> String.trim_trailing

a = String.to_integer(first_input)
b = String.to_integer(second_input)
IO.puts("#{a} + #{b} = #{a+b}\n#{a} - #{b} = #{a-b}\n#{a} * #{b} = #{a*b}\n#{a} / #{b} = #{a/b}")
