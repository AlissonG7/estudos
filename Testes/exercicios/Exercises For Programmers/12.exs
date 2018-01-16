# Computing Simple Interest

# Computing simple interest is a great way to quickly figure
# out whether an investment has value. It’s also a good way
# to get comfortable with explicitly coding the order of opera-
# tions in your programs.
# Create a program that computes simple interest. Prompt for
# the principal amount, the rate as a percentage, and the time,
# and display the amount accrued (principal + interest).
# The formula for simple interest is A = P(1 + rt) , where P is
# the principal amount, r is the annual rate of interest, t is the
# number of years the amount is invested, and A is the amount
# at the end of the investment.

# Example Output________________________________________________________________
# Enter the principal: 1500
# Enter the rate of interest: 4.3
# Enter the number of years: 4
# After 4 years at 4.3%, the investment will
# be worth $1758.

# Constraints___________________________________________________________________
# [ ] Prompt for the rate as a percentage (like 15 , not .15 ).
# Divide the input by 100 in your program.
# [ ] Ensure that fractions of a cent are rounded up to the
# next penny.
# [ ] Ensure that the output is formatted as money.
defmodule SimpleInterest do
  def calc do

    {principal,_} = Float.parse(IO.gets("Enter the principal: "))
    {rate,_} = Float.parse(IO.gets("Enter the rate of interest (%): "))
    {time,_} = Integer.parse(IO.gets("Enter the number of years: "))

    amount = principal*(1+(rate/100)*time)
    |> Float.ceil(2)
    |> :erlang.float_to_binary([decimals: 2])

    # Converts to string, keeps only desired decimals. e.g.:
    # :erlang.float_to_binary(1.2345, [decimals: 2])
    # iex>1.23

    IO.puts "After #{time} years at #{rate}%, the investiment will be worth $#{amount}"
  end
end
