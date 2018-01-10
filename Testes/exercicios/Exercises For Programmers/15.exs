# Password Validation

# Passwords are validated by comparing a user-provided
# value with a known value that’s stored. Either it’s correct or
# it’s not.
# Create a simple program that validates user login credentials.
# The program must prompt the user for a username and
# password. The program should compare the password given
# by the user to a known password. If the password matches,
# the program should display “Welcome!” If it doesn’t match,
# the program should display “I don’t know you.”

# Example Output________________________________________________________________
# What is the password? 12345
# I don't know you.

# Or

# What is the password? abc$123
# Welcome!

# Constraints___________________________________________________________________
# • Use an if/else statement for this problem.
# • Make sure the program is case sensitive.


password = "Alemão"

username = String.slice(IO.gets("What is your username? "), 0..-2)
if password == String.slice(IO.gets("What is the password? "), 0..-2) do
  IO.puts("Welcome!")
else
  IO.puts("I don't know you.")
end
