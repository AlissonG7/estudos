# Tax Calculator

# You don’t always need a complex control structure to solve
# simple problems. Sometimes a program requires an extra
# step in one case, but in all other cases there’s nothing to do.
# Write a simple program to compute the tax on an order
# amount. The program should prompt for the order amount
# and the state. If the state is “WI,” then the order must be
# charged 5.5% tax. The program should display the subtotal,
# tax, and total for Wisconsin residents but display just the
# total for non-residents.

# Example Output________________________________________________________________
# What is the order amount? 10
# What is the state? WI
# The subtotal is $10.00.
# The tax is $0.55.
# The total is $10.55.

# Or

# What is the order amount? 10
# What is the state? MN
# The total is $10.00

# Constraints___________________________________________________________________
# [ ] Implement this program using only a simple if state-
# ment—don’t use an else clause.tax*100
# [ ] Ensure that all money is rounded up to the nearest cent.
# [ ] Use a single output statement at the end of the program
# to display the program results.

{amount, _} = Float.parse(IO.gets("What is the order amount? "))
[state, _] = String.split(IO.gets("What is the state? "), "\n")
subtotal = amount
tax_percent = 0

if state=="WI" do
  tax_percent = 0.055
  tax_subtotal = subtotal *  tax_percent
  IO.puts("The subtotal is $#{:erlang.float_to_binary(Float.round(amount, 2), [decimals: 2])}.")
  IO.puts("The tax is $#{:erlang.float_to_binary(Float.round(tax_subtotal, 2), [decimals: 2])}.")
end

total = (subtotal*tax_percent)+subtotal
IO.gets("The total is $#{:erlang.float_to_binary(Float.round(total, 2), [decimals: 2])}.")
