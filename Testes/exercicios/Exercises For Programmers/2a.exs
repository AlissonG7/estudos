# [ ] If the user enters nothing, state that the user must enter
# something into the program.

input = IO.gets("What is the input string? ")
|> String.trim_trailing
if input == "",
do: IO.puts("You must type something."),
else: IO.puts(String.length(input))
