defmodule Month do
  def start do
    txt = user_input("Please enter the number of the month: ")
    {num,_} = txt
    res = case num do
      1 -> "Jan"
      2 -> "Feb"
      3 -> "Mar"
      4 -> "Apr"
      5 -> "May"
      6 -> "Jun"
      7 -> "Jul"
      8 -> "Aug"
      9 -> "Sep"
      10 -> "Oct"
      11 -> "Nov"
      12 -> "Dec"
    end
    show_result(res)
  end

  defp user_input(txt) do
    txt
    |> IO.gets()
    |> String.trim_trailing()
    |> Integer.parse()
  end

  defp show_result(choice) do
    IO.puts("The name of the month is #{choice}.")
  end
end

Month.start()
