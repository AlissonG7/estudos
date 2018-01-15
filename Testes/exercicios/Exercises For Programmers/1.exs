# Saying Hello

# The “Hello, World” program is the first program you learn
# to write in many languages, but it doesn’t involve any input.
# So create a program that prompts for your name and prints
# a greeting using your name.

# Example Output________________________________________________________________
# What is your name? Brian
# Hello, Brian, nice to meet you!

# Constraint____________________________________________________________________
# [ ] Keep the input, string concatenation, and output sepa-
# rate.

input = IO.gets "What is your name? "
name = String.trim_trailing(input)
msg = "Hello, #{name}, nice to meet you!"
IO.puts(msg)
