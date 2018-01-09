input = IO.gets "What is your name? "
input = String.replace_suffix(input, "\n", "")
msg = "Hello, #{input}, nice to meet you!"
IO.puts(msg)
