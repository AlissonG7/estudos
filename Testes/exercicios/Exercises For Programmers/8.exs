# Pizza Party __________________________________________________________________
# Division isn’t always exact, and sometimes you’ll write
# programs that will need to deal with the leftovers as a whole
# number instead of a decimal.
# Write a program to evenly divide pizzas. Prompt for the
# number of people, the number of pizzas, and the number of
# slices per pizza. Ensure that the number of pieces comes out
# even. Display the number of pieces of pizza each person
# should get. If there are leftovers, show the number of leftover
# pieces.

# Example Output________________________________________________________________
# How many people? 8
# How many pizzas do you have? 2
# 8 people with 2 pizzas
# Each person gets 2 pieces of pizza.
# There are 0 leftover pieces.

{people,_} = Integer.parse(IO.gets("How many people? "))
{pizza,_} = Integer.parse(IO.gets("How many pizzas? "))
{slices,_} = Integer.parse(IO.gets("How many slices has each pizza? "))

slices_people = div(pizza*slices, people)
leftover_slices = rem(pizza*slices, people)

IO.puts ("#{people} people with #{pizza} pizzas")
IO.puts ("Each person gets #{slices_people} pieces of pizza.")
IO.puts ("There are #{leftover_slices} leftover pieces.")
