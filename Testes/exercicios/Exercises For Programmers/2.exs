# Counting the Number of Characters

# Create a program that prompts for an input string and dis-
# plays output that shows the input string and the number of
# characters the string contains.

# Example Output________________________________________________________________
# What is the input string? Homer
# Homer has 5 characters.

# Constraints___________________________________________________________________
# [x] Be sure the output contains the original string.
# [x] Use a single output statement to construct the output.
# [x] Use a built-in function of the programming language to
# determine the length of the string.

input = String.trim_trailing(IO.gets("What is the input string? "))
IO.puts ("#{input} has #{String.length(input)} characters.")
