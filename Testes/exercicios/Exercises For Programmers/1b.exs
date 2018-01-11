# Write a version of the program that displays different
# greetings for different people.

users=%{
  "Mark" => "Welcome back, Mark!",
  "Jeff" => "Have a nice day, Jeff",
  "Luke" => "What's up, Luke?"
}

input = String.replace_suffix(IO.gets("What is your name? "), "\n", "")
greeting = Map.get(users, input)
IO.inspect({input, greeting})
if greeting==nil,
  do: IO.puts("It seems to be your first time here, #{input}. Welcome and enjoy."),
  else: IO.puts(greeting)
