# Don’t allow the user to enter a negative number.

first_input = IO.gets "What is the first number? "
second_input = IO.gets "What is the second number? "

unbreak = fn x -> String.replace_suffix(x, "\n", "") end

a = String.to_integer(unbreak.(first_input))
b = String.to_integer(unbreak.(second_input))
IO.puts("#{a} + #{b} = #{a+b}")
IO.puts("#{a} - #{b} = #{a-b}")
IO.puts("#{a} * #{b} = #{a*b}")
IO.puts("#{a} / #{b} = #{a/b}")

Tuple.append(tuple, value)
Enum.fetch(, index)
