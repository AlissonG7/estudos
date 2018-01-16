defmodule Compare do
  def start do
    list = input()

    if check_valid(list) == true do
      largest = find_largest(list)
      IO.puts("The largest number is #{largest}.")
    else
      IO.puts("Numbers must be unique.")
    end
  end
  defp input do
    a = IO.gets("Enter the first number: ")
    |> trim()
    b = IO.gets("Enter the second number: ")
    |> trim()
    c = IO.gets("Enter the third number: ")
    |> trim()
    [a, b, c]
  end
  defp trim(str) do
    String.trim_trailing(str)
    {x,_} = Integer.parse(str)
    x
  end
  defp check_valid(list) do
    [a, b, c] = list
    if a != b and b != c and c != a do
      true
    else
      false
    end
  end
  defp find_largest(list) do
    [a, b, c] = list
    cond do
      a > b and a > c ->
        a
      b > a and b > c ->
        b
      c > a and c > b ->
        c
    end
  end
end
Compare.start
