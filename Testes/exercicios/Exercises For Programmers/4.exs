# Mad Lib

# Mad libs are a simple game where you create a story tem-
# plate with blanks for words. You, or another player, then
# construct a list of words and place them into the story, cre-
# ating an often silly or funny story as a result.
# Create a simple mad-lib program that prompts for a noun,
# a verb, an adverb, and an adjective and injects those into a
# story that you create.

# Example Output________________________________________________________________
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly
# Do you walk your blue dog quickly? That's hilarious!

# Constraints___________________________________________________________________
# [x] Use a single output statement for this program.
# [x] If your language supports string interpolation or string
# substitution, use it to build up the output.

noun = IO.gets "Enter a noun: "
verb = IO.gets "Enter a verb: "
adj = IO.gets "Enter a adjective: "
adv = IO.gets "Enter a adverb: "
IO.puts("Do you #{verb} with your #{adj} #{noun} #{adv}? That's hilarious!")
