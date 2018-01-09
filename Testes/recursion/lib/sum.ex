defmodule Sum do

  #def up_to(0), do: 0
  #def up_to(n), do: n + up_to(n - 1)

  def up_to(n) do
    if n==0 do
      0
    else
      n+up_to(n-1)
    end
  end

end
