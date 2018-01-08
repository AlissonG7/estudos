defmodule Sum do


  def up_to(n), do: n + up_to(n - 1)
  def up_to(0), do: 0
end
