# [ ] Modify this program so that
# instead of prompting for quotes from the user, you cre-
# ate a structure that holds quotes and their associated
# attributions and then display all of the quotes using the
# format in the example. An array of maps would be a
# good choice.

quotes = %{
  "David Allen" => "You can do anything, but not everything.",
  "Antoine de Saint-Exupéry" => "Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away.",
  "Unknown Author" => "The richest man is not he who has the most, but he who needs the least.",
  "Wayne Gretzky" => "You miss 100 percent of the shots you never take.",
  "Ambrose Redmoon" => "Courage is not the absence of fear, but rather the judgement that something else is more important than fear.",
  "Gandhi" => "You must be the change you wish to see in the world.",
  "Lin-Chi" => "When hungry, eat your rice; when tired, close your eyes. Fools may laugh at me, but wise men will know what I mean.",
  "A. A. Milne" => "The third-rate mind is only happy when it is thinking with the majority. The second-rate mind is only happy when it is thinking with the minority. The first-rate mind is only happy when it is thinking.",
  "Abraham Maslow" => "To the man who only has a hammer, everything he encounters begins to look like a nail.",
  "Aristotle" => "We are what we repeatedly do; excellence, then, is not an act but a habit.",
  "Baltasar Gracian" => "A wise man gets more use from his enemies than a fool from his friends."
}

{author, quote} = Enum.random(quotes)
IO.puts("#{author} says, \"#{quote}\"")
