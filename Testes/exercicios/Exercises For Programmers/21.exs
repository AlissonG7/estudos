# Numbers to Names

# Many programs display information to the end user in one
# form but use a different form inside the program. For
# example, you may show the word Blue on the screen, but
# behind the scenes you’ll have a numerical value for that
# color or an internal value because you may need to represent
# the textual description in another language for Spanish-
# speaking visitors.
# Write a program that converts a number from 1 to 12 to the
# corresponding month. Prompt for a number and display the
# corresponding calendar month, with 1 being January and
# 12 being December. For any value outside that range, display
# an appropriate error message.

# Example Output________________________________________________________________
# Please enter the number of the month: 3
# The name of the month is March.

# Constraints___________________________________________________________________
# • Use a switch or case statement for this program.
# • Use a single output statement for this program.

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
