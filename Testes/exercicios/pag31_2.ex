defmodule MatchstickFactory do
    def boxes(quantity) do

        big = div(quantity, 50)
        quantity = quantity - big * 50
        
        medium = div(quantity, 20)
        quantity = quantity - medium * 20
        
        small = div(quantity, 5)
        quantity = quantity - small * 5

        %{big: big, medium: medium, small: small, remaining_matchsticks: quantity}
    end
end
IO.inspect(MatchstickFactory.boxes(98))
IO.inspect(MatchstickFactory.boxes(39))


