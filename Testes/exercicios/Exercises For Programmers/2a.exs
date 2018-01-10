# If the user enters nothing, state that the user must enter
# something into the program.

[input,_] = String.split(IO.gets("What is the input string? "),"\n")
if String.length(input) == 0 do
  IO.puts "You must enter something."
else
  IO.puts(String.length(input))
end
