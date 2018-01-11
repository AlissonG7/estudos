# Revise the program to ensure that inputs are entered as
# numeric values. Don’t allow the user to proceed if the
# value entered is not numeric.

a_input = IO.gets "What is the first number? "
b_input = IO.gets "What is the second number? "
IO.inspect([a_input, b_input])
unbreak = fn x -> String.replace_suffix(x, "\n", "") end

cond do
  (Float.parse(unbreak.(a_input)) == :error) or (Float.parse(unbreak.(b_input)) == :error) ->
    IO.puts("Invalid number. You must provide a valid number.")
  (elem(Float.parse(unbreak.(a_input)),1) != "") or (elem(Float.parse(unbreak.(b_input)),1) != "") ->
    IO.puts("Invalid number. You must provide only numbers.")
  is_number(elem(Float.parse(unbreak.(a_input)),0)) and is_number(elem(Float.parse(unbreak.(b_input)),0)) ->
    {a_num, _} = Float.parse(unbreak.(a_input))
    {b_num, _} = Float.parse(unbreak.(b_input))
    IO.puts("#{a_num} + #{b_num} = #{a_num+b_num}")
    IO.puts("#{a_num} - #{b_num} = #{a_num-b_num}")
    IO.puts("#{a_num} * #{b_num} = #{a_num*b_num}")
    IO.puts("#{a_num} / #{b_num} = #{a_num/b_num}")
end

IO.inspect([a_num, a_rem, b_num, b_rem])
