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
# • Values coming from users will be strings. Ensure that
# you convert these values to numbers before doing the
# math.

# 5 = 15
# 5 = 5
# 5 = 50
# 5 = 2
# • Keep the inputs and outputs separate from the numerical
# conversions and other processing.
# • Generate a single output statement with line breaks in
# the appropriate spots.

a_input = IO.gets "What is the first number? "
b_input = IO.gets "What is the second number? "
IO.inspect([a_input, b_input])
unbreak = fn x -> String.replace_suffix(x, "\n", "") end

cond do
  (Integer.parse(unbreak.(a_input)) == :error) or (Integer.parse(unbreak.(b_input)) == :error) ->
    IO.puts("Invalid number. You must provide a valid number.")
  (elem(Integer.parse(unbreak.(a_input)),1) != "") or (elem(Integer.parse(unbreak.(b_input)),1) != "") ->
    IO.puts("Invalid number. You must provide only integer numbers.")
  is_number(elem(Integer.parse(unbreak.(a_input)),0)) and is_number(elem(Integer.parse(unbreak.(b_input)),0)) ->
    {a_num, a_rem} = Integer.parse(unbreak.(a_input))
    {b_num, b_rem} = Integer.parse(unbreak.(b_input))
    IO.puts("#{a_num} + #{b_num} = #{a_num+b_num}")
    IO.puts("#{a_num} - #{b_num} = #{a_num-b_num}")
    IO.puts("#{a_num} * #{b_num} = #{a_num*b_num}")
    IO.puts("#{a_num} / #{b_num} = #{a_num/b_num}")
end

IO.inspect([a_num, a_rem, b_num, b_rem])
# if
#   IO.puts("fug :-DDDDDDDDDDDDD")
# end
# cond do
#   :error ==  ->
#     IO.puts("Insert a valid number.")
#   # :error == {b_number, b_rem} = Integer.parse(unbreak.(first_input))
# end
# IO.inspect(a)
# b = ({b_number, b_rem} = {a_num, a_rem} = (a = Float.parse(unbreak.(a_input)))Integer.parse(unbreak.(second_input)))
# IO.inspect(b)

# IO.puts("#{a} + #{b} = #{a+b}")
# IO.puts("#{a} - #{b} = #{a-b}")
# IO.puts("#{a} * #{b} = #{a*b}")
# IO.puts("#{a} / #{b} = #{a/b}")
