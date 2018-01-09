# Currency Conversion

# At some point, you might have to deal with currency
# exchange rates, and you’ll need to ensure your calculations
# are as precise as possible.
# Write a program that converts currency. Specifically, convert
# euros to U.S. dollars. Prompt for the amount of money in
# euros you have, and prompt for the current exchange rate
# of the euro. Print out the new amount in U.S. dollars. The
# formula for currency conversion is

#              amout           rate
#                   from   *       from
# amount    = ---------------------------
#       to             rate
#                          to

# where...
# 'Amount to' is the amount in U.S. dollars.
# 'Amount from' is the amount in euros.
# 'rate from' is the current exchange rate in euros.
# 'rate to is' the current exchange rate of the U.S. dollar.

# Example Output________________________________________________________________
# How many euros are you exchanging? 81
# What is the exchange rate? 137.51
# 81 euros at an exchange rate of 137.51 is
# 111.38 U.S. dollars.

# Constraints___________________________________________________________________
# • Ensure that fractions of a cent are rounded up to the next penny.
# • Use a single output statement.

{amount_from, _} = Float.parse(IO.gets("How many euros are you exchanging? "))
{rate_from, _} = Float.parse(IO.gets("What is the exchange rate (from)? "))
{rate_to, _} = Float.parse(IO.gets("What is the exchange rate (to)? "))
amount_to = (amount_from * rate_from) / rate_to
IO.puts("#{Float.ceil(amount_from, 2)} euros at an exchange rate of #{Float.ceil(rate_from, 2)} is #{Float.ceil(amount_to, 2)} U.S. dollars.")
