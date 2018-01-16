# Anagram Checker

# Using functions to abstract the logic away from the rest of
# your code makes it easier to read and easier to maintain.
# Create a program that compares two strings and determines
# if the two strings are anagrams. The program should prompt
# for both input strings and display the output as shown in
# the example that follows.

# Example Output________________________________________________________________
# Enter two strings and I'll tell you if they
# are anagrams:
# Enter the first string: note
# Enter the second string: tone
# "note" and "tone" are anagrams.

# Constraints___________________________________________________________________
# [-] Implement the program using a function called isAna-
# gram , which takes in two words as its arguments and
# returns true or false . Invoke this function from your main
# program.
# [-] Check that both words are the same length.

defmodule Anagram do
  def check(a, b) do
    [a_sorted, b_sorted] = ask(a,b)
    |> sort()
    if a_sorted == b_sorted,
      do: IO.puts("\"#{a}\" and \"#{b}\" are anagrams."),
      else: IO.puts("\"#{a}\" and \"#{b}\" are not anagrams.")
  end
  defp ask(a, b) do
    a = String.split(a, "", trim: true)
    b = String.split(b, "", trim: true)
    [a, b]
  end

  defp sort(words) do
    [a, b] = words
    a_sorted = Enum.sort(a)
    b_sorted = Enum.sort(b)
    [a_sorted, b_sorted]
  end
end
