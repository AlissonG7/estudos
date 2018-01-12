



cond do
  Integer.parse(unbreak.(a_input)) == :error ->
    IO.puts("Invalid first number. You must provide a valid number.")
  elem(Integer.parse(unbreak.(a_input)),1) != "" ->
    IO.puts("Invalid first number. You must provide only numbers.")
  Integer.parse(unbreak.(b_input)) == :error ->
    IO.puts("Invalid second number. You must provide a valid number.")
  elem(Integer.parse(unbreak.(b_input)),1) != "" ->
    IO.puts("Invalid first number. You must provide only numbers.")
  is_number(elem(Integer.parse(unbreak.(a_input)),0)) and is_number(elem(Integer.parse(unbreak.(b_input)),0)) ->
    {a_num, a_rem} = Integer.parse(unbreak.(a_input))
    {b_num, b_rem} = Integer.parse(unbreak.(a_input))
    IO.puts("#{a_num} + #{b_num} = #{a_num+b_num}")
    IO.puts("#{a_num} - #{b_num} = #{a_num-b_num}")
    IO.puts("#{a_num} * #{b_num} = #{a_num*b_num}")
    IO.puts("#{a_num} / #{b_num} = #{a_num/b_num}")
end
