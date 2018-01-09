defmodule Unbreak do
  def string(x) do
    String.replace_suffix(x, "\n", "")
  end
end
